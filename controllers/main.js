const eyfsqlConnection = require('../models/model.local');
const {sendErrorEmail} = require('../helper-functions/email-users');

const getStatesNconstituencies = async (req, res, error) => {
    try {
        let allStates = await getAllStates();
        if (allStates && allStates.length) {
            const errMsg = typeof error === 'string' ? error : null;
            res.render('state-and-constitution', { states: allStates, errMsg});
        }
    } catch (error) {
        res.render('state-and-constitution', { states: [], error });
    }
};

const castYourVote = async (req, res) => {
    const constituencyId = req.body.constitutionId || req.session.constituencyId;
    const stateCode = req.body.stateCode || req.session.stateCode;
    req.session.constituencyId = constituencyId;
    req.session.stateCode = stateCode;

    let ipAddress = req.connection.remoteAddress;
    let elligibleToVote = true;
    if (ipAddress) {
        try {
            let countIpAddress = await checkIpAddressCount(ipAddress);
            if (countIpAddress && Array.isArray(countIpAddress) && countIpAddress.length) {
                if (countIpAddress[0].isBlocked || countIpAddress[0].count > 4) {
                    elligibleToVote = false;
                }
            }   
        } catch (error) {
            sendErrorEmail(error);
        }        
    }
    
    if (elligibleToVote && !req.session.partyId) {
        if (constituencyId && stateCode) {
            try {
                let allParties = await getAllPartiesByState(stateCode);
                let stateByCode = await getStateByCode(stateCode);
                let constituencyById = await getConstituencyById(constituencyId);
                if (allParties && allParties.length && stateByCode && stateByCode.length && constituencyById && constituencyById.length) {
                    res.render('cast-your-vote', { parties: allParties, state: stateByCode[0].name, constituency: constituencyById[0] });
                }
            } catch (error) {
                sendErrorEmail(error);
                getStatesNconstituencies(req, res, error);
            }
        } else {
            res.writeHead(302, {
                'Location': '/your-state-and-constituency/'
            });
            res.end();
        }
    } else {
        res.writeHead(302, {
            'Location': '/results/'
        });
        res.end();
    }    
};

const getConstituencies = async (req, res) => {
    const stateCode = req.body.state;
    const keywords = req.body.keywords;
    try {
        let allConstituencies = await getAllConstituencies(stateCode, keywords);
        if (allConstituencies && allConstituencies.length) {
            res.json({
                allConstituencies
            })
        }
    } catch (error) {
        sendErrorEmail(error);
        res.json({
            "allConstituencies": []
        })
    }
};

const saveVote = async (req, res) => {
    const constituencyId = req.body.constitutionId || req.session.constituencyId;
    const partyId = req.body.partyId || req.session.partyId;
    let ipAddress = (req.headers['x-forwarded-for'] || '').split(',')[0] || req.connection.remoteAddress;    
    if (ipAddress) {
        let countIpAddress = await checkIpAddressCount(ipAddress);
        if (countIpAddress && Array.isArray(countIpAddress) && countIpAddress.length) {
            if (!countIpAddress[0].isBlocked && countIpAddress[0].count <= 4) {   
                let count = countIpAddress[0].count;
                let isBlocked = count >= 4 ? 1 : 0;
                try {
                    let ipAddressUpdated = await updateIpAddress(++count, isBlocked, countIpAddress[0].id); 
                } catch (error) {
                    sendErrorEmail(error);
                }
            }
        } else {
            try {
                let ipAddressSaved = await saveIpAddress(ipAddress);
            } catch (error) {
                sendErrorEmail(error);
            }
        }
    }
    if (partyId) {
        req.session.partyId = partyId;
        try {
            let voteCasted = await savePollingOptions(constituencyId, partyId);
            if (voteCasted) {
                res.writeHead(302, {
                    'Location': '/assembly-vote-casted-successfully/'
                });
                res.end();
            }
        } catch (error) {
            sendErrorEmail(error);
            res.render('cast-your-vote', { error: 'Unexpected error occurred while saving. Please contact <a href="mailto:info@electyourfuture.com">info@electyourfuture.com</a>.' });
        }
                
    } else {
        res.writeHead(302, {
            'Location': '/your-state-and-constituency/'
        });
        res.end();
    }
};

const successScreen = function (req, res) {
    console.log('entering success screen');
    if (req.session && req.session.stateCode && req.session.partyId) {
        res.render('vote-success');
    } else {
        res.writeHead(302, {
            'Location': '/your-state-and-constituency/'
        });
        res.end();
    }
};

const saveEmail = async (req, res) => {
    const emailAddress = req.body.emailAddress;
    const token = req.body.token;
    const type = emailAddress ? 'email' : 'token';
    const value = emailAddress ? emailAddress : token;
    try {
        let isAlreadyPresent = await checkEmailTokenExists(value);
        if (isAlreadyPresent && isAlreadyPresent.length) {
            res.json({
                "message": "error",
                "errors": ['Already present']
            })
        } else {
            try {
                let saveEmailToken = await saveEmailAddressToken(type, value);
                if (saveEmailToken) {
                    res.json({
                        "message": "success"
                    })
                }   
            } catch (error) {
                res.json({
                    "message": "error",
                    errors: [error]
                })
            }        
        }
    } catch (err) {
        sendErrorEmail(err);
        res.json({
            "message": "error",
            errors: [err]
        })
    }
    
};

const getResults = async (req, res) => {
    const constituencyId = req.body.constituencyId;
    try {
        let results = await getPollingResults(constituencyId);
        if (results && results.length) {
            res.json({
                results
            })
        } else {
            res.json({
                "results": []
            })
        }
    } catch (error) {
        sendErrorEmail(error);
        res.json({
            "results": [],
            error: error
        })
    }
};

function getAllStates () {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {
            const query = `SELECT * FROM states;`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var states = row;
                    resolve(states);
                } else {
                    reject (`Unexpected error occurred while performing getAllStates ${query}`);
                }
            })
        }
        });
    })
}

function getStateByCode (stateCode) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {
            const query = `SELECT * FROM states WHERE code = "${stateCode}";`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var states = row;
                    resolve(states);
                } else {
                    reject (`Unexpected error occurred while performing getStateByCode ${query}`);
                }
            })
        }
        });
    })
}

function getAllPartiesByState (stateCode) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {
            const query = `SELECT * FROM parties WHERE stateCode = "${stateCode}";`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var parties = row;
                    resolve(parties);
                } else {
                    reject (`Unexpected error occurred while performing getAllPartiesByState ${query}`);
                }
            })
        }
        });
    })
}

function getAllConstituencies (state, keywords) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {
            const query = `SELECT * FROM constituencies WHERE (constituency LIKE "%${keywords}%" or district LIKE "%${keywords}%") and stateCode = "${state}";`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var states = row;
                    resolve(states);
                } else {
                    reject (`Unexpected error occurred while performing getAllConstituencies ${query}`);
                }
            })
        }
        });
    })
}

function getConstituencyById (id) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {         
            const query = `SELECT * FROM constituencies WHERE id = ${id};`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var constituencies = row;
                    resolve(constituencies);
                } else {
                    reject (`Unexpected error occurred while performing getConstituencyById ${query}`);
                }
            })
        }
        });
    })
}

function savePollingOptions (constituencyId, partyId) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(err);
            } else {            
                const query = `INSERT INTO polling (constituencyId, partyId) VALUES (${constituencyId},${partyId});`;
                connection.query(query, (err, row) => {
                    connection.release();
                    var isInserted = row;
                    if(!err && isInserted) {
                        resolve(true);
                    } else {
                        reject (`Unexpected error occurred while saving polling options ${query}`);
                    }
                })
            }
        });
    })
}

function saveIpAddress (ipAddress) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(err);
            } else {            
                const query = `INSERT INTO ip_address (ipAddress, count, isBlocked) VALUES ("${ipAddress}",1,0);`;
                connection.query(query, (err, row) => {
                    connection.release();
                    var isInserted = row;
                    if(!err && isInserted) {
                        resolve(true);
                    } else {
                        reject (`Unexpected error occurred while saving ipAddress ${query}`);
                    }
                })
            }
        });
    })
}

function updateIpAddress (count, isBlocked, id) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(err);
            } else {            
                const query = `UPDATE ip_address SET count = ${count}, isBlocked = ${isBlocked} WHERE id = ${id};`;
                connection.query(query, (err, row) => {
                    connection.release();
                    var isInserted = row;
                    if(!err && isInserted) {
                        resolve(true);
                    } else {
                        reject (`Unexpected error occurred while updating ipAddress ${query}`);
                    }
                })
            }
        });
    })
}

function checkIpAddressCount (ipAddress) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {            
            const query = `SELECT * FROM ip_address WHERE ipAddress = "${ipAddress}";`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var ipAddressRow = row;
                    resolve(ipAddressRow);
                } else {
                    reject (`Unexpected error occurred while performing checkIpAddressCount ${query}`);
                }
            })
        }
        });
    })
}

function saveEmailAddressToken (type, value) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(err);
            } else {
                const query = `INSERT INTO email_token (type, value) VALUES ("${type}","${value}");`;
                connection.query(query, (err, row) => {
                    connection.release();
                    var isInserted = row;
                    if(!err && isInserted) {
                        resolve(true);
                    } else {
                        reject (`Unexpected error occurred while saving email address. ${query}`);
                    }
                })
            }
        });
    })
}

function checkEmailTokenExists (value) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {
            const query = `SELECT * FROM email_token WHERE value = "${value}";`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var valuesFound = row;
                    resolve(valuesFound);
                } else {
                    reject (`Unexpected error occurred while performing checkEmailTokenExists ${query}`);
                }
            })
        }
        });
    })
}

function getPollingResults (constituencyId) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(err);
        } else {         
            const query = `SELECT * FROM polling WHERE constituencyId = ${constituencyId};`;
            connection.query(query, (err, row) => {
                connection.release();
                if(!err) {
                    var constituencies = row;
                    resolve(constituencies);
                } else {
                    reject (`Unexpected error occurred while performing getPollingResults ${query}`);
                }
            })
        }
        });
    })
}

function handlingError (errorMessage) {

}

exports.stateAndConstituencies = getStatesNconstituencies;
exports.getConstituencies = getConstituencies;
exports.castYourVote = castYourVote;
exports.successScreen = successScreen;
exports.saveVote = saveVote;
exports.saveEmail = saveEmail;
exports.getResults = getResults;
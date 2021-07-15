const eyfsqlConnection = require('../models/model.local');
const { config } = require("../helper-functions/config");
const { response } = require('express');

async function setSessionStartPlayer (req, res) {
    const playerOneName = req.body.playerOneName || req.session.playerOneName;
    const playerTwoName = req.body.playerTwoName || req.session.playerTwoName;

    req.session.playerOneName = playerOneName;
    req.session.playerTwoName = playerTwoName;
    if (playerOneName) {
        try {
            const insertPlayers = req.session.sessionId || await insertTeamNameToDb(playerOneName, playerTwoName);
            let questionIds = await fetchGameIds();
            
            if (insertPlayers && questionIds && Array.isArray(questionIds) && questionIds.length) {
                req.session.questionIds = req.session.questionIds || config.shuffle(questionIds);
                req.session.currentQuestId = req.session.currentQuestId || req.session.questionIds[0];
                req.session.sessionId = insertPlayers.sessionId;
                res.redirect('/game-in-session/');
                // req.url = '/game-in-session/';
                // next();
            } else {
                console.log(insertPlayers);
                res.writeHead(302, {
                    'Location': '/play-time/'
                });
                res.end();       
            }
        } catch (err) {
            console.log(err);
            res.writeHead(302, {
                'Location': '/play-time/'
            });
            res.end();   
        }
    } else {
        res.writeHead(302, {
            'Location': '/play-time/'
        });
        res.end();
    }
}

function insertTeamNameToDb (playerOneName, playerTwoName) {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(err);
            } else {
                console.log('insert enter');
                let randomNumber = +(new Date().toLocaleDateString().replace(/\//g,'')) + config.getRandomNumber(100,500);
                const query = 'INSERT INTO game_in_session (`sessionId`, `teamOneName`, `teamTwoName`) VALUES ' + `('${randomNumber}', '${playerOneName}', '${playerTwoName}');`;
                connection.query(query, (err, row) => {
                    connection.release();
                    if(!err) {
                        console.log(row);
                        resolve({sessionId: randomNumber});
                    } else {
                        console.log('insert error', err);
                        reject('Connection issue, please try again');
                    }
                })
            }
        })
    })
}

async function getRandomQuestions (req, res) {    
    const playerOneName = req.session.playerOneName;
    const playerTwoName = req.session.playerTwoName;
    console.log('entered: ' + playerOneName);
    if (playerOneName) {
        let questionIds = await fetchGameIds();
        if (questionIds && Array.isArray(questionIds) && questionIds.length) {
            questionIds = config.shuffle(questionIds);
            console.log('random: '+ questionIds);
            return res.status(200).json({
                success: true,
                questionIds
            })
        } else {
            return res.status(200).json({
                success: false,
                questionIds: [],
                error: questionIds
            })
        }
    }
}

function fetchGameIds () {
    return new Promise((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(err);
            } else {
                const query = `SELECT * FROM game_questions;`;
                connection.query(query, (err, row) => {
                    connection.release();
                    if(!err) {
                        var questions = row.map(item=>item.questionId);
                        resolve(questions);
                    } else {
                        reject (`Unexpected error occurred while performing getAllStates ${query}`);
                    }
                })
            }
        });
    })
}

async function getClues (req, res) {
    if (req.session.playerOneName) {
        try {
            const currentQuestId = req.body.currentQuestion;
            const sessionQuestIds = req.session.questionIds;
            req.session.scoreKeeper = req.body.scoreKeeper;
            req.session.currentQuestId = currentQuestId;
            const questIdsLength = sessionQuestIds.length;
            if (sessionQuestIds[questIdsLength - 1] != currentQuestId) {
                const nextQuestId = sessionQuestIds[sessionQuestIds.indexOf(currentQuestId) + 1];
                const clues = await fetchCluesForQuestId(nextQuestId);
                const answer = await getAnswerByQuestId(nextQuestId);
                if (clues && answer) {
                    return res.status(200).json({
                        success: true,
                        clues,
                        answer,
                        nextQuestId,
                        endOfQuestion: sessionQuestIds[questIdsLength - 1] == nextQuestId ? true : false
                    })
                } else {
                    return res.status(200).json({
                        success: true,
                        clues
                    })
                }
            } else {
                let winner = null;
                const scoreKeeper = req.session.scoreKeeper;
                if (scoreKeeper.teamOne > scoreKeeper.teamTwo) winner = req.session.playerOneName;
                else if (scoreKeeper.teamOne < scoreKeeper.teamTwo) winner = req.session.playerTwoName;
                else winner = `${req.session.playerOneName} & ${req.session.playerTwoName}`;
                res.status(200).json({
                    success: true,
                    endOfQuestion: true,
                    winner
                })
            }
        } catch (err) {
            return res.status(200).json({
                success: false,
                error: err,
                message: 'Connectivity error'
            })
        }
    }
}

function fetchCluesForQuestId (questionId) {
    return new Promise ((resolve, reject) => {
        eyfsqlConnection.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(err);
            } else {
                const query = `SELECT * FROM eyf.game_clues WHERE questionId = ${questionId};`;
                connection.query(query, (err, row) => {
                    connection.release();
                    if(!err) {
                        const clues = row.map(item=>item.imageName);
                        resolve(clues);
                    } else {
                        console.log('FetchClue: ' + query, err);
                        reject (`Unexpected error occurred while performing getAllStates ${query}`);
                    }
                })
            }
        })
    })
}

function getAnswerByQuestId (questionId) {
    return new Promise ((resolve, reject) =>{
        eyfsqlConnection.getConnection(function (err, connection) {
            if(err) {
                connection.release();
                console.log(err);
            } else {
                const query = `SELECT answer FROM eyf.game_questions where questionId = ${questionId};`
                connection.query(query, (err, row) => {
                    connection.release();
                    if (!err) {
                        if (row && Array.isArray(row) && row.length) {
                            resolve (row[0].answer);
                        } else {
                            resolve ('');
                        }
                    } else {
                        console.log('getquesId: ' + query, err);
                        reject (`Unexpected error occurred while performing getAllStates ${query}`);
                    }
                })
            }
        })
    })
}


exports.setSessionStartPlayer = setSessionStartPlayer;
exports.getRandomQuestions = getRandomQuestions;
exports.getClues = getClues;
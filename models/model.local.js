const mysql = require('mysql');
const config = require('../helper-functions/config');
//Local
var eyfsqlConnection = mysql.createPool({
    host: config.host,
    // port: config.port,
    user: config.user,
    password: config.password,
    database: config.database,
    multipleStatements: config.multipleStatements,
    socketPath:config.socketPath
});

module.exports = eyfsqlConnection;
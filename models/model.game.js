const mysql = require('mysql');
const {config} = require('../helper-functions/config');

//Local
var eyfsqlConnection = mysql.createPool({
    host: config.mysql.host,
    // port: config.port,
    user: config.mysql.user,
    password: config.mysql.password,
    database: config.mysql.database,
    multipleStatements: config.mysql.multipleStatements,
    socketPath:config.mysql.socketPath
});

module.exports = eyfsqlConnection;
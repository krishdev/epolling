const mysql = require('mysql');
//Local
var eyfsqlConnection = mysql.createPool({
    host: 'localhost',
    port: '3306',
    user: 'krishna',
    password: 'Aprilfool_20',
    database: 'eyf',
    multipleStatements: true,
    socketPath: '/var/run/mysqld/mysqld.sock'
});

module.exports = eyfsqlConnection;
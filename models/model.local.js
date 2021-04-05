const mysql = require('mysql');
//Local
var eyfsqlConnection = mysql.createPool({
    host: '127.0.0.1',
    port: '3306',
    user: 'krishna',
    password: 'root',
    database: 'eyf',
    multipleStatements: true
});

module.exports = eyfsqlConnection;
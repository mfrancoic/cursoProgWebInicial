const mysql = require('mysql');
const util = require('util');

/* Obtengo un objeto con las variables configuradas en el archivo .env */
const {
    DB_HOST,
    DB_PORT,
    DB_USER,
    DB_PASS,
    DB_NAME
} = process.env;

let pool = mysql.createPool({
    host: DB_HOST || 'localhost',
    port: DB_PORT || 3306,
    password: DB_PASS || '',
    user: DB_USER || 'root',
    database: DB_NAME || 'proypwi-utn',
    connectionLimit: 10
});

pool.query = util.promisify(pool.query);

module.exports = pool;
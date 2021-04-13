const pool = require('../utils/db');

/* Obtengo un objeto con las variables del archivo env */
const {
    DB_T_CONSULTAS,    
}= process.env;

const insertConsulta = async(obj) => {
    try {
        
        const query = `
            INSERT INTO ${DB_T_CONSULTAS} SET ?
        `;

        return await pool.query(query, [obj]);

    } catch (error) {
        throw error;
    }
}

const deleteConsulta = async(id) => {
    try {
        const query = `
            UPDATE
                ${DB_T_CONSULTAS}
            SET
                available = 0
            WHERE
                id = ?
                AND
                available = 1
        `;

        const result = await pool.query(query, [id]);

        return result.affectedRows;

    } catch (error) {
        throw error;
    }
}

module.exports = {
    insertConsulta,
    deleteConsulta
}
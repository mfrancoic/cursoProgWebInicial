const pool = require('../utils/db');

/* Obtengo un objeto con las variables del archivo env */
const {
    DB_T_ARTICULOS,
    DB_T_ARTICULOS_RUBROS
}= process.env;

const getRubros=async()=>{
    try{
        const query=`
            SELECT Id id_rubro, Descr rubro 
            FROM  ${DB_T_ARTICULOS_RUBROS}`;

        const result= await pool.query(query);

        
        return(result);

    }
    catch(error){
        throw error;
    }
}

const getArticulos=async(IdRubro) =>{
        
    try{
        const query=`
            SELECT A.Id,                 
                A.Descr,
                FORMAT(A.Precio, 2) Precio
            FROM ${DB_T_ARTICULOS} A 
            WHERE Id_Rubro = ?
            ORDER BY A.Id`;

        const result= await pool.query(query, [IdRubro]);
        console.log(result);
                
        return result;

    }
    catch(error){
        throw error;
    }
}

module.exports={
    getRubros,
    getArticulos
}


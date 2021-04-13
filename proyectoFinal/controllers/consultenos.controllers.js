const model = require('../models/consultenos.model');
const mailer = require('../utils/mailer');

const scripts = [
    { script: '/javascripts/consultenos.js' }
  ];

const insertConsulta = async(req, res, next)=>{
    try{
        // Obtengo del obj req.body los varoles que envian por POST
        const { nombre, email, consulta } = req.body;

        const result = await model.insertConsulta({ nombre, email, consulta});

        console.log(result);

        if(result) {
            
            //Envío correo
            const emailToSend = { nombre, email, consulta };
            
            const info = await mailer.comments(emailToSend);
            
            //Renderizo consultenos
            res.render('consultenos', {title: 'Consúltenos',
                                       mensaje: 'Su consulta fué recibida, recibirá un correo en breve con la respuesta.',
                                       insertId: result.insertId,
                                       scripts: scripts});                        
            

        } 
        else {            
            res.render('error');
        }
    }
    catch (error) {        
        console.log(error);
        res.sendStatus(500);
    }
}

const deleteConsulta = async(req, res, next) =>{
    try{
        const { id } = req.params; // req.params => /consultenos/1 || consultenos?id=1 query string => req.query

        // Buscarlo en l DB y eliminarlo.
        const result = await model.deleteConsulta(id);

        // Creo una respuesta que me envie el resultado o respuesta de error si el id no se encontro.

        if(result > 0) {
            console.log(result);            

            res.json({ id });
        }
        else{
            res.render('error');
        }
    }
    catch(error){
        console.log(error);
        res.sendStatus(500);
    }
    
}


module.exports={
    insertConsulta,
    deleteConsulta

}

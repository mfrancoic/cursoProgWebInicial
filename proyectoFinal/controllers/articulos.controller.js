const model = require('../models/articulos.model');
const scripts=[
    {script: '/javascripts/articulos.js'}
]

const getRubros=async(req, res, next)=>{
    try{
        const rubros = await model.getRubros();

        if(rubros){
            console.log('SCRIPTS:' + scripts[0].script);
            res.render('articulos',{title: 'Lista de Artículos', rubros: rubros, scripts: scripts});
        }
        else{
            res.status(404).render('error');
        }
    }
    catch(error){
        console.log(error);
        res.sendStatus(500);
    }
}

const getArticulos=async(req, res, next)=>{
    try{
        
        const idRubro = req.params.idRubro;
        const rubros = await model.getRubros();
        
        const articulos = await model.getArticulos(idRubro); 
                
                
        if(articulos){            
            res.render('articulos',{title: 'Lista de Articulos',
                                    rubros: rubros, 
                                    articulos: articulos, 
                                    scripts: scripts,
                                    param: idRubro});             
        }
        else{            
            res.status(404).render('error');
        }

        
    }
    catch(error){
      console.log('Entó aca:' + error);
      res.sendStatus(500);
    }
}

module.exports={
    getRubros,
    getArticulos
}
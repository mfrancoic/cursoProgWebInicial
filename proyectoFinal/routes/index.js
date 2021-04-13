// Aca se registran todas las URL de la aplicación
// Cargamos el módulo de express para poder crear rutas
const express = require('express');

//Ejecuto la función Router() del module express que me va devolver un objeto y lo guardo en router 
const router = express.Router();

/* GET home page. */
/* Le digo que cuando acceda a la ruta inicial renderice el archivo index.hbs */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Productos para Pet Shop y Peluquería Canina' });
});


// Exportamos las rutas para que pueda ser utilizado por app.js
module.exports = router;

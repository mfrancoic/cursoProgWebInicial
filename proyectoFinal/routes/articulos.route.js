const {Router} = require('express');
const router = new Router();
const{getArticulos} = require('../controllers/articulos.controller');
const { getRubros } = require('../controllers/articulos.controller');



router.get('/',getRubros);
router.get('/:idRubro',getArticulos);


module.exports=router;
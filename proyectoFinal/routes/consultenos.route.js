const {Router} = require('express');
const router = new Router();

const scripts = [
    { script: '/javascripts/consultenos.js' }
  ];

const{
    insertConsulta,
    deleteConsulta
}=require('../controllers/consultenos.controllers');

router.get('/', function(req, res, next) {
    res.render('consultenos', { title: 'Consúltenos / Contáctenos',
                                scripts:scripts });
});

router.post('/new',insertConsulta);
router.delete('/:id', deleteConsulta);

router.get('/deleted', function(req, res, next) {
    res.render('consultenos', { title: 'Consúltenos / Contáctenos',
                                mensaje: 'Su consulta ha sido eliminada',
                                scripts:scripts});
});


module.exports = router;
const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');

const dotenv = require('dotenv');
dotenv.config();

//Agrego para handlebars
const hbs = require('express-handlebars');


//Importamos las rutas
//Le digo que busque las rutas en el archivo routes/index.js
const indexRouter = require('./routes/index');
const articulosRouter = require('./routes/articulos.route');
const consultenosRouter = require('./routes/consultenos.route');
const nosotrosRouter= require('./routes/nosotros.route');


//Inicialización
const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

//Agrego para handlebars
app.engine('hbs', hbs({
  extname: '.hbs',
  defaultLayout: 'layout',
  layoutsDir: 'views/layout',
  partialsDir: 'views/partials'
}));


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//Cargamos las rutas importadas
app.use('/', indexRouter);
app.use('/articulos', articulosRouter);
app.use('/consultenos', consultenosRouter);
app.use('/nosotros', nosotrosRouter);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;


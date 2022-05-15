'use strict'

var express=require("express");

var app=express();
var bodyParser=require("body-parser");

//Convertimos a json el resultado
app.use(bodyParser.urlencoded({extended:false}));
app.use((bodyParser.json()));

//mapeo de rutas
var userRoutes= require("./routes/caballero");

//cargo las rutas
app.use('/api', userRoutes);

module.exports=app;

//exporto para utilzarlo en el index
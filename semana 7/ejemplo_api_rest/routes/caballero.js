'use strict'

var express=require("express");

//Controlador de Caballero
var caballeroController=require("../controllers/caballero");

var rutas=express.Router();

rutas.get('/caballerosoro', caballeroController.findAllCaballeros);
//TODO rutas.get('/caballerosoro/:id', caballeroController.findAllCaballeros);

module.exports=rutas;
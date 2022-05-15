'use strict'

var mongoose=require("mongoose");
var caballero=require("../models/caballero");

//GET
exports.findAllCaballeros=function (req, res) {
    caballero.find(function(err, caballeros) {
        if (err) res.send(500, err.message);
        console.log(caballeros);
        res.status(200).send({resultado: caballeros}); 
    });
};

//GET by id

//POST

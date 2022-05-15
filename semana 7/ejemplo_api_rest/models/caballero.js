'use strict'

var mongoose=require("mongoose"),

Schema=mongoose.Schema;

var caballeroSchema=new Schema(
    {id:{type:Number},
    nombre: {type: String},
    signo: {type: String},
    imagenUrl: {type: String},
    descripcion: {type: String},
    tecnicas: [{type: String}]
    },
    {collection: "caballeros_oro"}
);

module.exports=mongoose.model("caballerosOro", caballeroSchema);
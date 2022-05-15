'use strict'

var mongoose=require("mongoose");

mongoose.Promise=global.Promise;

mongoose.connect("mongodb+srv://elserch:elserch123@cluster0.y1rdx.mongodb.net/pruebas?retryWrites=true&w=majority", {useNewUrlParser:true}).then((result) => {
    console.log("La conexión a la BD es correcta!!!");
}).catch((err) => {
    console.log("Ocurrió un error!!! "+err);
});
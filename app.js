//jshint esversion:6
const express = require("express");
const bodyParser = require("body-parser");
const request = require("request");
const https = require("https");
//const mysql = require("mysql");


const app = express();
app.use(bodyParser.urlencoded({
  extended: true
}));
//for using static images, css files
app.use(express.static("public"));


app.get("/", function(req, res) {
  res.sendFile(__dirname + "/index.html");
  //console.log("SUCCESS HERE;")
});

app.post("/", function(req, res) {
  const query = req.body.query;
  console.log(query);

  var mysql      = require('mysql');
  var connection = mysql.createConnection({
    host     : 'localhost',
    port     : 3200,
    user     : 'root',
    password : '',
    database : 'projectdb'
  });
  try{
    connection.connect();
    console.log("Connected!!")
  }
  catch(error){
    console.log(error)
  }

  connection.query(query, function (error, results, fields) {
    if (error) console.log(error);
    resultValues = results[0];
    console.log('The solution is: ', results);
    res.send(results)
    console.log("RESULTS");
  });

  connection.end();

});







// app.post("/failure", function(req, res){
//   res.redirect("/");
// })



app.listen(3000, function() {
  console.log("Server Initialised at Port Number 3000");
});

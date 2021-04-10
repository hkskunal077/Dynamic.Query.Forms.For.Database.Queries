//jshint esversion:6
const express = require("express");
const bodyParser = require("body-parser");
const request = require("request");
const https = require("https");
const mysql = require("mysql");


const app = express();
app.use(bodyParser.urlencoded({extended: true}));
//for using static images, css files
app.use(express.static("public"));


app.get("/", function(req, res)
{
  res.sendFile(__dirname + "/index.html");
  //console.log("SUCCESS HERE;")
});

app.post("/", function(req, res)
{
  const query = req.body.query;
  console.log(query);
});


app.post("/failure", function(req, res){
  res.redirect("/");
})

app.listen(3000, function()
{
    console.log("Server Initialised at Port Number 3000");
});

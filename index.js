const express = require("express")
const app = express();
const port = process.env.PORT || 8080;
const path = require("path");
const {faker} = require('@faker-js/faker')
const mysql = require('mysql2');


app.set("view engine","ejs");
app.use(express.json());
app.use(express.static(path.join(__dirname,"public")));
app.set("views",path.join(__dirname,"/views"))
app.use(express.urlencoded({extended:true}));

let numOfUsers =0;
let data = []
let userdata=[];

const connection = mysql.createConnection({
    host: process.env.MYSQLHOST,
    user:process.env.MYSQLUSER,
    database:process.env.MYSQLDATABASE,
    password:process.env.MYSQLPASSWORD,
    port: process.env.MYSQLPORT
})

connection.connect((err)=>{
    if(err){
        console.log("DB connection failed:",err);
    } else {
        console.log("Database connected");
    }
});
connection.query("SELECT count(id) as total FROM user",(err,result)=>{
    if(err){
        console.log(err);
        return;
    }
    numOfUsers = result[0].total;
})


app.get("/",(req,res)=>{
    res.render("index.ejs",{numOfUsers})
})
app.get("/users", (req,res)=>{
    connection.query("SELECT id,username,email FROM user",(err,result)=>{
        if(err){
            console.log(err);
            return res.send("Database error");
        }

        userdata = result;
        res.render("users.ejs",{userdata,numOfUsers});
    })
})
app.listen(port,()=>{
    console.log(`Listening on port ${port}`);
})

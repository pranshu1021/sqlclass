const express = require("express")
const app = express();
const port = 8080;
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
    host:'localhost',
    user:'root',
    database:'delta_app',
    password:'pranshu200631!!'
})
// let getRandomUser = () =>{
//     return [
//         faker.string.uuid(),
//         faker.internet.username(),
//         faker.internet.email(),
//         faker.internet.password(),
//     ];
// };
//INSERTING NEW DATA
// let q = 'INSERT INTO user (id, username, email, password) VALUES ?'
// for(let i = 1; i <=100; i++){
//     data.push(getRandomUser());
    
// }
// try{
//     connection.query(q, [data], (err, result) =>{
//         if(err) throw err;
//         // console.log(result);
// } );
// }catch(err){
//     // console.log(err)
// }

connection.query("SELECT count(id) FROM user",[data],(err,result)=>{
    numOfUsers = result[0]["count(id)"];
})




// connection.end();

// number of users in database
app.get("/",(req,res)=>{
    res.render("index.ejs",{numOfUsers})
})
app.get("/users", (req,res)=>{
    connection.query("SELECT id,username,email FROM user",[data],(err,result)=>{
        console.log("Hello")
        console.log(result);
         console.log("Hello")
        userdata.push(result);
        res.render("users.ejs",{userdata,numOfUsers});
    })
})
// app.get("/users/:username",(req,res)=>{
//     let name = req.params.username;
//     res.send("USERNAME IS => : " + name);
// })
app.listen(port,()=>{
    console.log("Listening to port 8080");
})

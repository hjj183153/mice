//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//2:配置第三方模块
 //2.1:配置连接池
 var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   database:"xz",
   connectionLimit:15
 })
 //2.2:跨域
 var server = express();
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))
 //2.3:session
 server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))
 //指定静态目录
 server.use(express.static("public"))
 server.listen(3000);
 


 //测试一下服务器端
 server.get("/test",(req,res)=>{
   var uname=req.query.uname;
   res.send({code:200,msg:uname})
 })

//  //add 房源类型表
//  server.get("/housingResources_Type",(req,res)=>{
//   var uname=req.query.uname;
//   res.send({code:200,msg:uname})
// })

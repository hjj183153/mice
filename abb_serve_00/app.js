//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
const detailsRouter=require("./routers/details.js");
//2:配置第三方模块
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
 //创建body中间件
server.use(bodyParser.urlencoded({
	extended:false
}));
server.listen(3000);
 
 //测试一下服务器端
server.get("/test",(req,res)=>{
  var uname=req.query.uname;
  res.send({code:200,msg:uname})
})

server.use("/details",detailsRouter);


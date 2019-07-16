const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//登录注册接口
//添加用户注册路由
router.get('/',(rep,res)=>{
    var obj=rep.query;
    if(obj.uname==''){
        res.send({code:400,msg:'用户名不能为空'});
        return;
    }
    if(obj.upwd){
        res.send({code:401,msg:'密码不能为空'});
        return;
    }
    if(obj.phone){
        res.send({code:402,msg:'手机号不能为空'});
        return;
    }
    if(obj.email){
        res.send({code:403,msg:'邮箱不能为空'});
        return;
    }
    if(obj.gender){
        res.send({code:404,msg:'性别不能为空'});
        return;
    }
    new data('user_reg_time');
    pool.query('INSERT INTO airbnb_user SET?'[obj],function(err,result){
        if(err) throw err;
        console.log(result);
        //是否注册成功
        if(result.affectedRows>0){
            res.send({code:200,msg:'reg success'});
        }
    });
});
//添加路由
roter.fet('/',(res,res)=>{
    res.send('这是注册路由');
});
//添加用户登录路由
router.post('/',(req,res)=>{
    var obj=req.body;
    console.log(obj);
    if(!obj.uname){
        res.send({code:400,msg:'uname required'});
        return;
    }
    if(!obj.upwd){
        res.send({code:401,msg:'upwd required'});
        return;
    }
    new data('user_login_time');
    //执行sql
    pool.query('SELECT user_name,user_pwd  FROM airbub_user WHERE uname=? && upwd=?',[obj.uname,obj.upwd],(err,result)=>{
        if(err){throw err};
        if(result.length>0){
            res.send({code:200,msg:'login succes'});
        }else{
            res.send({code:201,msg:'login err'});
    
        }
    })
})
module.exports=rooter;
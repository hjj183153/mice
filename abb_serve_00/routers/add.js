const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//房屋类型接口
// server.get("/housingResources_Type",(req,res)=>{
  
// })
router.get("/housingResources_Type",(req,res)=>{
    var sql=`SELECT housingResources_id,housingResources_name FROM Airbnb_housingResources_Type`;
    pool.query(sql,[],(err,result)=>{
      if(err){
        console.log(err);
        res.send({code:0});
      }else{
        res.send(result);
      }
    })
})
//出租类型接口
router.get("/Rent_Type",(req,res)=>{
    var sql=`SELECT Rent_id,Rent_name,Rent_about FROM Airbnb_Rent_Type`;
    pool.query(sql,[],(err,result)=>{
      if(err){
        console.log(err);
        res.send({code:0});
      }else{
        res.send(result);
      }
    })
})
//城市表接口
router.get("/City",(req,res)=>{
  var sql=`SELECT City_id,City_name FROM Airbnb_City`;
  pool.query(sql,[],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:0});
    }else{
      res.send(result);
    }
  })
})
//城市表接口
router.get("/district",(req,res)=>{
  var id=req.query.id;
  //console.log(id);
  var sql=`SELECT District_id,District_name,District_longitude,District_latitude,City_id FROM Airbnb_district WHERE City_id=?`;
  pool.query(sql,[id],(err,result)=>{
    if(err){
      //console.log(err);
      res.send({code:0});
    }else{
      res.send(result);
    }
  })
})
//获取城市区域经纬度接口District_longitude,District_latitude,District_id
router.get("/dd",(req,res)=>{
  
  var did=req.query.did;
  console.log(req.query,111);
  var sql=`SELECT * FROM Airbnb_district WHERE District_id=?`;
  pool.query(sql,[did],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:0});
    }else{
      res.send(result);
    }
  })
})
// router.get("/dd",(req,res)=>{
//   //var id=req.query.id;
//   //console.log(id,"1");
//   var sql=`SELECT * FROM Airbnb_district`;
//   pool.query(sql,(err,result)=>{
//     if(err){
//       console.log(err);
//       res.send({code:0});
//     }else{
//       res.send(result);
//     }
//   })
// })
//上传房源图片接口
// router.get("/Houseimg",(req,res)=>{
//   var House_imgurl=req.query.House_imgurl;
//   console.log(House_imgurl);
//   var sql=`UPDATE Airbnb_House SET House_imgurl=?`;
//   pool.query(sql,[House_imgurl],(err,result)=>{
//     if(err){
//       console.log(err);
//       res.send({code:0});
//     }else{
//       res.send(result);
//     }
//   })
// })
//









module.exports=router;
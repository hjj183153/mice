<template>
    <div>
        <div class="images" style="display:none" v-viewer="{movable: false}">
            <img v-for="(src,i) of houseData" :src="src.HouseImg_md" :key="i">
        </div>
        
        <div class="nav">
            <!--<user-header> </user-header>-->     
        </div>
        <div class="topimg">
            <div class="topleft" >
                <img :src="houseData[0].HouseImg_lg" @mouseover="imgLg" @mouseout="imgSm" @click="show" >
                <div class="imgshadow"></div>
            </div>
            <div class="topright">
                <div class="rightimg" v-for="(item,i) of houseData" :key="i" >
                    <img :src="item.HouseImg_md" @mouseover="imgLg" @mouseout="imgSm" @click="show">
                    <div class="imgshadow" v-show="s!=i"></div>
                </div>
            </div>
            <button class="share" @click="share"><img src="http://127.0.0.1:3000/img/details/share.png">分享</button>
            <button class="save"><img src="http://127.0.0.1:3000/img/details/save.png">保存</button>
            <button class="lookimg" @click="show">查看图片</button>
        </div>
        <div class="main">
            <div class="main_nav">
                <div class="ul">
                    <ul >
                        <li><a :class="{black:changeBlack==0}" href="#details" @click="toggle(0)">详情</a></li>
                        <li><div class="circle"></div>  <a  href="javascript:;" :class="{black:changeBlack==1}" @click="toggle(1)">评价</a> </li>
                        <li style="width:75px;"><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==2}" @click="toggle(2)">可定日期</a> </li>
                        <li><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==3}" @click="toggle(3)">位置</a> </li>
                        <li><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==4}" @click="toggle(4)">须知</a> </li>
                        <li><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==5}" @click="toggle(5)">房东</a> </li>
                    </ul>
                </div>
            </div>
            <div class="main_main">
                <div class="mainleft">
                    <div class="details">
                        <div>
                            <span>北京</span><span class="dian">·</span><span>整套公寓</span>
                        </div>
                        <div style="font-size:32px">
                            <p>{{houseData[0].House_name}}</p>
                        </div>
                        <div class="housetags" >
                            <div class="roomnum"><img src="http://127.0.0.1:3000/img/details/door.png" alt=""><span>{{houseData[0].House_bednum}}间卧室</span></div>
                            <div class="roomnum"><img src="http://127.0.0.1:3000/img/details/chuang.png" alt=""><span>{{houseData[0].House_bednum}}张床</span></div>
                            <div class="roomnum"><img src="http://127.0.0.1:3000/img/details/wc.png" alt=""><span>{{houseData[0].House_restroom}}间卫生间</span></div>
                            <div class="roomnum"><img src="http://127.0.0.1:3000/img/details/pnum.png" alt=""><span>最多住{{houseData[0].House_people_num}}人</span></div>
                        </div>
                        <div class="housemessage">
                            <div v-for="(message,i) of messages" :key="i">{{message}}</div>
                        </div>
                        <div class="line"></div>
                        <div class="master">
                            <div class="img" @click="toggle(5)"><img src="https://z1.muscache.cn/im/pictures/user/f46bac88-1562-4336-a382-bc715c9208a8.jpg?aki_policy=profile_x_medium" alt=""></div>
                            <div class="text">
                                <div>
                                    <span>房东：茜茜Elizabeth <a href="">联系房东</a></span>
                                </div>
                                <div><span>共收到336条评价 · 已验证</span></div>
                            </div>
                        </div>
                        <div class="masternext">
                            <div>
                                <span>Hi,很开心在这个美好的季节与你相遇,分享家和生活,你想知道的都在下面啦:
                                </span>
                            </div>
                            <div style="margin-top:50px"><a style="font-size:18px" href="">更多房源介绍</a></div>
                        </div>
                        <div class="line"></div>
                        <div class="rooms">
                            <div class="room" v-for="(num,i) of roomnum" :key="i">
                                <div><span>卧室{{num}}</span></div>
                                <div>
                                    <svg t="1563253594791" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2238" width="32" height="32"><path d="M218.3 515.7c-11 0-20-9-20-20V204.4c0-22.4 20-40.7 44.5-40.7h543.7c24.6 0 44.5 18.3 44.5 40.7v290.5c0 11-9 20-20 20s-20-9-20-20V205.1c-0.6-0.5-2.2-1.4-4.5-1.4H242.8c-2.5 0-4 0.9-4.5 1.4v290.6c0 11.1-8.9 20-20 20zM942.4 827.5H87c-11 0-20-9-20-20v-186c0-11 9-20 20-20h855.3c11 0 20 9 20 20v186c0.1 11-8.9 20-19.9 20z m-835.4-40h815.3v-146H107v146z" p-id="2239" fill="#2c2c2c"></path><path d="M87 897.5c-11 0-20-9-20-20v-68c0-11 9-20 20-20s20 9 20 20v68c0 11-8.9 20-20 20zM942.4 897.5c-11 0-20-9-20-20v-68c0-11 9-20 20-20s20 9 20 20v68c0 11-9 20-20 20zM87 639.7c-8.3 0-15.7-5.1-18.7-12.8-3-7.7-0.8-16.5 5.3-22l144-129.2c3.7-3.3 8.4-5.1 13.4-5.1h567.3c4.9 0 9.7 1.8 13.4 5.1l144 129.2c6.2 5.5 8.3 14.3 5.3 22-3 7.7-10.4 12.8-18.7 12.8H87z m151.7-129.2l-99.4 89.2h750.8l-99.4-89.2h-552z" p-id="2240" fill="#2c2c2c"></path><path d="M462.2 496c-11 0-20-9-20-20V336.1H327.1V476c0 11-9 20-20 20s-20-9-20-20V331.2c0-19.4 14.3-35.1 31.9-35.1h131.4c17.6 0 31.9 15.8 31.9 35.1V476c-0.1 11-9 20-20.1 20zM722.2 496c-11 0-20-9-20-20V336.1h-115V476c0 11-9 20-20 20s-20-9-20-20V331.2c0-19.4 14.3-35.1 31.9-35.1h131.4c17.6 0 31.9 15.8 31.9 35.1V476c-0.2 11-9.1 20-20.2 20z" p-id="2241" fill="#2c2c2c"></path></svg>
                                </div>
                                <div><span>1张{{houseData[0].House_Bed}}</span></div>
                            </div>
                        </div>
                        <div class="dd">

                        </div>
                    </div>
                    <div class="speak" style="height:500px">
                        <h1>评价</h1>

                    </div>
                    <div class="leftdate" style="height:500px">
                        <h1>可定日期</h1>

                    </div>
                    <div class="address" style="height:500px">
                        <h1>位置</h1>

                    </div>
                    <div class="notice" style="height:500px">
                        <h1>须知</h1>

                    </div>
                    <div class="housename" style="height:500px">
                        <h1>房东</h1>

                    </div>
                    <div class="more" style="height:500px">
                        <h1>更多适合您的房源</h1>

                    </div>
                    <div class="other" style="height:500px">
                        <h1>北京附近的其他选择</h1>

                    </div>
                </div>
                <div class="mainright">
                    <div class="rightdate">

                    </div>
                </div>
            </div>
            
            
        </div>
        
    </div>
</template>
<script>
export default {
    data(){
        return {
            houseData:[{HouseImg_lg:""}],
            houseId:1,
            s:-1,
            changeBlack:0,
            messages:[],
            roomnum:[],
        }
  },
    methods: {
        imgLg(e,sh){
            e.target.style.width="105%";
            var shadow=e.target.parentElement
        },
        imgSm(e){
            e.target.style.width="100%"
        },
        mainnavclick(){

        },
        show () {
            const viewer = this.$el.querySelector('.images').$viewer
            viewer.show()
        },
        scroll(){
            var scrollTop =  document.documentElement.scrollTop;
            console.log(scrollTop)
            var mainnav = document.querySelector('.main_nav')
            var ul = document.querySelector('.main_nav ul')
            var main_main=document.querySelector(".main_main");
            var speak=document.querySelector(".main_main .leftdate")
            var share=document.querySelector(".topimg .share")
            var save=document.querySelector(".topimg .save")
            var rightdate=document.querySelector(".main_main .rightdate")
            if(scrollTop>380&&scrollTop<3200){
                mainnav.style.position="fixed";
                mainnav.style.borderBottom="1px solid #ddd";
                ul.style.borderBottom="0";
                main_main.style.marginTop="71px"
                share.style.position="fixed";
                save.style.position="fixed";
                share.style.right="265px";
                save.style.right="150px";
                rightdate.style="position:fixed;top:80px;width:28%;right:150px"
            }else if(scrollTop>=3200){
                rightdate.style="position:absolute;top:2700px;width:90%;right:0px"
            }else{
                mainnav.style.position="";
                mainnav.style.borderBottom="0";
                ul.style.borderBottom="1px solid #ddd";
                main_main.style.marginTop="30px";
                share.style.position="absolute";
                save.style.position="absolute";
                share.style.right="140px";
                save.style.right="25px";
                rightdate.style="position:absolute;top:-30px;width:90%;right:0px"
            }
            if(scrollTop>=911&&scrollTop<1455){
                this.changeBlack=1;
            }else if(scrollTop>=1455&&scrollTop<2010){
                this.changeBlack=2;
            }else if(scrollTop>=2010&&scrollTop<2562){
                this.changeBlack=3;
            }else if(scrollTop>=2562&&scrollTop<3105){
                this.changeBlack=4;
            }else if(scrollTop>=3105){
                this.changeBlack=5;
            }else{
                this.changeBlack=0;
            }
        },
        toggle(b){
            this.changeBlack=b;
            if(b==0){
                document.documentElement.scrollTop=400;
            }else if(b==1){
                document.documentElement.scrollTop=911;
            }else if(b==2){
                document.documentElement.scrollTop=1455;
            }else if(b==3){
                document.documentElement.scrollTop=2010;
            }else if(b==4){
                document.documentElement.scrollTop=2562;
            }else if(b==5){
                document.documentElement.scrollTop=3105;
            }
            
        },
        share() {
            this.$alert(`<div><h2>分享</h2><div>`, '标题名称');
        }
    },
    mounted() {
      window.addEventListener('scroll', this.scroll);

    },
    created() {
        var url="details";
        var obj={house_id:this.houseId};
        this.axios.get(url,{params:obj}).then(result=>{
            this.houseData=result.data.data;
            this.messages=result.data.data[0].House_message.split(",");
            console.log(this.messages)
            var num=this.houseData[0].House_bednum;
            for(var i=1;i<=num;i++){
                this.roomnum.push(i)
            }
            //console.log(this.roomsum)
        })
        
    },
    
}
</script>
<style  scoped>
    .nav{
        height: 65px;
        overflow: hidden;
    }
    .topimg{
        display: flex;
        justify-content: space-between;
        width: 100%;
        height:300px;
        position: relative;
        
    }
    .topright img,.topleft img{
        width: 100%;
        transition: 0.5s;
        transform-origin:left top;
        cursor: pointer;
        opacity:0.8;
    }
    .topleft{
        width:50%;
        border:1px solid #000;
        overflow: hidden;
        position: relative;
        
    }
    .topright{
        display: flex;
        flex-wrap: wrap;
        width:50%;
        justify-content: space-between;
        
    }
    .rightimg{
        width:50%;
        height:50%;
        border:1px solid #000;
        box-sizing: border-box;
        overflow: hidden;
        position: relative;
    }
    .imgshadow{
        width:100%;
        height:100%;
        background: rgba(0, 0, 0, 0.3);
        position: absolute;
        top:0;
        display: none
    }
    .share,.save,.lookimg{
        position: absolute;
        width: 90px;
        height:40px;
        text-align: center;
        background: #fff;
        border-radius: 5px;
        box-shadow:2px 2px 3px -2px  #000;
        border: 0;
        font:14px 微软雅黑;
        font-weight: bold;
        cursor: pointer;
        z-index: 101;
    }
    .topimg button img{
        width:20px;
        margin: -4px 7px;
    }
    .share{
        right:140px;
        top:5px;
    }
    .save{
        right:25px;
         top:5px;
    }
    .lookimg{
        top:240px;
        right:25px;
    }
    .main{
        width: 100%;
    }
    .main_nav{
        width: 100%;
        top:0;
        background: #fff;
        z-index: 100;
    }
    .main_nav .ul{
        width: 1050px;
        margin: auto;
    }
    .main_nav ul{
        width:58%;
        height: 30px;
        border-bottom: 1px solid #ddd;
        padding: 10px;
        padding-left: 0;
          
    }
    .main_nav ul li{
        float: left;
        width:45px;
        text-align: left;
        line-height: 30px;
        position: relative;
    }
    .main_nav ul li .circle{
        width:2px;height: 2px;
        background: #000;
        border-radius: 50%;
        position: absolute;
        top:14px;
        left:-10px;
       
    }
    a{
        color: #008489;
        font-family: 微软雅黑;
        font-size:14px;
        font-weight:800; 
    }
    .main_nav ul li a.black{
        color: #000
    }
    a:hover{
        text-decoration:underline;
    }
    .main_main{
        width:1050px;
        margin: auto;
        margin-top:10px;
        display: flex;
        justify-content: space-between;
        color: #484848;
    }
    .main_main .mainleft{
        width: 60%
    }
    .main_main .mainright{
        width: 40%;
        position: relative;
    }
    .main_main .mainleft>div{
        border-bottom:1px solid #ddd;
        padding-bottom:40px;
    }
    .main_main .mainleft>div:not(:first-child){
        margin-top: 50px;
    }
    .main_main .details{
        font-size: 12px;
        font-weight: 800
    }
    .main_main .details .dian{
        font-weight:lighter;
        margin: 0 5px
    }
    .main_main .speak{
    }
    .main_main .leftdate{
    }
    .main_main .address{
    }
    .main_main .notice{
    }
    .main_main .housename{
    }
    .main_main .rightdate{
        width:90%;
        height: 500px;
        border:1px solid #ddd;
        position: absolute;
        top:-30px;
        right: 0px;
    }
    .mainleft .housetags{
        width:70%;
        margin:10px 0;
        display: flex;
        justify-content: space-between;
        font-size:16px;
        font-weight: 400;

    }
    .mainleft .housetags img{
        margin:0px 5px -3px 0;
    }
    .mainleft .details .housemessage{
        width: 80%;
        display: flex;
        margin-top: 20px;
    }
    .housemessage div{
        background: #ddd;
        border-radius:10px;
        padding:3px 10px;
        margin-right: 10px;
    }
    .housemessage div:nth-child(1){
        background: #eaf7ea;
        color: #296e00
    }
    .housemessage div:nth-child(2){
        background:#f7f3ea;
        color: #8a2400
    }
    .details .line{
        border-bottom: 1px solid #eee;
        margin-top:50px;
    }
    .master {
        width: 100%;
        font-size: 16px;
        display: flex;
        justify-content: space-between;
        margin-top:50px;
    }
    .master .img{
        width:12%;
        height: 12%;
        cursor: pointer;
    }
    .master .img img{
        width: 100%;
        overflow: hidden;
        border-radius: 50%
    }
    .master .text{
        width:85%
    }
    .master a{
        font-size: 16px;
        margin-left: 10px;
    }
    .master .text div:last-child{
        margin-top: 10px;
        font-size: 14px;
        font-weight: 600;
    }
    .masternext {
        padding: 40px 20px 20px;
        margin-top:20px;
        font-size: 16px;
        font-weight:400;
        font-family: 微软雅黑;
        background: #f8f8f8;
        border-radius: 5px
    }
    .details .rooms{
        margin-top:30px; 
        border-bottom: 1px solid #ddd;
        width: 100%;
        height: 150px;
        display: flex;
        
    }
    .details .rooms .room{
        border: 1px solid #ddd;
        border-radius: 5px;
        width: 100px;
        height: 80px;
        margin-right:20px;
        padding: 15px;
    }
    .details .rooms .room div{
        margin-bottom:5px;
    }
</style>
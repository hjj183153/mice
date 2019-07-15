<template>
    <div>
        <div class="images" style="display:none" v-viewer="{movable: false}">
            <img v-for="(src,i) of imgs" :src="src.HouseImg_md" :key="i">
        </div>
        
        <div class="nav">
            <user-header> </user-header>         
        </div>
        <div class="topimg">
            <div class="topleft" >
                <img :src="imgs[0].HouseImg_lg" @mouseover="imgLg" @mouseout="imgSm" @click="show" >
                <div class="imgshadow"></div>
            </div>
            <div class="topright">
                <div class="rightimg" v-for="(item,i) of imgs" :key="i" >
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
                    <div class="details" style="height:500px">
                        <div>
                            <span>北京</span><span class="dian">·</span><span>整套公寓</span>
                        </div>
                        <div style="font-size:32px">
                            <p>{{imgs[0].House_name}}</p>
                        </div>
                        <div>
                            <div></div>
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
            imgs:[{HouseImg_lg:""}],
            houseId:1,
            s:-1,
            changeBlack:0
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
                rightdate.style="position:fixed;top:80px;width:30%;right:150px"
            }else if(scrollTop>=3200){
                rightdate.style="position:absolute;top:2700px;width:80%;right:0px"
            }else{
                mainnav.style.position="";
                mainnav.style.borderBottom="0";
                ul.style.borderBottom="1px solid #ddd";
                main_main.style.marginTop="30px";
                share.style.position="absolute";
                save.style.position="absolute";
                share.style.right="140px";
                save.style.right="25px";
                rightdate.style="position:absolute;top:-30px;width:80%;right:0px"
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
            this.imgs=result.data.data;
            console.log(this.imgs)
        })
    },
    
}
</script>
<style  scoped>
    .nav{
        height: 80px;
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
        z-index: 10;
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
        width: 50%;
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
    .main_nav ul li a{
        color: #008489;
        font-family: 微软雅黑;
        font-size:14px;
        font-weight:bold; 
    }
    .main_nav ul li a.black{
        color: #000
    }
    .main_nav ul li a:hover{
        text-decoration:underline;
    }
    .main_main{
        width:1050px;
        margin: auto;
        margin-top:10px;
        display: flex;
        justify-content: space-between;
    }
    .main_main .mainleft{
        width: 50%
    }
    .main_main .mainright{
        width: 50%;
        position: relative;
    }
    .main_main .mainleft>div{
        border-bottom:1px solid #ddd;
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
        width:80%;
        height: 500px;
        border:1px solid #ddd;
        position: absolute;
        top:-30px;
        right: 0px;
    }
</style>
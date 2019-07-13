<template>
    <div>
        <div class="images" style="display:none" v-viewer="{movable: false}">
            <img v-for="(src,i) of imgs" :src="src.HouseImg_md" :key="i">
        </div>
        
        <div class="nav">
            <h1>导航</h1>
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
            <button class="share" >分享</button>
            <button class="save">保存</button>
            <button class="lookimg" @click="show">查看图片</button>
        </div>
        <div class="main">
            <div class="main_nav">
                <div class="ul">
                    <ul >
                        <li><a :class="{black:changeBlack==0}" href="#details" @click="toggle(0)">详情</a></li>
                        <li><div class="circle"></div>  <a  href="#speak" :class="{black:changeBlack==1}" @click="toggle(1)">评价</a> </li>
                        <li style="width:75px;"><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==2}" @click="toggle(2)">可定日期</a> </li>
                        <li><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==3}" @click="toggle(3)">位置</a> </li>
                        <li><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==4}" @click="toggle(4)">须知</a> </li>
                        <li><div class="circle"></div> <a href="javascript:;" :class="{black:changeBlack==5}" @click="toggle(5)">房东</a> </li>
                    </ul>
                </div>
            </div>
            <div class="main_main">
                <div class="mainleft">
                    <div id="details" style="height:500px">

                    </div>
                    <div class="speak" style="height:500px">
                        <h1 id="speak">评价</h1>

                    </div>
                    <div class="leftdate">


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
        imgLg(e){
            e.target.style.width="105%";
            //console.log(e.target)
            var shadow=e.target.parentElement
           // console.log(shadow);
            
            //this.s=c
            //console.log(this.s)
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
            var mainnav = document.querySelector('.main_nav')
            var ul = document.querySelector('.main_nav ul')
            //console.log(ul)
            if(scrollTop>380){
                mainnav.style.position="fixed";
                mainnav.style.borderBottom="1px solid #ddd";
                ul.style.borderBottom="0"
            }else{
                mainnav.style.position="";
                mainnav.style.borderBottom="0";
                ul.style.borderBottom="1px solid #ddd"
            }
        },
        toggle(b){
            this.changeBlack=b;
        }
    },
    mounted() {
      window.addEventListener('scroll', this.scroll);

    },
    created() {
        var url="details";
        var obj={house_id:this.houseId};
        this.axios.get(url,{params:obj}).then(result=>{
            //console.log(result.data.data)
            this.imgs=result.data.data;
        })
    },

}
</script>
<style  scoped>
    .nav{
        width: 100%;
        height: 80px;
        background: #ffffaa
    }
    .topimg{
        display: flex;
        justify-content: space-between;
        width: 100%;
        height:300px;
        position: relative;
        
    }
    .topimg img{
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
    }
    .share{
        right:140px;
        top:25px;
    }
    .save{
        right:25px;
         top:25px;
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
        background: #fff
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
        margin:left   
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
        margin-top: 51px;
    }
</style>
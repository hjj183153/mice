<template>
    <div class="div_bg" @click="blurbedroom()">
        <div class="div_body" style="padding-top:74px;">
            <div>
                <div class="div_title font_title1">
                    <p>您的房源可以住几位房客？</p>
                </div>
                <div class="font-title3">
                    <p>请确保您准备了足够的床位，让所有房客都能舒适入住。</p>
                </div>
                <div class="div_body3">
                    <div class="font-title4">
                        <p>最多容纳房客人数</p>
                    </div>
                    <div class="btn_add">
                        <div @click="people_count(-1)">
                            <span class="div_btn_add" id="people_reduce">
                                <svg viewBox="0 0 24 24" role="img" aria-label="subtract" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg>
                            </span>
                        </div>
                        <div id="people_count">
                            <span v-text="peoplecount">4</span>
                        </div>
                        <div  @click="people_count(1)">
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="add" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect></svg>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="div_body4" @click="blurbedroom()">
                    <p @click="loadMore1" class="font-title5">有几个卧室？</p>
                    <div class="div_bedroom">
                        <select @click.stop="bedroom()" name="bedroom" id="select_bedroom">
                            <!-- <option value="i" v-for="(bed,i)of bedrooms" :key="i" v-text="bed">111</option> -->
                            <option value="i">0间卧室</option>
                        </select>
                    </div>
                </div>
                <div class="div_body5">
                    <div>
                        <p class="font-title5">有几张床？</p>
                    </div> 
                    <div class="font-title4">                  
                        <p>床铺数量</p>
                    </div> 
                    <div class="btn_add" style="float:left" id="div_bed_count">
                        <div @click="bed_count(-1)" style="opacity:0.3;">
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="subtract" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg>
                            </span>
                        </div>
                        <div id="bed_count">
                            <span v-text="bedcount"></span>
                        </div>
                        <div  @click="bed_count(1)">
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="add" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect></svg>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="div_body6">
                    <h3>床型信息</h3>
                    <p class="font-title3" style="margin:10px 0 20px">
                        告知房客每个房间的床铺类型，有助于他们了解床型信息。
                    </p>
                </div>
                <div class="div_body7">
                    <div>
                        <p>合用空间</p>
                        <p class="font-title5" style="padding-top:2px;">0张床</p>
                    </div>
                    <div>
                        <div id="addbed" @click="btn_addbed" v-show="addbed=='true'">
                            添加床铺
                        </div>
                        <div id="addbed" v-show="addbed=='false'" style="font-weight:600">
                            完成
                        </div>
                    </div>
                </div>
                <div class="div_body8">
                    <div></div>
                </div>
                <div style="height:20px;"></div>
            </div>
            
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            Airbnb_House:{},
            bedrooms:[],
            bedcount:1,
            peoplecount:4,
            addbed:'false',
        }
    },
    props:{
        Airbnb_House:{default:""}
        },
     created(){
        this.loadMore1();
        
    },
    methods:{
        loadMore1(){
            for(var i=0;i<=50;i++){
                this.bedrooms[i]=`${i}间卧室`;
                
            }
            console.log(this.bedrooms);
        },
        bedroom(){
            var select_bedroom=document.getElementById("select_bedroom")
            var div_select_bedroom=select_bedroom.parentNode;
            console.log(div_select_bedroom)
            div_select_bedroom.style.border="1px solid #008489"
            select_bedroom.style.outline="none"
        },
        blurbedroom(){
            var select_bedroom=document.getElementById("select_bedroom")
            var div_select_bedroom=select_bedroom.parentNode;
            div_select_bedroom.style.border="0px solid transparent"
        },
        bed_count(n){
            var div_bed_count=document.getElementById("div_bed_count")
            var bed_reduce=div_bed_count.firstChild;
            let count=this.bedcount
            if(n==1){
                bed_reduce.style.opacity="1"
                count+=n;
            }
            if(n==-1&&count>2){
                count+=n;
            }else if(n==-1&&count==2){
                bed_reduce.style.opacity="0.3"
                count+=n;
            }
                this.bedcount=count;            
        },
        people_count(m){
            var people_reduce=document.getElementById("people_reduce")
            if(m==1){
                people_reduce.style.opacity="1"
                this.peoplecount+=m;
                console.log(this.peoplecount)
            }
            if(m==-1&&this.peoplecount>2){
                this.peoplecount+=m;
            }else if(m==-1&&this.peoplecount==2){
                people_reduce.style.opacity="0.3"
                this.peoplecount+=m;
            }                  
        },
        btn_addbed(){

        }
    },
    
    
}
</script>
<style scoped>
.div_bg{
    background: #f8f8f8;
}
.div_body{
    width:912px;
    margin: auto;
    font-size: 16px;
}
.div_body>div{
    width:60%;
    box-sizing: border-box;
    padding: 30px 30px 16px 30px;
    padding-bottom: 102px;
    background: #fff;
}
.div_title{
    padding: 32px 0 24px;
}
.font_title1{
    font-size:24px;
    font-weight: 800;
    line-height: 1.25em;
    color:#484848;
    padding: 32px 0 10px;
}
.font-title3{    
    font-weight: 400;
    line-height: 1.375em;
    color:rgb(72,72,72);
    margin-bottom: 32px;
}
.font-title4{
    font-weight: 600;
    width:40%;
    line-height: 1.375em;
    color:#484848;
    margin-bottom: 32px;
    float:left;
}
.div_body3:after{
    content:"";
    display: block;
    clear: both;
}
.div_body3>div:last-child{
    float:left;
}
.btn_add{
    width:60%;
}
.btn_add>div{
    float: left;
}
.div_btn_add{
    display: block;
    width: 32px;
    height: 32px;
    cursor: pointer;
    border-radius: 50%;
    border:1px solid rgb(0,132,137);
    position: relative;
}
.btn_add:after{
    content:"";
    display: block;
    clear: both;
}
.div_btn_add>svg{
    position: absolute;
    top:25%;
    left: 25%;
}
#people_count{
    width:15%;
    display: flex;
    justify-content: center;
}
#people_count>span{
    display: block;
    line-height: 36px;
    font-weight: 600;
    color:#484848;
}
.font-title5{
    color:#767676;
    padding: 9px 0 8px;
    font-size: 19px;
}
.div_bedroom{
    width: 320px;
    line-height: 24px;
    background: #fff;
    margin-bottom: 8px;
    border:0px solid transparent;
    border-radius: 2px;
    box-sizing:border-box;
}
#select_bedroom{
    height:46px;
    width: 100%;
    font-size:13.33px;
    font-family: Arial;
    font-weight: 400;
    padding: 11px 40px 11px 11px;
    color:#484848;
    border:1px solid #eee;
}
#bed_count{
    width: 15%;
    text-align: center;
    vertical-align: middle;
    height:34px;
}
#bed_count>span{
    display: block;
    margin:10px auto;
    font-weight: 600;
}
.div_body6{
    box-sizing: border-box;
    padding: 30px 0;
    text-align: left;
    clear: left;
}
.div_body6>h3{
    font-size:24px;
    font-weight: normal;
    color: #484848;
}
.div_body7{
    border-top:1px solid #dce0e0;
    border-bottom:1px solid #dce0e0;
    padding-top: 28px;
    padding-bottom : 28px;
    color: #484848;
}
.div_body7:after{
    content:"";
    display: block;
    clear: both;
}
.div_body7 p:first-child{
    font-size: 19px;
}
.div_body7 div:first-child{
    width:50%;
    float: left;
}
.div_body7>div:last-child{
    float: right;
    width:30%;
}
#addbed{
    float: right;
    font-size: 18px;
    font-weight: bold;
    background: #fff;
    border: 1px solid #c4c4c4;
    cursor:pointer;
    padding: 9px 27px;
    border-radius: 4px;
    line-height: 1.43;
    text-align: center;
    font-family: inherit;
}
</style>

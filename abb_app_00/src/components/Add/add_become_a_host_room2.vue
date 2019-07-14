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
                        <div>
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="subtract" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg>
                            </span>
                        </div>
                        <div id="people_count">
                            <span>4</span>
                        </div>
                        <div>
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
                        <p class="font-title4">床铺数量</p>
                    </div>                    
                    <div class="btn_add">
                        <div>
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="subtract" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg>
                            </span>
                        </div>
                        <div id="people_count">
                            <span>1</span>
                        </div>
                        <div>
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="add" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect></svg>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="div_body6">
                    <btn_bd_g :text="按钮"></btn_bd_g>
                </div>
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
    /* text-align: center;
    line-height: 32px; */
    position: relative;
}
.div_btn_add>svg{
     /* text-align: center;
    line-height: 32px; */
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

.div_body6{height:100px;}
</style>

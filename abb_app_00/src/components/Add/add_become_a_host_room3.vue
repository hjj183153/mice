<template>
<!-- 卫生间数量 -->
    <div class="div_bg">
        <div class="div_body" >
            <div>
                <div class="div_title font_title1">
                    <p>有几个卫生间？</p>
                </div>
                <div class="font-title3">
                    <p>没有淋浴区或浴缸的卫生间算半个卫生间。</p>
                </div>
                <div class="div_body1" style="margin-bottom:500px;">
                    <div class="text_addreduce">                  
                        <p>卫生间</p>
                    </div> 
                    <div class="btn_add">
                        <div @click="bed_count(-1)" id="btn_reduce">
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="subtract" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg>
                            </span>
                        </div>
                        <div class="count_addreduce">
                            <span v-text="count"></span>
                        </div>
                        <div  @click="bed_count(1)"  id="btn_add">
                            <span class="div_btn_add">
                                <svg viewBox="0 0 24 24" role="img" aria-label="add" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect></svg>
                            </span>
                        </div>
                    </div>
                </div>
                <!-- 底部固定悬浮 -->
                <div class="div_footer1" style="margin-left:-30px;">
                    <div>
                        <div class="div_margin">
                            <div style="height:0px;border:1px solid #dce0e0;width:487.2px;margin-bottom:20px;" ></div>
                            <div>
                                <svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 2.8em; width: 1em; display: block; fill: currentcolor;"><path d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z" fill-rule="evenodd"></path></svg>
                                <div class="a_footer1" @click="return1">返回</div>
                            </div>
                            <div>
                                <!-- <router-link :to="pageurl+?+add_page"> -->
                                <div class="next_btn" @click="submit">下一个</div>
                                <!-- </router-link> -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        
        </div>
    </div>
</template>
<script>
export default {
    data(){return{
        count:1,
        
    }},
    props:{
        Airbnb_House:{default:""},
         add_page:{default:""}
    },
    created(){
        this.loadMore();
    },
    methods:{
        loadMore(){
            // if(this.add_page>=2){
            //     this.Airbnb_House.House_restroom=0;
            // }  
        },
         submit(){          
                this.$router.push("/add_become_a_host_room/location")    
        },
        return1(){
            this.$router.push("/add_become_a_host_room/bedrooms")
        },

        bed_count(z){
            var btn_reduce=document.getElementById("btn_reduce")
            var btn_add=document.getElementById("btn_add")              
            if(z==1){
                if(this.count<8){
                   btn_reduce.style.opacity="1" 
                   this.count+=z;
                }else if(this.count==8){
                    btn_add.style.opacity="0.3"
                    this.count+=z;
                }
            }else{
                if(this.count>1){
                    this.count+=z;
                    btn_add.style.opacity="1"
                }else if(this.count==1){
                    this.count+=-0.5;
                }else if(this.count==0.5){
                    this.count+=-0.5;
                    btn_reduce.style.opacity="0.3"
                }              
            }
                console.log(this.count) 
                this.Airbnb_House.House_restroom=this.count   
                console.log(this.Airbnb_House.House_restroom);
        }
    }

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
    padding-top:74px;
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
.text_addreduce{
    font-weight: 600;
    width:40%;
    line-height: 1.375em;
    color:#484848;
    float:left;
    margin-top:10px;
}
.div_btn_add{
    float: left;
    width: 32px;
    height: 32px;
    cursor: pointer;
    border-radius: 50%;
    border:1px solid rgb(0,132,137);
    position: relative;
}
.btn_add{
    float:left;
    width: 60%;
}
.btn_add>div{
    float: left;
    width: 32px;
    height: 32px;
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
.count_addreduce{
    width:15% !important;
    text-align: center;
    vertical-align: middle;
    height:34px;
}
.count_addreduce>span{
    display: block;
    margin:7px auto;
    font-weight: 600;
}
.div_footer1{
    height:102px;
    width: 60%;
    z-index: 100;
    position: fixed;
    bottom:0px;
    background: #f8f8f8;
}
.div_footer1>div{
    width: 912px;
    height:82px;
    box-sizing: border-box;
    margin: 0px auto !important;
}
.div_footer1>div>div{
    background: #fff;
    width: 547.2px;
    padding: 0px 30px 20px;
    height:82px;
}
.div_footer1>div>div div:first-child{
    float: right;
}
.div_footer1>div>div svg{
    color:#008489;
    float: left;
    padding:13px 0; 
}
.a_footer1{
    display: block;
    float: left;
    color:#008489;    
    font-weight: bold;
    padding:10px 7px;  
}
.a_footer1:hover{
    text-decoration: underline;
}
.next_btn{
    display: block;
    float: right;
    height:48px;
    width: 96px;
    padding: 12px 22px;
    box-sizing: border-box;
    background: #008489;
    border-radius: 5%;
    font-size: 16px;
    font-weight: 600;
    color:#fff;
}
</style>



<template>
    <div>
        <!-- 头部固定悬浮 -->
        <div class="div_header1">
            <div>
                <svg viewBox="0 0 1000 1000" role="img" aria-label="房源" focusable="false" style="height: 32px; width: 32px; display: block; fill: currentcolor;">
                    <path d="m499.3 736.7c-51-64-81-120.1-91-168.1-10-39-6-70 11-93 18-27 45-40 80-40s62 13 80 40c17 23 21 54 11 93-11 49-41 105-91 168.1zm362.2 43c-7 47-39 86-83 105-85 37-169.1-22-241.1-102 119.1-149.1 141.1-265.1 90-340.2-30-43-73-64-128.1-64-111 0-172.1 94-148.1 203.1 14 59 51 126.1 110 201.1-37 41-72 70-103 88-24 13-47 21-69 23-101 15-180.1-83-144.1-184.1 5-13 15-37 32-74l1-2c55-120.1 122.1-256.1 199.1-407.2l2-5 22-42c17-31 24-45 51-62 13-8 29-12 47-12 36 0 64 21 76 38 6 9 13 21 22 36l21 41 3 6c77 151.1 144.1 287.1 199.1 407.2l1 1 20 46 12 29c9.2 23.1 11.2 46.1 8.2 70.1zm46-90.1c-7-22-19-48-34-79v-1c-71-151.1-137.1-287.1-200.1-409.2l-4-6c-45-92-77-147.1-170.1-147.1-92 0-131.1 64-171.1 147.1l-3 6c-63 122.1-129.1 258.1-200.1 409.2v2l-21 46c-8 19-12 29-13 32-51 140.1 54 263.1 181.1 263.1 1 0 5 0 10-1h14c66-8 134.1-50 203.1-125.1 69 75 137.1 117.1 203.1 125.1h14c5 1 9 1 10 1 127.1.1 232.1-123 181.1-263.1z">                        
                    </path>
                </svg>
            </div>
            <div>
                <h3>步骤1： 先填写基本信息</h3>
            </div>
        </div>
        <!-- 头部进度条 -->
        <div class="div_header2">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>

        </div>
        <!-- body -->
        <div>
        <add_become_a_host_room1 :Airbnb_House="Airbnb_House"></add_become_a_host_room1>     
        </div>
        <!-- 底部固定悬浮 -->
        <div class="div_footer1">
            <div>
                <div>
                    <div>
                        <svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><path d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z" fill-rule="evenodd"></path></svg>
                        <a href="" class="a_footer1">返回</a>
                    </div>
                    <div>
                        <a href="#" class="next_btn" @click="submit">下一个</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
//引入子组件
import  add_become_a_host_room1 from './../components/Add/add_become_a_host_room1'
export default {
    data(){
        return{
            Airbnb_House:{}
    }},
    methods:{
        submit(){
            console.log(this.Airbnb_House)

        }
    },
    components:{
        add_become_a_host_room1
    }
}

</script>

<style scoped>
.div_header1{
    height:64px;
    width: 100%;
    line-height: 64px;
    text-align: left;
    box-sizing: border-box;
    z-index: 100;
    position: fixed;
    background:#fff; 
}
.div_header1 div:first-child{
    float: left;
    color:#008489;
    padding-left: 16px;
    padding-top:15px; 
    cursor: pointer;
}
.div_header1 div:first-child svg{   
    padding: 0px 0px 0px 0px;
}
.div_header1 div:last-child{
    float: left;
    padding-left: 20px;
}

.div_header1 div:last-child h3{
    color:#484848;
    /* font-family: "Circular","-apple-system","BlinkMacSystemFont","Roboto","Helvetica Neue","sans-serif"; */
    font-weight: 400;
}
.div_header2{
    height:10px;
    width: 100%;
    background: #edefed;  
    z-index: 100;  
    position: fixed;
    top:64px;
}
.div_header2:after{
	content:"";
	display:block;
	clear:both;
}
.div_header2>div{
    border-top-right-radius: 100px;
    border-bottom-right-radius: 100px;
    height:10px;
}
.div_header2>div:first-child{
    background-color: #008489;
    width: 3%;
    float:left;
}
.div_header2>div:first-child~div{
    /* background-color: #008489; */
    width: 14.28571428571429%;
    float:left;
}
.div_header2>div:last-child{
    border-top-right-radius: none;
    border-bottom-right-radius: none;
}
.div_footer1{
    height:82px;
    width: 100%;
    z-index: 100;
    position: fixed;
    bottom:0px;
    background: #f8f8f8;
}
.div_footer1>div{
    width: 912px;
    height:82px;
    /* padding: 20px 0; */
    box-sizing: border-box;
    margin: 0px auto !important;
}
.div_footer1>div>div{
    background: #fff;
    width: 547.2px;
    border-top:1px solid #ddd;
    padding: 20px 0;
    
}
.div_footer1>div>div div:first-child{
    float: left;
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
    /* font-family: var("--font-font_family", "Circular","-apple-system","BlinkMacSystemFont","Roboto","Helvetica Neue","sans-serif"); */
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

<template>
    <div class="div_bg">
        <div class="div_body" >
            <div>
                <div class="div_title font_title1">
                    <p>您的房源位于什么地方？</p>
                </div>
                <div class="font-title3">
                    <p>房客只有在确认预订后才会获知确切的房源地址。</p>
                </div>
                <div class="div_body1">
                    <p class="select_title">省(直辖市、自治区)</p>
                    <select name="sad" id="asd" v-model="cityid" @change="district_select(cityid)">
                        <option value="-1">请选择</option>
                        <option :value="i+1" v-for="(c,i) of city" :key="i" v-text="c.City_name"></option>
                    </select>
                </div>
                <div class="div_body2">
                    <p  class="select_title">市(区)</p>
                    <select name="sasdd" id="asdsd">
                        <option value="0">请选择</option>
                        <!-- <option value="d.District_id" v-for="(d,i) of district" :key="i" v-text="d.District_name"></option> -->
                    </select>
                </div>
            </div>
            

        
        </div>
    </div>
</template>
<script>
export default {
    data(){return{
        city:{},
        district:{District_name:"",District_id:""},
        cityid:-1,
    }},
    props:{
        Airbnb_House:{default:""}
    },
    created(){
        this.loadMore()
    },
    
    methods:{
        loadMore(){
            this.axios.get("http://127.0.0.1:3000/add/City").then(result=>{                
                console.log(result.data)
                this.city=result.data;                
            })
                  
            
        },
        district_select(n){
            console.log(n);
            this.axios.get("http://127.0.0.1:3000/add/district",{params:{"id":n}}).then(result=>{                
                console.log(result.data)
                this.district=result.data; 
            })         
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
.select_title{
    padding: 9px 0 8px;
    font-size:19px;
    color:#484848;
}
select{
    font-size:19px;
    padding:19px;
    color:#484848;
    border:1px solid #aaa;
    border-radius:2px;
    width:80%;
}

</style>
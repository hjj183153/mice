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
                <div class="div_body2" v-show="cityid!=-1">
                    <p  class="select_title">市(区)</p>
                    <select name="sasdd" id="asdsd" v-model="districtid" @change="district_change()">
                        <option value="-1">请选择</option>
                        <option :value="d.District_id" v-for="(d,i) of district" :key="i" v-text="d.District_name"></option>
                    </select>
                </div>
                <div class="div_body3">
                    <p class="select_title">详细地址（无需再写省市）</p>
                    <div>
                        <input type="text" class="input_text" placeholder="例如：崂山国际花园1号楼">
                    </div>
                </div>
                <div class="div_body4">
                    <p class="select_title">门牌号（仅告知预订的房客）</p>
                    <div>
                        <input type="text" class="input_text" placeholder="例如：1单元1202室">
                    </div>
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
        districtid:-1,
    }},
    props:{
        Airbnb_House:{House_City_id:-1,House_District_id:-1}
    },
    created(){
        this.loadMore()
    },
    
    methods:{
        loadMore(){
            this.axios.get("http://127.0.0.1:3000/add/City").then(result=>{                
                //console.log(result.data)
                this.city=result.data;                
            })                              
        },
        district_select(n){
            //console.log(n);
            this.axios.get("http://127.0.0.1:3000/add/district",{params:{"id":n}}).then(result=>{                
                //console.log(result.data)
                this.district=result.data; 
            })         
                this.Airbnb_House.House_City_id=this.cityid;
                //console.log(this.Airbnb_House.House_City_id)            
        },
        district_change(){
                this.Airbnb_House.House_District_id=this.districtid;
                //console.log(this.Airbnb_House.House_District_id)
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
    width:100%;
}
.input_text{
    background: #fff5f2;
    font-size: 18px;
    line-height: 27px;
    color:#484848;
    padding: 15px;
    width: 100%;
    border-radius: 2px;
    font-weight: 400;
    font-family: Arial;
    box-sizing: border-box;
}
.div_body3>div{
    border:1px solid #f8e5df;
}
.div_body4>div{
    border:1px solid #f8e5df;
}
</style>
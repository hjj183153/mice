<template>
    <div>
        <div class="topimg">
            <div class="topleft">
                <img :src="imgs[0].HouseImg_lg" alt="">
            </div>
            <div class="topright">
                <div class="rightimg" v-for="(item,i) of imgs" :key="i">
                    <img :src="item.HouseImg_md" alt="">
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            imgs:[{HouseImg_lg:""}]
        }
    },
    methods: {

    },
    created() {
        var url="details";
        this.axios.get(url).then(result=>{
            //console.log(result.data.data)
            this.imgs=result.data.data;
        })
    },

}
</script>
<style  scoped>
    .topimg{
        margin-top:80px;
        display: flex;
        justify-content: space-between;
        width: 100%;
        height:300px;
        overflow: hidden;
        border-bottom: 1px solid #000
    }
    .topimg img{
        width: 100%;
    }
    .topleft{
        background: #ff0;
        width:50%;
        border:1px solid #000;
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
        border-bottom: 1px solid #000
    }
</style>
<template>
    <!-- 房源名称 -->
    <div class="div_bg" style="background: #f8f8f8;">
            <div class="div_bgfff"></div>
        <div class="div_body">
            <div>
                <div class="div_title font_title1">
                    <p>为您的房源起个名字</p>
                </div>
                <div class="font-title3">
                    <p>为房源起一个能突出其独特之处的标题，吸引更多房客。</p>
                </div>
                <div class="div_body1">
                    <input type="text" maxlength="50" placeholder="房源名称" v-model="House_name" @change="House_namechange"
                        @keyup="housenamecount">
                </div>
                <div class="font-title3" style="margin-top:5px;">
                    <p v-text="`剩余${namecount}个字符`"></p>
                </div>
                <div class="font-title3" style="margin-top:40px;">
                    <p>好的房源标题可以增加房客的点击率，房屋名称可包含地标、位置、附近交通、房屋特色等信息。</p>
                </div>
                <!-- 底部固定悬浮 -->
                <div class="div_footer1">
                    <div>
                        <div class="div_margin">
                            <div></div>
                            <div>
                                <div class="div_return_submit">
                                    <div class="div_div_svg_return1">
                                        <svg viewBox="0 0 18 18" role="presentation" aria-hidden="true"
                                            focusable="false"
                                            style="height: 2.8em; width: 1em; display: block; fill: currentcolor;">
                                            <path
                                                d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z"
                                                fill-rule="evenodd"></path>
                                        </svg>
                                    </div>
                                    <div class="return_btn" @click="return1">返回</div>
                                    <div class="next_btn" @click="submit" style="padding: 12px 32px;">完成</div>
                                </div>
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
        data() {
            return {
                House_name: "",
                namecount: 50,
                housingResources_Type:{},
                Rent_Type:{}
            }
        },
        methods: {
            submit() {
                localStorage.setItem("House_name",this.House_name)
                this.axios.get("http://127.0.0.1:3000/add/housingResources_Type").then(result => {
                    this.housingResources_Type = result.data;
                    console.log(this.housingResources_Type)
                })
                this.axios.get("http://127.0.0.1:3000/add/Rent_Type").then(result => {
                    this.Rent_Type = result.data;
                    console.log(this.Rent_Type)
                })   
                console.log(localStorage.getItem("House_type"))
                console.log(localStorage.getItem("House_Building"))
                console.log(localStorage.getItem("House_people_num"))
                console.log(localStorage.getItem("House_bednum"))
                console.log(localStorage.getItem("bed1count"))
                console.log(localStorage.getItem("bed2count"))
                console.log(localStorage.getItem("bed3count"))
                console.log(localStorage.getItem("bed4count"))
                console.log(localStorage.getItem("bed5count"))
                console.log(localStorage.getItem("House_restroom"))
                console.log(localStorage.getItem("House_City_id"))
                console.log(localStorage.getItem("House_District_id"))
                console.log(localStorage.getItem("House_address"))
                console.log(localStorage.getItem("House_number"))
                console.log(localStorage.getItem("House_name"))



                 this.$router.push("/add_end")
            },
            return1() {
                this.$router.push("/add_become_a_host_room/photos")
            },

            House_namechange() {
                this.Airbnb_House.House_name = this.House_name;
            },
            housenamecount() {
                this.namecount = 50 - this.House_name.length
            }
        },

        // computed:{
        //     namecount(){            
        //         this.namecount=50-this.House_name.length
        // 				return this.namecount
        //             }
        // },
    }
</script>
<style scoped>
    .div_bg {
        background: #f8f8f8;
    }

    .div_body {
        width: 912px;
        margin: auto;
        font-size: 16px;
        padding-top: 74px;
    }

    .div_body>div {
        width: 60%;
        box-sizing: border-box;
        padding: 30px 30px 16px 30px;
        padding-bottom: 102px;
        background: #fff;
    }

    .div_title {
        padding: 32px 0 24px;
    }

    .font_title1 {
        font-size: 24px;
        font-weight: 800;
        line-height: 1.25em;
        color: #484848;
        padding: 32px 0 10px;
    }

    .font-title3 {
        font-weight: 400;
        line-height: 1.375em;
        color: rgb(72, 72, 72);
        margin-bottom: 32px;
    }

    .div_body1>input {
        padding: 20px;
        width: 100%;
        border: 1px solid #dce0e0;
        border-radius: 3px;
        box-sizing: border-box;
        color: #484848;
        font-size: 100%;
    }

  
</style>
<template>
    <div>
        <!-- 用户个人信息 -->
        <div>
            <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
                <el-submenu index="1">
                    <template slot="title">人民币-￥</template>
                    <el-menu-item index="1-1">美元-$</el-menu-item>
                    <el-menu-item index="1-2">日元-￥</el-menu-item>
                    <el-menu-item index="1-3">英镑-￥</el-menu-item>
                    <el-menu-item index="1-3">英镑-￥</el-menu-item>
                    <el-menu-item index="1-3">英镑-￥</el-menu-item>
                    <el-menu-item index="1-3">英镑-￥</el-menu-item>
                </el-submenu>
                <el-submenu index="2">
                    <template slot="title">手机端</template>
                    <el-menu-item index="2-1">选项1</el-menu-item>
                </el-submenu>
                <el-submenu index="3">
                    <template slot="title">成为房东/体验达人</template>
                    <el-menu-item index="3-1">选项1</el-menu-item>
                    <el-menu-item index="3-2">选项2</el-menu-item>
                    <el-menu-item index="3-3">选项3</el-menu-item>
                </el-submenu>
                <el-menu-item index="4">
                    <a href="#" target="_blank">故事</a>
                </el-menu-item>
                <el-menu-item index="5">
                    <a href="#" target="_blank">心愿单</a>
                </el-menu-item>
                <el-menu-item index="6">
                    <a href="#" target="_blank">行程</a>
                </el-menu-item>
                <el-menu-item index="7">
                    <a href="#" target="_blank">房源订单中心</a>
                </el-menu-item>
                <el-menu-item index="8">
                    <a href="#" target="_blank">消息</a>
                </el-menu-item>
                <el-menu-item index="9">
                    <a href="#" target="_blank">帮助</a>
                </el-menu-item>
                <el-menu-item index="10">
                    <a href="javascript:;">
                        <img src="../assets/logo.png" alt="" @click="user_bn">
                    </a>
                    <el-card class="box-card" v-show="show">
                        <div v-for="(elem,i) of list" :key="i" class="text item">
                            <a :href='elem.href'>{{elem.msg}}</a>
                        </div>
                    </el-card>
                </el-menu-item>
            </el-menu>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            activeIndex: '1',
            list:[
                {href:'javascript:;',msg:'个人资料'},
                {href:'javascript:;',msg:'账号'},
                {href:'javascript:;',msg:'礼券中心'},
                {href:'javascript:;',msg:'邀请好友'},
                {href:'javascript:;',msg:'我的旅行指南'},
                {href:'javascript:;',msg:'商务爱彼迎'},
                {href:'javascript:;',msg:'退出'}
            ],
            show:false
        }
    },
    methods: {
        handleSelect(key, keyPath) {
            console.log(key, keyPath);
        },
        user_bn(){
            this.show=!this.show;
        }
    },
}
</script>
<style scoped>
    .el-menu--horizontal:last-child{
        position: relative;
    }
    .el-menu--horizontal:last-child a img{
        width: 44px;
        height: 46px;
    }
    .el-card.is-always-shadow, .el-card.is-hover-shadow:focus, .el-card.is-hover-shadow {
        width: 282px;
        height: 353.8px;
        position: absolute;
        left: -198px;
        top: 61px;
        z-index: 100;
    }
    .el-menu-item * {
        width: 242px;
        height: 45px;
        box-sizing: border-box;
        font-size: 14px;
        font-weight: bold;
        line-height: 45px;
        border-bottom: 1px solid rgba(191, 191, 191, 0.2);
    }
    .el-menu-item * :hover{
        border-bottom: 1px solid #000;
    }
    .el-menu--horizontal>.el-menu-item a, .el-menu--horizontal>.el-menu-item a,.el-menu--horizontal:last-child a img[data-v-e8694536]{
        border: none;
    }
</style>
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
                    <a href="#" target="_blank">
                        <img src="../assets/logo.png" alt="">
                    </a>
                    <el-card class="box-card">
                        <div v-for="i in list" :key="i" class="text item">
                            {{i}}
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
            list:['个人资料','账号','礼券中心','邀请好友','我的旅行指南','商务爱彼迎','退出']
        }
    },
    methods: {
        handleSelect(key, keyPath) {
            console.log(key, keyPath);
        },
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
</style>
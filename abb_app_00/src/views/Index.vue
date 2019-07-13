<template>
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
                <a href="#" target="_blank">帮助</a>
            </el-menu-item>
            <el-menu-item index="6">
                <a href="#" target="_blank">注册</a>
            </el-menu-item>
            <el-menu-item index="7">
                <a href="#" target="_blank">登录</a>
            </el-menu-item>
        </el-menu>
    </div>
</template>
<script>
export default {
    data(){
        return {
        activeIndex: '1'
        }
    },
   methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
}
</script>
<style scoped>
    
</style>
<template>
    <div class="my-footer-container">
        <hr>
        <div class="my-footer">
            <div>
                    <h3>爱彼迎</h3>
                    <ul>
                        <li>
                            <a href="javascript:;">工作机会</a>
                        </li>
                        <li>
                            <a href="javascript:;">新闻</a>
                        </li>
                        <li>
                            <a href="javascript:;">政策</a>
                        </li>
                        <li>
                            <a href="javascript:;">帮助</a>
                        </li>
                        <li>
                            <a href="javascript:;">多元化与归属感</a>
                        </li>
                        <li>
                            <a href="javascirpt:;">无障碍设施</a>
                            <span class="my-anniu">
                                <span>新推出</span>
                            </span>
                        </li>
                        
                    </ul>
            </div>
            <div>
                    <h3>发现</h3>
                    <ul>
                        <li>
                            <a href="javascript:;">信任与安全</a>
                        </li>
                        <li>
                            <a href="javascript:;">旅行基金</a>
                        </li>
                        <li>
                            <a href="javascript:;">爱彼迎公民</a>
                        </li>
                        <li>
                            <a href="javascript:;">商务差旅</a>
                        </li>
                        <li>
                            <a href="javascript:;">旅游指南</a>
                        </li>
                        <li>
                            <a href="javascirpt:;">爱彼迎杂志</a>
                        </li>
                        
                    </ul>
            </div>
            <div>
                    <h3>出租</h3>
                    <ul>
                        <li>
                            <a href="javascript:;">为什么要出租?</a>
                        </li>
                        <li>
                            <a href="javascript:;">待客之道</a>
                        </li>
                        <li>
                            <a href="javascript:;">房东义务</a>
                        </li>
                        <li>
                            <a href="javascript:;">开展体验</a>
                            <span class="my-anniu">
                                    <span>新推出</span>
                                </span>
                        </li>
                        <li>
                            <a href="javascript:;">Open Homes</a>
                        </li>                       
                    </ul>
            </div>
            <div>
                <h3> </h3>
                    <ul>
                        <li>
                            <a href="javascript:;">条款</a>
                        </li>
                        <li>
                            <a href="javascript:;">隐私政策</a>
                        </li>
                        <li>
                            <a href="javascript:;">网站地图</a>
                        </li>
                    </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {}
    }
}
</script>
<style scoped>
/*****底部容器*****/
.my-footer-container{
   margin-top: 25px;

}
/*****底部容器*****/
/*****弹性布局*****/
.my-footer{
    width: 1000px;
    display:flex;
    justify-content: space-around;
    margin:0 auto;
    margin-top:20px;
    padding-bottom: 5px;
    margin-bottom: 5px;
    border-bottom: 1px solid #eee

}
div.my-footer>div>h3{
    color:#010000;font-weight: bold!important;
    font:12px Circular, PingFang-SC, "Hiragino Sans GB", 微软雅黑, "Microsoft YaHei", "Heiti SC" !important;
    margin-bottom: 15px;
}
.my-footer ul li a{
    color:#787878;
    font-weight: bolder!important;
    font:12px var(--font-font_family, Circular, "PingFang-SC", "Hiragino Sans GB", "微软雅黑", "Microsoft YaHei", "Heiti SC") !important
}
.my-anniu{
    display: inline-block;
    padding-left:5px;
    padding-right:5px;
    margin-left:5px;
    background: rgb(0, 106, 112);
    border-radius: 5px;
    color: #fff;
    font:10px Circular, PingFang-SC, "Hiragino Sans GB", 微软雅黑, "Microsoft YaHei", "Heiti SC" ;
}
</style>
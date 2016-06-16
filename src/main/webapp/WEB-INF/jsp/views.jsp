<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp"></jsp:include>
<title>艾吉贝2015新款多层收纳真皮单肩斜挎包女包头层牛皮斜跨小包包女</title>
<link rel="stylesheet" href="css/productDetail.css?v=01291">
<script charset="utf-8" src="js/TouchSlide.js?v=01291"></script>
<script charset="utf-8" src="js/prodDetail.js?v=01291"></script>
<style type="text/css">
.details_con li .tb-out-of-stock{
border: 1px dashed #bbb;
color:#bbb;
cursor: not-allowed;
}
.no-selected{
background: #ffe8e8 none repeat scroll 0 0;
border: 2px solid #be0106;
margin: -1px;
}
</style>
</head>

<body>

<div class="fanhui_cou">
	<div class="fanhui_1"></div>
	<div class="fanhui_ding">顶部</div>
</div>

<header class="header">
	<div class="fix_nav">
		<div style="max-width:768px;margin:0 auto;background:#000;position: relative;">
			<a class="nav-left back-icon" href="javascript:history.back();">返回</a>
			<div class="tit">商品详细</div>
		</div>
	</div>
</header>
<input type="hidden" id="prodId" value="663"/>
<input id="currSkuId" value="" type="hidden"/>
<div class="container">
    <div class="row white-bg">
        <div id="slide"> 
            <div class="hd">
                <ul>
                	<li>1</li></ul>
            </div>
            <div class="bd">
                <div class="tempWrap" style="overflow:hidden; position:relative;">
                	<ul style="width: 3072px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition-duration: 200ms; transform: translateX(-768px);">
                        <li style="display: table-cell; vertical-align: middle; max-width: 768px;">
                        		<a href="#"><img style="max-width:100vw;max-height:80vw;margin:auto;" src="img/53698282-4ff7-4daa-bb4c-4bcaa14b00fc.jpg"></a>
                        	</li>
                        </ul>
               </div>
            </div>
        </div>
    </div>
    <div class="row gary-bg">
         <div class="white-bg p10 details_con">
         <h1 class="item-name" id="prodName">艾吉贝2015新款多层收纳真皮单肩斜挎包女包头层牛皮斜跨小包包女</h1>
         <ul>
			<li>
				<label>商城价格：</label>
				<span class="price">¥<span class="price" id="prodCash">179.00</span></span>
			</li>
<li id="choose_0" index="0" >
					<label id="propName" propname="颜色">颜色：</label>
					<dl>
						<dd key="208:635" valId="635" >黑色<span></span></dd>
								<dd class="check" key="208:636" valId="636" >红色<span></span></dd>
								<dd key="208:661" valId="661" >黄色<span></span></dd>
								</dl>
				</li>
			  <li>
				<label>数量：</label>
				<div class="count_div" style="height: 30px; width: 130px;">
					<a href="javascript:void(0);" class="minus" ></a>
					  <input type="text" class="count" value="1" id="prodCount" readonly="readonly"/>
					<a href="javascript:void(0);" class="add" ></a>
				</div>
			</li>
			</ul>
		</div>
        <div id="goodsContent" class="goods-content white-bg">
			
            <div class="hd hd_fav">
                <ul>
                    <li class="on">图文详情</li>
                    <li class="">规格参数</li>
                    <li class="">评价(0)</li>
                </ul>
            </div>
			
            <div class="tempWrap" style="overflow:hidden; position:relative;">
            <div style="width: 2304px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition-duration: 200ms; transform: translateX(0px);" class="bd">
                <ul style="display: table-cell; vertical-align: top; max-width: 768px;width: 100%;" class="property">
                    <div class="prop-area" style="min-height:300px;overflow: hidden;">
                    	<img src="img/8a9740c7-7f8e-4f20-ba64-1e90dd596ebe.jpg" alt="" /></div>
                </ul>
                <ul class="txt-imgs" style="display: table-cell; vertical-align: top; max-width: 768px;width: 100%;">
                	<div class="desc-area" style="padding: 0px 10px 0 10px;">
	                <li style="height:30px;">
	                	<div id="ajax_loading" style="margin: 10px  auto 15px;text-align:center;"> <img src="images/loading.gif" style="width: auto; display: block;  margin: auto;"></div>
	                </li>
	                </div>
                </ul>
                <ul style="display: table-cell; vertical-align: top; max-width: 768px;width: 100%;" class="appraise" rel="1" status="1">
                	<div style="height:30px;">
	                	<div id="ajax_loading" style="margin: 10px  auto 15px;text-align:center;"> <img src="images/loading.gif" style="width: auto; display: block;  margin: auto;"></div>
	                </div>
                     <div class="wap_page" style="display: none;" onclick="next_comments(this)"><span>下一页</span></div>
                </ul>
            </div>
            </div>
        </div>
    </div>
</div>

<div class="fixed-foot">
	<div class="fixed_inner">
		<a class="btn-fav" href="javascript:void(0);" onclick="addInterest(this,'663');">
		<i class="i-fav"></i><span>收藏</span>
		</a>
		<a class="cart-wrap" href="/shopcart">
			<i class="i-cart"></i>
			<span>购物车</span>
			<span class="add-num" id="totalNum">0</span>
		</a>
		<div class="buy-btn-fix">
		    <a class="btn btn-info btn-cart"  onclick="addShopCart();" href="javascript:void(0);">加入购物车</a>
		    <a class="btn btn-danger btn-buy" onclick="buyNow();" href="javascript:void(0);">立即购买</a>
		</div>
	</div>
</div>

<div class="clear"></div>

<script type="text/javascript">
var contextPath = '';
var currProdId = '663';
var prodName= '艾吉贝2015新款多层收纳真皮单肩斜挎包女包头层牛皮斜跨小包包女';
var skuDtoList = eval('[{"amountDetail":{"cash":179,"num":1,"price":179,"promotionPrice":179,"totalAmount":179},"name":"艾吉贝2015新款多层收纳真皮单肩斜挎包女包头层牛皮斜跨小包包女","price":179,"properties":"208:636","skuId":1358,"status":1},{"amountDetail":{"cash":179,"num":1,"price":179,"promotionPrice":179,"totalAmount":179},"name":"艾吉贝2015新款多层收纳真皮单肩斜挎包女包头层牛皮斜跨小包包女","price":179,"properties":"208:661","skuId":1359,"status":1},{"amountDetail":{"cash":179,"num":1,"price":179,"promotionPrice":179,"totalAmount":179},"name":"艾吉贝2015新款多层收纳真皮单肩斜挎包女包头层牛皮斜跨小包包女","price":179,"properties":"208:635","skuId":1360,"status":1}]');
var propValueImgList = eval('[{"imgList":["img/d15bbf94-615d-4b11-9ed8-cb9e2365f12b.jpg","img/f77cb899-e3a5-4ecd-a5dc-af5e2037935f.jpg","img/30259b99-d6ce-44a8-acb8-d6a64278bc88.jpg","img/d2cd16e6-71f0-4c42-b57e-30e417e8a28f.jpg","img/2c06d677-b2ac-459e-8dd0-1c16437333fe.jpg"],"valueId":635},{"imgList":["img/ed971163-f1bf-45e8-b63a-50cf514df3e1.jpg","img/c8117d09-63bc-4e96-adce-89dc7d2017a3.jpg","img/30259b99-d6ce-44a8-acb8-d6a64278bc88.jpg","img/d2cd16e6-71f0-4c42-b57e-30e417e8a28f.jpg","img/01de5ef6-3763-4cfe-bda8-c412266e14c7.jpg"],"valueId":661},{"imgList":["img/53698282-4ff7-4daa-bb4c-4bcaa14b00fc.jpg","img/d2cd16e6-71f0-4c42-b57e-30e417e8a28f.jpg","img/78743cc9-5d29-4289-b0a1-0d5df79e63c7.jpg","img/1c9cc5cf-4ef5-4474-b4ae-7b2f1efa88f0.jpg","img/01de5ef6-3763-4cfe-bda8-c412266e14c7.jpg"],"valueId":636}]');
var allSelected = true;
var prodLessMsg = '商品缺货';
var failedOwnerMsg = '您是商品主人, 不能购买此商品。';
var failedBasketMaxMsg = '已达到购物车最大数量, 不能购买此商品。';
var failedBasketErrorMsg = '购物车错误, 不能购买此商品。';
var photoPath = "";
var distUserName = '';

//插件：图片轮播
TouchSlide({
	slideCell:"#slide",
	titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
	mainCell:".bd ul",
	effect:"left",
	autoPlay:false,//自动播放
	autoPage:true, //自动分页
	switchLoad:"_src" //切换加载，真实图片路径为"_src"
});

var scrollTop = 0;
TouchSlide({
	slideCell:"#goodsContent",
	startFun:function(i,c){
		var prodId = $("#prodId").val();
		if(i==1){//规格参数
			var th = jQuery("#goodsContent .bd ul").eq(i);
			if(!th.hasClass('hadGoodsContent')){				
				queryParameter(th,prodId);
			}

			if($(window).scrollTop() > scrollTop){
				$(window).scrollTop(scrollTop);
			}
				
		}else if(i==2){//评价
			var th = jQuery("#goodsContent .bd ul").eq(i);

			if(!th.hasClass('hadConments')){
				queryProdComment(th,prodId);
			}

			if($(window).scrollTop() > scrollTop){
				$(window).scrollTop(scrollTop);
			}
		}else{
			if(scrollTop == 0){
				$(window).scrollTop(scrollTop);
				var hd_fav = $('.hd_fav');
				var position = hd_fav.position();
				
				scrollTop = position.top;
			}
		}
	},
});

</script>
</body>
</html>
    
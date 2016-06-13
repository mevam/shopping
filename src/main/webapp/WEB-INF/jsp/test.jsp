<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="bootstrap.jsp"/>
<jsp:include page="titlemenu.jsp"/>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Keywords" content="关键词一，关键词二">
  <meta name="Description" content="网站描述内容">
  <title>Document</title>

<style type="text/css">
*{margin:0px; padding:0px;}
body{background:url("images/bg.jpg");}
#qq{width:600px;/*宽*/height:170px;/*高*/background:#fff;/*背景颜色*/
	margin:50px auto 30px; border-radius:5px;/*Html5 圆角*/}
#qq p{font-size:12px; color:#666; font-family:"微软雅黑";
		line-height:45px; text-indent:20px;}
#qq .message{width:560px; height:70px;margin:0px auto; outline:none;
			border:1px solid #ddd; /*粗细 风格 颜色*/}
#qq .But{width:560px;height:35px;margin:15px auto 0px; position:relative;/*相对，参考对象*/}
#qq .But img.bq{float:left;/*左浮动*/}
#qq .But span.submit{width:80px;height:30px; background:#ff8140;					display:block; float:right;/*右浮动*/								line-height:30px;border-radius:5px;								cursor:pointer;/*手指*/color:#fff;font-size:12px;					text-align:center;font-family:"微软雅黑";}

/*face begin*/
#qq .But .face{width:390px; height:160px; background:#fff; padding:10px;
				border:1px solid #ddd; box-shadow:2px 2px 3px #666;
				position:absolute;/*绝对定位*/ top:21px; left:15px;
				display:none;/*隐藏*/}
#qq .But .face ul li{width:22px;height:22px; 
				list-style-type:none;/*去掉圆点*/ float:left;
				margin:2px; cursor:pointer;}

/*msgCon begin*/
.msgCon{width:600px;height:500px; margin:0px auto;}
.msgCon .msgBox{ background:#fff;
				padding:10px; margin-top:20px;}
.msgCon .msgBox dl{height:60px; border-bottom:1px dotted #ddd;}
.msgCon .msgBox dl dt{width:50px; height:50px;float:left;}
.msgCon .msgBox dl dt img{border-radius:25px;}
.msgCon .msgBox dl dd{width:500px; height:50px;  line-height:50px;float:right; font-size:16px;font-family:"微软雅黑";}
.msgCon .msgBox .msgTxt{font-size:12px; color:#666; line-height:25px;}
</style>


 </head>
 <body>

<div id="qq">
	<p>有什么新鲜事想告诉大家?</p>
	<div class="message" contentEditable='true'></div>

	<div class="But">
		<img src="images/images/bba_thumb.gif" class='bq'/>
		<span class='submit'>发表</span>
		<!--face begin-->
		<div class="face">
			<ul>
				<li><img src="images/images/zz2_thumb.gif" title="[织]" ></li>
				<li><img src="images/images/horse2_thumb.gif" title="神马]"></li>
				<li><img src="images/images/fuyun_thumb.gif" title="[浮云]"></li>
				<li><img src="images/images/geili_thumb.gif" title="[给力]"></li>
				<li><img src="images/images/wg_thumb.gif" title="[围观]"></li>
				<li><img src="images/images/vw_thumb.gif" title="[威武]"></li>
				<li><img src="images/images/panda_thumb.gif" title="[熊猫]"></li>
				<li><img src="images/images/rabbit_thumb.gif" title="兔子]"></li>
				<li><img src="images/images/otm_thumb.gif" title="[奥特曼]"></li>
				<li><img src="images/images/j_thumb.gif" title="[囧]"></li>
				<li><img src="images/images/hufen_thumb.gif" title="[互粉]"></li>
				<li><img src="images/images/liwu_thumb.gif" title="[礼物]"></li>
				<li><img src="images/images/smilea_thumb.gif" title="呵呵]"></li>
				<li><img src="images/images/tootha_thumb.gif" title="嘻嘻]"></li>
				<li><img src="images/images/laugh.gif" title="[哈哈]"></li>
				<li><img src="images/images/tza_thumb.gif" title="[可爱]"></li>
				<li><img src="images/images/kl_thumb.gif" title="[可怜]"></li>
				<li><img src="images/images/kbsa_thumb.gif" title="[挖鼻屎]"></li>
				<li><img src="images/images/cj_thumb.gif" title="[吃惊]"></li>
				<li><img src="images/images/shamea_thumb.gif" title="[害羞]"></li>
				<li><img src="images/images/zy_thumb.gif" title="[挤眼]"></li>
				<li><img src="images/images/bz_thumb.gif" title="[闭嘴]"></li>
				<li><img src="images/images/bs2_thumb.gif" title="[鄙视]"></li>
				<li><img src="images/images/lovea_thumb.gif" title="[爱你]"></li>
				<li><img src="images/images/sada_thumb.gif" title="[泪]"></li>
				<li><img src="images/images/heia_thumb.gif" title="[偷笑]"></li>
				<li><img src="images/images/qq_thumb.gif" title="[亲亲]"></li>
				<li><img src="images/images/sb_thumb.gif" title="[生病]"></li>
				<li><img src="images/images/mb_thumb.gif" title="[太开心]"></li>
				<li><img src="images/images/ldln_thumb.gif" title="[懒得理你]"></li>
				<li><img src="images/images/yhh_thumb.gif" title="[右哼哼]"></li>
				<li><img src="images/images/zhh_thumb.gif" title="[左哼哼]"></li>
				<li><img src="images/images/x_thumb.gif" title="[嘘]"></li>
				<li><img src="images/images/cry.gif" title="[衰]"></li>
				<li><img src="images/images/wq_thumb.gif" title="[委屈]"></li>
				<li><img src="images/images/t_thumb.gif" title="[吐]"></li>
				<li><img src="images/images/k_thumb.gif" title="[打哈气]"></li>
				<li><img src="images/images/bba_thumb.gif" title="[抱抱]"></li>
				<li><img src="images/images/angrya_thumb.gif" title="[怒]"></li>
				<li><img src="images/images/yw_thumb.gif" title="[疑问]"></li>
				<li><img src="images/images/cza_thumb.gif" title="[馋嘴]"></li>
				<li><img src="images/images/88_thumb.gif" title="[拜拜]"></li>
				<li><img src="images/images/sk_thumb.gif" title="[思考]"></li>
				<li><img src="images/images/sweata_thumb.gif" title="[汗]"></li>
				<li><img src="images/images/sleepya_thumb.gif" title="[困]"></li>
				<li><img src="images/images/sleepa_thumb.gif" title="[睡觉]"></li>
				<li><img src="images/images/money_thumb.gif" title="[钱]"></li>
				<li><img src="images/images/sw_thumb.gif" title="[失望]"></li>
				<li><img src="images/images/cool_thumb.gif" title="[酷]"></li>
				<li><img src="images/images/hsa_thumb.gif" title="[花心]"></li>
				<li><img src="images/images/hatea_thumb.gif" title="[哼]"></li>
				<li><img src="images/images/gza_thumb.gif" title="[鼓掌]"></li>
				<li><img src="images/images/dizzya_thumb.gif" title="[晕]"></li>
				<li><img src="images/images/bs_thumb.gif" title="[悲伤]"></li>
				<li><img src="images/images/crazya_thumb.gif" title="[抓狂]"></li>
				<li><img src="images/images/h_thumb.gif" title="[黑线]"></li>
				<li><img src="images/images/yx_thumb.gif" title="[阴险]"></li>
				<li><img src="images/images/nm_thumb.gif" title="[怒骂]"></li>
				<li><img src="images/images/hearta_thumb.gif" title="[心]"></li>
				<li><img src="images/images/unheart.gif" title="[伤心]"></li>
				<li><img src="images/images/pig.gif" title="[猪头]"></li>
				<li><img src="images/images/ok_thumb.gif" title="[ok]"></li>
				<li><img src="images/images/ye_thumb.gif" title="[耶]"></li>
				<li><img src="images/images/good_thumb.gif" title="[good]"></li>
				<li><img src="images/images/no_thumb.gif" title="[不要]"></li>
				<li><img src="images/images/z2_thumb.gif" title="[赞]"></li>
				<li><img src="images/images/come_thumb.gif" title="[来]"></li>
				<li><img src="images/images/sad_thumb.gif" title="[弱]"></li>
				<li><img src="images/images/lazu_thumb.gif" title="[蜡烛]"></li>
				<li><img src="images/images/clock_thumb.gif" title="[钟]"></li>
				<li><img src="images/images/cake.gif" title="[蛋糕]"></li>
				<li><img src="images/images/m_thumb.gif" title="[话筒]"></li>
				<li><img src="images/images/weijin_thumb.gif" title="[围脖]"></li>
				<li><img src="images/images/lxhzhuanfa_thumb.gif" title="[转发]"></li>
				<li><img src="images/images/lxhluguo_thumb.gif" title="[路过这儿]"></li>
				<li><img src="images/images/bofubianlian_thumb.gif" title="[bofu变脸]"></li>
				<li><img src="images/images/gbzkun_thumb.gif" title="[gbz困]"></li>
				<li><img src="images/images/boboshengmenqi_thumb.gif" title="[生闷气]"></li>
				<li><img src="images/images/chn_buyaoya_thumb.gif" title="[不要啊]"></li>
				<li><img src="images/images/daxiongleibenxiong_thumb.gif" title="[dx泪奔]"></li>
				<li><img src="images/images/cat_yunqizhong_thumb.gif" title="[运气中]"></li>
				<li><img src="images/images/youqian_thumb.gif" title="[有钱]"></li>
				<li><img src="images/images/cf_thumb.gif" title="[冲锋]"></li>
				<li><img src="images/images/camera_thumb.gif" title="[照相机]"></li>	
			</ul>
		</div>
		<!--face end-->
	</div>
</div>
<!--qq end-->
<div id="time1"></div>
<!--msgCon begin-->
<div class="msgCon">
</div>
<script type="text/javascript">

	//点击小图片，显示表情
	$(".bq").click(function(e){
		$(".face").slideDown();//慢慢向下展开
		e.stopPropagation();   //阻止冒泡事件
	});

	//在桌面任意地方点击，他是关闭
	$(document).click(function(){
		$(".face").slideUp();//慢慢向上收
	});

	//点击小图标时，添加功能
	$(".face ul li").click(function(){
		var simg=$(this).find("img").clone();
		$(".message").append(simg);
	});

	//点击发表按扭，发表内容
	$("span.submit").click(function(){

		var txt=$(".message").html();
		if(txt==""){
			$('.message').focus();//自动获取焦点
			return;
		}

		$(".msgCon").prepend("<div class='msgBox'><dl><dt><img src='images/tx.jpg' width='50' height='50'/></dt><dd>神马都是浮云</dd></dl><div class='msgTxt'>"+txt+"</div></div>");
	});

</script>


 </body>
</html>

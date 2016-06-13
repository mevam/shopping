<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp"></jsp:include>
<script charset="utf-8" src="js/jquery.form.js?v=01291"></script>
<script charset="utf-8" src="js/prodSort.js?v=01291"></script>
<title>商品列表</title>
</head>
<body>
<div class="fanhui_cou">
	<div class="fanhui_1"></div>
	<div class="fanhui_ding">顶部</div>
</div>
<header class="header">
	<div class="fix_nav">
		<div class="nav_inner">
			<a class="nav-left back-icon" href="javascript:history.back();">返回</a>
			<div class="tit">产品列表</div>
		</div>
	</div>
</header>

<div class="container" id="container2">
	<div class="row">
		<ul class="mod-filter clearfix">
			<div class="white-bg_2 bb1">
			
			<li id="default" class="active"><a
				title="默认排序"  href="javascript:void(0);">默认</a></li>
			<li id="buys"  ><a title="点击按销量从高到低排序"
				href="javascript:void(0);" >销量
				<i class='icon_sort'></i>
			</a></li>
			<li id="comments"  ><a title="点击按评论数从高到低排序"
				href="javascript:void(0);" >评论数
				<i class='icon_sort'></i>
			</a></li>
			<li id="cash"  ><a title="点击按价格从高到低排序"
				href="javascript:void(0);" >价格
				<i class='icon_sort'></i>
			</a></li>
			</div>
		</ul>
		
		<div class="item-list" id="container" rel="2" status="0"><input type="hidden" id="ListTotal" value="1">
		
		
			<a href="views.html">
				<div class="hproduct clearfix" style="background:#fff;border-top:0px;">
					<div class="p-pic"><img style="max-height:100px;margin:auto;" class="img-responsive" src="img/ffb9f5ad-27c7-44e0-8a48-634a71872dfb.png"></div>
					<div class="p-info">
						<p class="p-title">好德</p>
						<p class="p-origin"><em class="price">¥10.00</em></p>
						<p class="mb0"><del class="old-price">¥12.00</del></p>
						</div>
				</div>
			</a>
		
		</div>
		
		<div id="ajax_loading" style="display:none;width:300px;margin: 10px  auto 15px;text-align:center;">
			 <img src="images/loading.gif">
		</div>
		 <form  action='/m_search/prodlist' method="post" id="list_form">
				<input type="hidden" id="curPageNO" name="curPageNO"  value=""/>
			    <input type="hidden"  id="categoryId" name="categoryId" value="36" />
			    <input type="hidden" id="orders" name="orders"  value=""/>
			    <input type="hidden" id="hasProd" name="hasProd"  value="" />
			    <input type="hidden" id="keyword" name="keyword"  value="" />
			    <input type="hidden" id="prop" name="prop"  value="" />
		</form>
	</div>
</div>

</script>
<div class="clear"></div>

</body>
</html>
    
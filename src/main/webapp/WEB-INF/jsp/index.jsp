<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset=UTF-8>
   	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>首页</title>
   <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<jsp:include page="titlemenu.jsp"/>
</head>
<body>


<!-- 轮播区开始-->
<div id="myCarousel" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li  data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li  data-target="#myCarousel" data-slide-to="1"></li>
      <li  data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner" >
      <div class="item active">
         <img src="images/bg.jpg" alt="First slide">
         <div class="carousel-caption">标题 1</div>
      </div>
      <div class="item">
         <img src="images/bg.jpg" alt="Second slide">
         <div class="carousel-caption">标题 2</div>
      </div>
      <div class="item">
         <img src="images/bg.jpg" alt="Third slide">
         <div class="carousel-caption">标题 3</div>
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 
<!-- 轮播区结束-->


<!-- 内容折叠区开始-->
<div class="panel-group" id="accordion">
  <div class="panel panel-success">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseOne">
          点击我进行展开，再次点击我进行折叠。第 1 部分
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
        cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
        vice lomo.
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseTwo">
          点击我进行展开，再次点击我进行折叠。第 2 部分
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
        Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
        cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
        vice lomo.
      </div>
    </div>
  </div>
  <div class="panel panel-warning">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" 
          href="#collapseThree">
          点击我进行展开，再次点击我进行折叠。第 3 部分
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse">
      <div class="panel-body">
        Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
        cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
        vice lomo.
      </div>
    </div>
  </div>
</div>

 <script type="text/javascript">
   $(function () { 
      $('#collapseThree').on('show.bs.collapse', function () {
         alert('嘿，当您展开时会提示本警告');})
   });
</script>  
<!-- 内容折叠区结束-->

</body>
</html>
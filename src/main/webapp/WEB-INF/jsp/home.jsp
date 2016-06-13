<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="bootstrap.jsp"/>
<jsp:include page="titlemenu.jsp"/>
<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <link rel="stylesheet" href="bootstrap/css/normalize.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/metro-bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/iconFont.css">
    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="bootstrap/css/main.css">

    <script src="bootstrap/js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body class="metro">



<div class="container">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="carousel" id="carousel1">
                <div class="slide">
                    <img src="bootstrap/images/1.jpg" class="cover1" />
                </div>

                <div class="slide">
                    <img src="bootstrap/images/2.jpg" class="cover1" />
                </div>

                <div class="slide">
                    <img src="bootstrap/images/3.jpg" class="cover1"/>
                </div>

                <a class="controls left"><i class="icon-arrow-left-3"></i></a>
                <a class="controls right"><i class="icon-arrow-right-3"></i></a>
                <div class="markers default">
                    <ul>
                        <li class="active"><a href="javascript:void(0)" data-num="0"></a></li>
                        <li class=""><a href="javascript:void(0)" data-num="1"></a></li>
                        <li class=""><a href="javascript:void(0)" data-num="2"></a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-sm-4 col-xs-4">
            <div class="tile bg-darkPink">
                <div class="tile-content icon">
                    <i class="icon-cart-2"></i>
                </div>
                <div class="tile-status">
                    <span class="name">购物系统</span>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xs-4" id="activity">
            <div class="tile   bg-amber">
                <div class="tile-content image">
                    <img src="bootstrap/images/spface.jpg">
                </div>
                <div class="brand bg-black">
                    <span class="label fg-white">抽奖活动</span>

                    <div class="badge bg-darkRed paused"></div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xs-4">
            <div class="tile   bg-amber">
                <div class="tile-content image">
                    <img src="bootstrap/images/1.jpg">
                </div>
                <div class="brand bg-black">
                    <span class="label fg-white">宠物监控</span>

                    <div class="badge bg-darkRed icon-eye"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4 col-xs-4">


            <div class="tile   bg-amber">
                <div class="tile-content icon">
                    <i class="icon-home"></i>
                </div>
                <div class="tile-status">
                    <span class="label fg-white">宠物领养</span>


                </div>
            </div>
        </div>
        <div class="col-sm-8 col-xs-8">
            <div class="tile double">
                <div class="tile-content image-set">
                    <img src="bootstrap/images/1.jpg">
                    <img src="bootstrap/images/2.jpg">
                    <img src="bootstrap/images/3.jpg">
                    <img src="bootstrap/images/4.jpg">
                    <img src="bootstrap/images/5.jpg">
                </div>
            </div>

        </div>
       <!-- <div class="col-sm-4 col-xs-4">
            <div class="tile bg-lightOlive">
                <div class="brand">
                    <div class="badge bg-red"><i class="icon-broadcast"></i></div>
                </div>
            </div>
        </div>-->
    </div>
    <div class="row">
        <div class="col-sm-4 col-xs-4">


            <div class="tile   bg-cyan">
                <div class="tile-content icon">
                    <i class=" icon-sun"></i>
                </div>
                <div class="tile-status">
                    <span class="label fg-white">宠物百科</span>


                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xs-4">


            <div class="tile   bg-red">
                <div class="tile-content icon">
                    <i class="icon-help"></i>
                </div>
                <div class="tile-status">
                    <span class="label fg-white">常见问题</span>


                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xs-4">


            <div class="tile   bg-amber">
                <div class="tile-content icon">
                    <i class="icon-user"></i>
                </div>
                <div class="tile-status">
                    <span class="label fg-white">联系我们</span>


                </div>
            </div>
            
        </div>
    </div>

</div>
      



<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>-->
<script src="bootstrap/js/vendor/jquery-1.10.2.min.js"></script>
<script src="bootstrap//js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery/jquery.widget.min.js"></script>
<script src="bootstrap/js/metro/metro.min.js"></script>

<script src="js/home.js"></script>
<script src="js/login.js"></script>
<script>
    $(function(){
        $("#carousel1").carousel({
            height: 200
        });
        //用户自动登录
        isLogin();
        
    })

</script>
<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script>

</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/metro-bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/iconFont.css">
</head>
<body class="metro">
   <div class="row"></div>
    <nav class="navigation-bar fixed-bottom bg-blue">
        <nav class="navigation-bar-content">
            <item class="  element col-sm-3 col-xs-3 text-center" >
                 <a class="fg-white" href="index.do"><i class="icon-home"> </i></a></item>   
            </item>
            <item class="element  col-sm-3 col-xs-3  text-center">    
             <a class="fg-white" href="goBBShome.do"><i class="icon-new"> </i></a></item>

            <item class="element  col-sm-3 col-xs-3 text-center"> 
            <a class="fg-white" href="goFocushome.do"><i class="icon-heart"> </i></a></item>   
            <item class="element  col-sm-3 col-xs-3 text-center">
           <a class="fg-white" href="goUsercenter.do" ><i class="icon-user"> </i></a></item>
            </item>
        </nav>
    </nav>
<script src="bootstrap/js/jquery/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

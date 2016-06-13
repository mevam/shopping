<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
		<jsp:include page="titlemenu.jsp"/>
    </head>
    <body>
        <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1 style="color:black;"><strong>登录</strong> 更多精彩...</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h4 style="color:black;">8秒钟极速注册,请点击
                        			<span class="btn" href="#" onclick="clickRegist();" id="registBtn" style="color:orange;">这里!</span></h4>
                        			<h4 style="color:black;">返回首页,请点击
                        			<span class="btn" href="#" onclick="returnIndex();"  style="color:orange;">这里!</span></h4>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="loginform" action="#" method="post" class="login-form" id="loginform">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">账号</label>
			                        	<input  type="text" name="form-username" placeholder="请输入账号信息" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">密码</label>
			                        	<input  type="password" name="form-password" placeholder="请输入密码" class="form-password form-control" id="form-password">
			                        </div>
			                         <input type="checkbox" value="1" checked="true" id="isAutoLogin" name="ywczfx" onchange="this.value=(ywczfx.checked)?1:0">自动登录<br/>
			                        <button type="button" class="btn" onclick="dologin();">登录</button>
			                    </form>
			                     
			                    <form role="registform" action="#" method="post" class="login-form" style="display:none" id="registform">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">账号</label>
			                        	<input type="text" name="form-username" placeholder="请输入账号信息" class="form-username form-control" id="r_username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">密码</label>
			                        	<input type="password" name="form-password" placeholder="请输入密码" class="form-password form-control" id="r_password">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">确认密码</label>
			                        	<input type="password" name="form-surepassword" placeholder="请再次输入密码" class="form-password form-control" id="r_surepassword">
			                        </div>
			                        <div class="form-group">
			                        	<img src="code.do" onclick="this.src='code.do?'+Math.random();"
										class="s1" title="点击更换">
										<input type="password"  placeholder="请输入验证码"  id="r_vcode">
			                        </div>
			                        
			                        <button type="button" style="width:100%" class="btn" id="sureRegist" onclick="clickimg();">注册</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>其他方式登录:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
    </body>
</html>
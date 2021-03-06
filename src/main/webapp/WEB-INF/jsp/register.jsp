<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp"></jsp:include>
<title>注册</title>

<script charset="utf-8" src="/js/register.js?v=04.22"></script>
</head>

<body style="background-color:#fff">

<form id="form" name="form" action="" class="form-horizontal" role="form" method="post">

<div class="maincontainer">
	<div class="container itemdetail mini-innner">
	    <div class="row">
	      <header class="header" style="height:44px;">
	        <div class="fix_nav">
	            <div style="max-width:768px;margin:0 auto;background:#000000;position: relative;">
	                <a class="nav-left back-icon" href="/login">返回</a>
	                <div class="tit">会员注册</div>
	            </div>
	        </div>
	    </header>
	    </div>
	    <div class="row mt20"></div>
	    <div class="row">
	        <div class="col-md-12">
	
	              <div class="form-group">
	                <label for="name" class="col-xs-offset-1 col-xs-2 control-label p0">姓名：</label>
	                <div class="col-sm-7 col-xs-9">
	                  <input type="text" name="username" maxlength="20" class="form-control" id="username" placeholder="请输入您的姓名">
	                </div>
	              </div>
	              <div class="form-group">
	                <label for="phone" class="col-xs-offset-1 col-xs-2 control-label p0">手机：</label>
	                <div class="col-sm-7 col-xs-9">
	                  <input type="text" name="mobile" maxlength="11" class="form-control" id="mobile" placeholder="请输入您的手机号码">
	                </div>
	              </div>
	              <div class="form-group">
	                <label for="phone" class="col-xs-offset-1 col-xs-2 control-label p0">密码：</label>
	                <div class="col-sm-7 col-xs-9">
	                  <input type="password" name="password" class="form-control" id="password" placeholder="请输入您的登录密码" autocomplete="off">
	                </div>
	              </div>
	              <div class="form-group">
	                <input type="hidden" value="-1" name="sex" id="sex">
	                <label for="sex" class="col-xs-offset-1 col-xs-2 control-label p0">性别：</label>
	                <div class="col-sm-2 col-xs-3 pr0">
	                    <label class="qb_mr10">
	                        <i class="qb_icon icon_checkbox" id="gradenameboy"></i>男
	                    </label>
	                </div>
	                <div class="col-sm-2 col-xs-3 pr0">
	                    <label class="qb_mr10">
	                        <i class="qb_icon icon_checkbox" id="gradenamegirl"></i>女
	                    </label>
	                </div>
	              </div>
	              <div class="form-group">
	                <label for="code" class="col-xs-offset-1 col-xs-2 control-label p0">验证码：</label>
	                <div class="col-sm-4 col-xs-4 pr0">
	                  <input type="text" name="mobile_code" class="form-control" id="mobile_code" placeholder="请输入验证码">
	                </div>
	                <div class="col-sm-3 col-xs-5">
	                  <input type="button" class="form-control btn btn-primary get_mobile_code" value="获取手机验证码" style="padding:0px;">
	                </div>
	              </div>
	
	              <div class="form-group">
	                <div class="col-xs-offset-3 col-xs-6 mt10">
	                  <button type="button" onclick="formSubmit();" class="btn btn-success vip_reg btn-lg">立刻注册</button>
	                </div>
	              </div>
	        </div>
	    </div>
	</div>

</div>
</form>
<script type="text/javascript">

$(document).ready(function(){
	
  //性别：单选
  $("#gradenameboy").click(function(){
        var parent = document.getElementById("gradenameboy");
        $("#gradenameboy").removeClass("checked");
        parent.className = parent.className + " checked";
        $("#gradenamegirl").removeClass("checked");
        $('#sex').val(1);
  });
  $("#gradenamegirl").click(function(){
        var parent = document.getElementById("gradenamegirl");
        $("#gradenamegirl").removeClass("checked");
        parent.className = parent.className + " checked";
        $("#gradenameboy").removeClass("checked");
        $('#sex').val(0);
  });
  
  //当光标离开 姓名时，验证姓名
  $("#username").blur(function(){
	  checkName();
  });
  
  //当光标离开 手机时，验证手机
  $("#mobile").blur(function(){
	  checkPhone();
  });
  
//当光标离开 密码时，验证密码
  $("#password").blur(function(){
	  checkPassword();
  });
  
  //获取手机验证码
  $('.get_mobile_code').click(function(){
	  
	  var _this = this;
      if(checkPhone()){
    	  $.ajax({
    			url: contextPath + "/sendSMSCode", 
    			data:{"userName":$("#username").val(),"mobile":$("#mobile").val()},
    			type:'post', 
    			dataType : 'json', 
    			async : false,   
    			error: function(jqXHR, textStatus, errorThrown) {
    		 		alert(textStatus, errorThrown);
    			},
    			success:function(retData){			
	    		    	mycountDown(_this,60);
    				
    			}
    	  });
    	  
      }

 });
  

});
</script>
</body>
</html>

    
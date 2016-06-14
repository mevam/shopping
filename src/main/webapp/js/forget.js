$(document).ready(function(){
	
	  //当光标离开 手机时，验证手机
	  $("#mobile").blur(function(){
		  checkPhone();
	  });
	  
	 //当光标离开 新密码时，验证密码
	  $("#password").blur(function(){
		  checkPassword();
	  });
	 
	 //当光标离开  确认新密码 时 ，验证是否相同
	  $("#confirm").blur(function(){
		  checkConfirmPW();
	  });
	
	//获取手机验证码
	  $('.get_mobile_code').click(function(){
		  
		  var _this = this;
	      if(checkPhone()){
	    	  $.ajax({
	    			url: contextPath + "/sendSMSCode", 
	    			data:{"userName":null,"mobile":$("#mobile").val()},
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

//方法，验证手机
function checkPhone(){
	
	var mobile = $('input[name=mobile]').val();
    
    if(isBlank(mobile)){
       floatNotify.simple('请输入您的手机号码');
       return false;
    }
    
    if(!isPhone(mobile)){
  	  floatNotify.simple('请输入正确的手机形式');
        return false;
    }
    
    if(isPhoneExist(mobile)){
      floatNotify.simple('该手机号码不存在');
        return false;
    }
    
    return true;
}

/**判断是否为空**/
function isBlank(_value){
	if(_value==null || _value=="" || _value==undefined){
		return true;
	}
	return false;
}

/**检查是否为手机号码形式**/
function isPhone(str){
	var mobile = /^1\d{10}$/;
	return mobile.test(str);
}

/**检查手机号码是否存在**/
function isPhoneExist(phone) {
	var result = true;
	$.ajax({
			url: contextPath + "/isPhoneExist", 
			data: {"phone":phone},
			type:'post', 
			async : false, //默认为true 异步   
			dataType : 'json', 
			error: function(jqXHR, textStatus, errorThrown) {
				 //console.log(textStatus, errorThrown);
				},
			success:function(retData){
				if(retData){
					result = false;
				}
			}
		});
	return result;
}

//方法，验证密码
function checkPassword(){
	
	var password = $('input[name=password]').val();
	
	if(isBlank(password)){
        floatNotify.simple('密码不能为空！');
        return false;
     }
	
	if(password.length<6){
        floatNotify.simple('密码长度不能小于6个字符！');
        return false;
    }
	
	return true;
}

//方法，检验第二次输入的新密码
function checkConfirmPW(){
	var password = $('input[name=password]').val();
	var confirm = $('input[name=password]').val();
	  
	if(password != confirm){
		  floatNotify.simple('两次输入的新密码不一致！');
	      return false;
	}
	
	return true;
}

/** 倒计时函数 **/
function mycountDown(obj,second){

   // 如果秒数还是大于0，则表示倒计时还没结束
   if(second>=0){
       
       // 按钮置为不可点击状态
       $(obj).attr('disabled', true);
       
       // 按钮里的内容呈现倒计时状态
       $(obj).val("发送短信中"+'('+second+')');
       
       // 时间减一
       second--;
       
       // 一秒后重复执行
       setTimeout(function(){mycountDown(obj,second);},1000);
   
   }else{// 否则，按钮重置为初始状态
   	
       // 按钮置未可点击状态
       $(obj).attr('disabled', false);
       // 按钮里的内容恢复初始状态
       $(obj).val("获取手机验证码");
   }
    
}

function formSubmit(){
	var postData={};var flag = true;
	
	if(checkPhone()){//验证手机
    	postData['mobile']=$('input[name=mobile]').val();
    }else{
    	flag = false;
    	return;
    }
	
	if(checkPassword() && checkConfirmPW()){//验证密码
        postData['newPwd']=$('input[name=password]').val();
    }else{
    	flag = false;
    	return;
    }
	
	var mobileCode = $('#mobile_code').val();
	if(!isBlank(mobileCode)){
		postData['code'] = mobileCode;
	}else{
		floatNotify.simple("验证码不能为空！");
		flag = false;
    	return;
	}
	
	if(flag){
    	$.ajax({
			url:contextPath+"/changePwd",
			type:'POST',
			dataType:'text',
			data:postData,
			success:function(resp){
				if(resp=="OK"){
					floatNotify.simple("操作成功");
					setTimeout("window.location.href='"+contextPath+"/login'",2000);
				}else if(resp=="codeError"){
					$('input[name=mobile_code]').val("");//清空验证码
					floatNotify.simple('验证码错误');
				}else{
					floatNotify.simple('操作失败，请重试');
				}
			}
		});
    }
}
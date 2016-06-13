jQuery(document).ready(function() {
	
	sendData();//一过来就调用
	
	$(window).scroll(function(){
		if($(this).scrollTop()>300){
			$(".fanhui_cou").fadeIn(1500);
			
		}else{
			$(".fanhui_cou").fadeOut(1500);
			
		}
	});
	$(".fanhui_cou").click(function(){
		$("body,html").animate({scrollTop:0},200);
		return false;
	});
	
	$(window).scroll(function(){
        if ($(document).height() - $(this).scrollTop() - $(this).height()<50){

        	var curPageNo = $("#curPageNO").val();
        	if(isBlank(curPageNo) || curPageNo == 0){
        		curPageNo = 1;
        	}
        	
        	curPageNo=parseInt(curPageNo)+1;
			var totalPage=parseInt($("#ListTotal").val());
			if(curPageNo<=totalPage){
				$("#curPageNO").val(curPageNo);
				appendData();
			}
        }
    });
	
	
	//绑定 点击事件
	$(".row ul li").bind("click",function() {
		var id = $(this).attr("id");
		var orderDir = "";
		$(".row ul li").each(function(i) {
			if (id != $(this).attr("id")) {
				$(this).removeClass("active");
			}
		});
		$(this).addClass("active");
		var iElement=$(this).find("i");
		if (id == 'cash') {
			if ($(iElement).hasClass("icon_sort_up")) {
				orderDir = "cash,asc";
				$(iElement).attr("class","icon_sort_down");
				
			} else if($(iElement).hasClass("icon_sort_down")){
				orderDir = "cash,desc";
				$(iElement).attr("class","icon_sort_up");
				
			}else{
				orderDir = "cash,desc";
				$(iElement).attr("class","icon_sort_up");
			}
		} else if (id == 'buys') {
			if ($(iElement).hasClass("icon_sort_down")) {
				orderDir = "buys,desc";
				$(iElement).attr("class","icon_sort_up");
				
			} else if($(iElement).hasClass("icon_sort_up")){
				orderDir = "buys,asc";
				$(iElement).attr("class","icon_sort_down");
				
			}else{
				orderDir = "buys,desc";
				$(iElement).attr("class","icon_sort_up");
			}
		} else if (id == 'comments') {
			if ($(iElement).hasClass("icon_sort_down")) {
				orderDir = "comments,desc";
				$(iElement).attr("class","icon_sort_up");
				
			} else if($(iElement).hasClass("icon_sort_up")){
				orderDir = "comments,asc";
				$(iElement).attr("class","icon_sort_down");
				
			}else{
				orderDir = "comments,desc";
				$(iElement).attr("class","icon_sort_up");
			}
		} else if (id == 'default') {
			orderDir = "recDate,desc";
		}
		
		$(this).siblings().find("i").attr("class","icon_sort");
		
		$("#orders").val(orderDir);
		var no_results=$.trim($("#no_results").html());
		if(no_results!="" && no_results!=null && no_results!=undefined){
			return false;
		}
		$("#curPageNO").val(0);
		sendData();
	});
});

function sendData(){
	$('#ajax_loading').show();
	/*$("#list_form").ajaxForm().ajaxSubmit({
		  success:function(result) {
			 $('#ajax_loading').hide();
			 $("#container").html(result); 
		   },
		   error:function(XMLHttpRequest, textStatus,errorThrown) {
			 $("#container").html(""); 
			 $('#ajax_loading').hide();
			 floatNotify.simple("查找失败");
			 return false;
		  }	
	})*/
	var result='<input type="hidden" id="ListTotal" value="11" >'
		+'<a href="/views/658">'
		+'<div class="hproduct clearfix" style="background:#fff;border-top:0px;">'
		+'<div class="p-pic"><img style="max-height:100px;margin:auto;" class="img-responsive" src="/photoserver/images/0/2016/01/12/b0c64749-6129-4069-9965-4ab577d48d6a.jpg"></div>'
		+'<div class="p-info">'
		+'<p class="p-title">丹希路真皮女包手提包中年女士包包牛皮时尚休闲单肩斜跨包大包女</p>'
		+'<p class="p-origin"><em class="price">¥338.00</em>'
		+'</p>'
		+'<p class="mb0"><del class="old-price">¥1058.00</del></p>'
		+'</div>'
		+'</div>'
		+'</a>'
		+'<a href="/views/659">'
		+'<div class="hproduct clearfix" style="background:#fff;border-top:0px;">'
		+'<div class="p-pic"><img style="max-height:100px;margin:auto;" class="img-responsive" src="/photoserver/images/0/2016/01/13/3bec333d-f60a-48a3-999c-371c4fe67134.jpg"></div>'
		+'<div class="p-info">'
		+'<p class="p-title">BOSSsunwen正品专柜手包男包钱包皮包卡包商务S15-230643A1T </p>'
		+'<p class="p-origin"><em class="price">¥550.00</em>'
		+'</p>'
		+'<p class="mb0"><del class="old-price">¥1048.00</del></p>'
		+'</div>'
		+'</div>'
		+'</a>';
	 $('#ajax_loading').hide();
	 $("#container").html(result);
}

function appendData(){
	$('#ajax_loading').show();
	$("#list_form").ajaxForm().ajaxSubmit({
		  success:function(result) {
			 $('#ajax_loading').hide();
			 $("#container").append(result); 
		   },
		   error:function(XMLHttpRequest, textStatus,errorThrown) {
			 $("#container").html(""); 
			 $('#ajax_loading').hide();
			 floatNotify.simple("查找失败");
			 return false;
		  }	
	});
}

/**判断是否为空**/
function isBlank(_value){
	if(_value==null || _value=="" || _value==undefined){
		return true;
	}
	return false;
}
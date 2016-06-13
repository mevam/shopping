<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="bootstrap.jsp"/>
<jsp:include page="titlemenu.jsp"/>
<script src="js/usercenter.js"></script>
<script src="js/signIn.js"></script>

<style type="text/css">

a:link {
text-decoration: none;
}
a:visited {
text-decoration: none;
}
a:hover {
text-decoration: none;
}
a:active {
text-decoration: none;
}

</style>

 <div class="container">
<!--     第一行 开始 -->
    <div class="row">
        <div class="col-sm-4 col-xs-4">
            <div class="tile bg-white">
                <img alt="" src="loadphoto.do" style="width:100px;height:100px;border-radius:80px;
        position:absolute; left:10px; top:8px;" data-toggle="modal" 
  				 data-target="#myModal">
            </div>
        </div>
         <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
               	上传头像
            </h4>
         </div>
         <div class="modal-body">
          	<!-- <form action="http://localhost:8080/SpringMVC_01/fileUpload.html" method="post" enctype="multipart/form-data">   -->
            <form action="fileUpload.do" method="post" enctype="multipart/form-data" target="id_iframe">  
   			 选择文件:<input type="file" name="file"> 
   			 <p></p> 
    		<input type="submit" class="btn btn-success" value="提交" id="subphoto">   
			</form>  
			<iframe id="id_iframe" name="id_iframe" style="display:none;"></iframe> 
         </div>
      </div><!-- /.modal-content -->
	</div>
</div><!-- /.modal -->
        <div class="col-sm-8 col-xs-8">
            <ol style="list-style-type:none">
         		<li><h2><span style="width:100%;strong;font-size:50px;position:absolute; left:-10px; top:10px;" >
         			&nbsp nickname</span>
         			</h2>
         		</li>
         		<li><a style="font-size:20px;position:absolute; left:0px; top:70px;">
         			<span>&nbsp 会员等级</span>
         			</a>
         		</li>
         	</ol>
        </div>
        
    </div>
  <!--     第一行 结束 -->
  <!-- 第二行 开始 -->
  <div class="row">
        <div class="col-sm-4 col-xs-4">
            <p style="height:150px;"></p>
            
        </div>
        <div class="col-sm-4 col-xs-4">
            
        </div>
        <div class="col-sm-4 col-xs-4">
            
        </div>
    </div>
    <!-- 第二行结束 -->
    
    <!-- 第三行开始 -->
   <div class="row" style="height:40px" id="signIn">
        <div class="col-sm-12 col-xs-12" style="border-top:1px solid #000;border-bottom:1px solid #000;">
        <a style="font-size:26px;margin:5px;" >签到  <span class=" pull-right">&gt;</span></a>
        </div>
     </div>
    <!-- 第三行结束 -->
    <!-- 第四行结束 -->
    <div class="row" style="height:40px" id="logoutdiv">
        <div class="col-sm-12 col-xs-12" style="border-bottom:1px solid #000;">
        <a style="font-size:26px;margin:5px;" >退出  <span class=" pull-right">&gt;</span></a>
        </div>
     </div>
    
    <!-- 第四行结束 -->
     <!-- 第五行结束 -->
    <div class="row" style="height:40px" id="chatus">
        <div class="col-sm-12 col-xs-12" style="border-bottom:1px solid #000;">
        <a style="font-size:26px;margin:5px;" >联系我们  <span class=" pull-right">&gt;</span></a>
        </div>
     </div>
    
    <!-- 第五行结束 -->
  
  </div>
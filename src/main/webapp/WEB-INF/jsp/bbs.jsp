<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="bootstrap.jsp"/>
<jsp:include page="titlemenu.jsp"/>
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
<div class="panel-group" id="accordion">
 
<script src="js/bbs.js"></script>
<!-- 顶部菜单 -->
<div class="row"></div>
    <nav class="navigation-bar fixed-top bg-powderblue">
        <nav class="navigation-bar-content">
            <item class="  element col-sm-12 col-xs-12 text-center" >
                 <a class="fg-white" href="#" onclick="" id="newT" data-toggle="modal" 
  				 data-target="#myModal"><i class="icon-pencil"> </i>
                 &nbsp;&nbsp;&nbsp;发布</a>
            </item>   
           
        </nav>
    </nav>
    <div style="height:50px;"></div>
    
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
               	发布新内容
            </h4>
         </div>
         <div class="modal-body">
          	<label >标题</label>
			<input type="text"  style="width:80%;" id="editTitle"/>
			 <label >内容</label>
    			<textarea class="form-control" rows="5" id="editBody"></textarea>
			
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" 
               data-dismiss="modal">关闭
            </button>
            <button type="button"  class="btn btn-success" id="editSubmit">
              	 马上发布
            </button>
         </div>
      </div><!-- /.modal-content -->
	</div>
</div><!-- /.modal -->
    
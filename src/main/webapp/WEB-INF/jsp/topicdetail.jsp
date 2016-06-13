<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="bootstrap.jsp"/>
<jsp:include page="titlemenu.jsp"/>
<script type="text/javascript" src="js/topicdetail.js"></script>
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
<input type="hidden" id="detailtest" value="${topic_id}"/> 
<h1></h1>
<hr/>
<div id="topic_body" style="font-size:26px"></div>

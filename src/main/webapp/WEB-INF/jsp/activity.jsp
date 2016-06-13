<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="bootstrap.jsp"/>
<jsp:include page="titlemenu.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<title>抽奖活动</title>
	<link rel="stylesheet" type="text/css" href="../activity/index.css">
	<script type="text/javascript" src="../activity/activity.js"></script>
</head>

<body>
	<div class="miaov">
		<a href="ranking">查看抽奖排行榜></a>
		
		<div class="inwrap">
	    	<h2>活动规则：</h2>
				<ul style="margin: -1.2rem 0 0 0.3rem;">
					<li>1.参与该活动需满足以下条件：Lv1及以上<br>会员，在前一日进行过签到。</li>
					<li>2.用户需在每日9:00-11:00确认参与抽奖，<br>我们会在当日18:00公布结果。</li>
					<li>3. 中奖数量为当日参与抽奖人数的10倍。</li>
					<li>4. 中奖率与经验、会员等级有关。</li>
				</ul>
	    </div>

	    <p id="target">
	        距参与抢糖开始还剩:
	    </p>

	    <div id="date">
	       <p style="margin-right:2px"></p>
	       <p></p>
	       <img src="http://cdn1.utouu.com/ui/mobile/sugar/images/timer.png" class="timer1">
	       <p style="margin-right:2px"></p>
	       <p></p>
	       <img src="http://cdn1.utouu.com/ui/mobile/sugar/images/timer.png" class="timer2">
	       <p style="margin-right:2px"></p>
	       <p style="margin-right:0px"></p>
	    </div>
		<a href="#" id="panic" style="font-size:0.6rem;color: #gray;">参与抽奖</a>
		<p id="news" style="display:none">等待结果公布...</p>
		<p id="candy"  style="display:none">今日抢到:<br><span>120颗</span></p>
		<p id="people">当前参与抽奖人数:13,007,000</p> 
		
	</div>
	
	<div id="fill_in" style="display:none;">
	        <span class="title">请输入：</span>
	        <input type="text" class="long_text" value="2016" />
	        <span class="space1">年</span>
	        <input type="text" class="text" value="5" />
	        <span class="space2">月</span>
	        <input type="text" class="text" value="26" />
	        <span class="space3">日</span>
	        <input type="text" class="text"  id="hour"value="17" />
	        <span class="space4">时</span>
	         <input type="text" class="text" id="min" value="02" />
	        <span class="space5">分</span>
	         <input type="text" class="text" id="sec" value="0" />
	        <span class="space6">秒</span>
    	</div>
</body>
</html>
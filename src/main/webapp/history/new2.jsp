<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>校史馆</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/layui/src/css/layui.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/new2.css">
<script src="<%=request.getContextPath() %>/layui/src/layui.js"></script>
	<script>
		layui.use(['element', 'form'], function(){
		  var element = layui.element;
		
		  element.on('nav(test)', function(elem){
			console.log(elem)
		  });
		});
	</script>
</head>
<body>
<div class="top"></div>
	<div class="navigation">
		<ul class="layui-nav layui-bg-cyan">
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/main">首页</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/shgc">史海钩沉</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/rwcq">人物春秋</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/gzdt">工作动态</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/xxgg">信息公告</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/lxwm.jsp">联系我们</a></li>
		</ul>
	</div>
		  
<div class="container">
		<p class="new_title">${oneNew.title}</p>
		<p class="new_author"><span>发布者：${oneNew.author}</span><span>发布时间：${oneNew.date}</span></p>
		<div class="new_img"><img src="<%=request.getContextPath() %>/img/${oneNew.img}" alt=""></div>
		<p class="container_content">${oneNew.content}</p>
   </div>
		  
<div class="footer">
	<img src="<%=request.getContextPath() %>/img/ylsf_wx.jpg" alt="">
	<span id="adress">
		<p>
			<a href="https://www.ylnu.edu.cn/">伊犁师范大学</a>
			<p>
				地址：伊宁市解放西路448号(解放路)
				<br>邮编：835000
			</p>
		</p>
	</span>
</div>
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>工作动态</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/layui/src/css/layui.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/gzdt.css">
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
			<li class="layui-nav-item layui-this"><a href="<%=request.getContextPath() %>/history/gzdt">工作动态</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/xxgg">信息公告</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/lxwm.jsp">联系我们</a></li>
		  </ul>
	</div>
	
	<div class="content">
		<div class="shgc_title">
			<p><span>工作动</span>态</p>
		</div>
		<div class="shgc_news">
			<div class="web_adress">当前位置：<a href="index.jsp">首页</a>|<a href="">工作动态</a></div>
			<div class="news_title">
				<span>工作动态</span><img src="<%=request.getContextPath() %>/img/history.png" alt="">
				<hr class="style-one"/>
			</div>
			<div class="news_list">
				<ul class="news_list_content">
					<c:forEach items="${gzdtList}" var="gzdt">
					<li>
						<a href="new?id=${gzdt.id}" target="_blank">
							<span class="list_title">${gzdt.title}</span>
							<span class="list_time">${gzdt.date}</span>
						</a>
					</li>
					</c:forEach>
				</ul>
				<ul class="pagination modal-1">
				    <li> <span class="left">第${currPage}页</span></li>
				    <li> <a href="?start=1">首页</a></li>
				    <li><a href="?start=${pre}">上一页</a></li>
				    <li><a href="?start=${next}">下一页</a></li>
				    <li> <a href="?start=${last}">末页</a></li>
				    <li> <span class="right">共${total}条</span></li>
				</ul>
			</div>
		</div>
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
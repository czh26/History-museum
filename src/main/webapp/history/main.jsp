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
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/index.css">
<script src="<%=request.getContextPath() %>/layui/src/layui.js"></script>
	<script>
		layui.use(['element', 'form'], function(){
		  var element = layui.element;
		
		  element.on('nav(test)', function(elem){
			console.log(elem)
		  });
		});

		layui.use('carousel', function(){
		  var carousel = layui.carousel;
		  //建造实例
		  carousel.render({
			elem: '#test2'
			,interval: 5000
			,anim: 'default'
			,width: '1200px'
			,height: '340px'
			,indicator: 'none'
		  });
		  //轮播属性
		});
	</script>
</head>
<body>
<div class="top"></div>
	<div class="navigation">
		<ul class="layui-nav layui-bg-cyan">
			<li class="layui-nav-item layui-this"><a href="<%=request.getContextPath() %>/history/main">首页</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/shgc">史海钩沉</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/rwcq">人物春秋</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/gzdt">工作动态</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/xxgg">信息公告</a></li>
			<li class="layui-nav-item"><a href="<%=request.getContextPath() %>/history/lxwm.jsp">联系我们</a></li>
		</ul>
	</div>
	
		<!-- <div class="navigation">
			<ul class="nav" lay-filter="">
				<li class="nav-item-this"><a href="">首页</a></li>
				<li class="nav-item"><a href="shgc.jsp">史海钩沉</a></li>
				<li class="nav-item"><a href="">人物春秋</a></li>
				<li class="nav-item"><a href="">工作动态</a></li>
				<li class="nav-item"><a href="">信息公告</a></li>
				<li class="nav-item"><a href="">联系我们</a></li>
			  </ul>
		</div> -->
		
		<div class="shuffling">
			<div class="layui-carousel" id="test2">
				<div carousel-item id="test1">
				<c:forEach items="${shgcList}" var="shgc"  begin="0" end ="6">
				  <div id="lb">
				  
					  <img src="<%=request.getContextPath() %>/img/${shgc.img}" >
					  <div id="news">
						  <p>
							${shgc.content}
						  </p>
						<div id="news_js">
							<div id="red">
								标题
							</div>
							<div id="green">
								<a href="new?id=${shgc.id}">${shgc.title}</a>
							</div>
						</div>
					  </div>
				  
				  </div>
				  </c:forEach>
				</div>
			  </div>		  
		</div>

		<div class="inner">
			<div class="inner_top1">
				<p class="inner_title">
					<img src="<%=request.getContextPath() %>/img/pic1.png" alt=""><span>本馆概况</span>
				</p>
				<p class="inner_top_content">
					伊犁师范大学校史馆共有五个展厅，分别为：
					①岁月如歌&nbsp—&nbsp天山脚下守边疆，伊犁河畔驻师魂；
					②赤子情怀&nbsp—&nbsp赤子情怀，家国担当；
					③风雨兼程&nbsp—&nbsp品正学实，铸魂育人；
					④砥砺前行&nbsp—&nbsp心向阳光，行向远方；
					⑤回声嘹亮&nbsp—&nbsp岁月无声，你在心上。
				</p>
			</div>
			<div class="inner_top2">
				<p class="inner_title">
					<img src="<%=request.getContextPath() %>/img/pic2.png" alt=""><span>校史展览</span>
				</p>
				<p class="inner_top_content">
					伊师人秉承“品正学实”的校训，发扬爱国、崇德、勤奋、
					求实的光荣传统，全面深化教育改革，创新人才培养模式，
					努力把伊犁师范大学建设成为办学特色鲜明，重点学科领先
					，教师教育优势突出，服务社会能力强劲，区内先进、国内
					有重要影响的高水平师范大学。
				</p>
			</div>
			<div class="inner_top3">
				<p class="inner_title">
					<img src="<%=request.getContextPath() %>/img/pic3.png" alt=""><span>参观预约</span>
				</p>
				<p class="inner_top_content">
					伊犁师范大学校史馆是学校重要的校史文化宣传阵地和青少年
					爱国主义教育基地。为发挥校史馆文化育人功能，强化校
					史馆的安全和有序管理，根据伊犁师范大学相关规章制度，
					请遵照《伊犁师范大学校史馆开放管理规定》执行。
				</p>
			</div>
			<div class="inner_left">
				<p class="inner_title1">
					<span>工作动态</span><img src="<%=request.getContextPath() %>/img/history.png" alt="">
					<a href="<%=request.getContextPath() %>/history/gzdt">更多>></a>
					<hr class="style-one"/>
				</p>
				<div class="inner_left_content">
					<div class="important">
						<c:forEach items="${gzdtList}" var="gzdt" begin="0" end ="0">
						<img src="<%=request.getContextPath() %>/img/${gzdt.img}" alt="">
						</c:forEach>
						<div class="important_news">
						<c:forEach items="${gzdtList}" var="gzdt" begin="0" end ="0">
						<a href="new?id=${gzdt.id}"><p class="news_title">${gzdt.title}</p></a>
						<p class="news_summary">${gzdt.content}</p>
						</c:forEach>
						</div>
					</div>
					<c:forEach items="${gzdtList}" var="gzdt" begin="1" end ="3">
					<div class="news_n1">
						<a href="new?id=${gzdt.id}"><span class="news_n_title">${gzdt.title}</span>
						<span class="news_time">${gzdt.date}</span></a>
					</div>
					</c:forEach>

				</div>
			</div>
			<div class="inner_right">
				<p class="inner_title1">
					<span>信息公告</span>
					<img src="<%=request.getContextPath() %>/img/history.png" alt="">
					<a href="<%=request.getContextPath() %>/history/xxgg">更多>></a>
					<hr class="style-one"/>
				</p>
				<div class="inner_right_content">
					<div class="right_important">
						<c:forEach items="${xxggList}" var="xxgg" begin="0" end ="0">
						<a href="new?id=${xxgg.id}">
							<p>${xxgg.title}</p>
						</a>
						<span>
							${xxgg.content}
						</span>
						</c:forEach>
					</div>
						<c:forEach items="${xxggList}" var="xxgg" begin="1" end ="3">
						<div class="right_news_n1">
						<a href="new?id=${xxgg.id}"><p class="right_news_title">${xxgg.title}</p>
						<p class="right_news_time">${xxgg.date}</p></a>
						</div>
						</c:forEach>
				</div>
			</div>
			
			<div class="inner_bottom">
				<p class="inner_title1">
					<span>人物春秋</span>
					<img src="<%=request.getContextPath() %>/img/history.png" alt="">
					<a href="<%=request.getContextPath() %>/history/rwcq">更多>></a>
				</p>
				<div id=photo>
					<table>
						<tr>
							<td>
							<div id=demo>
								<table>
									<tr>
									<td id=marquePic1 valign=top>
										<table>
										<tr>
											<c:forEach items="${rwcqList}" var="rwcq" begin="0" end ="5">
											<td class="news_rolling">
												<a href="new2?id=${rwcq.id}">
													<img src="<%=request.getContextPath() %>/img/${rwcq.img}" />
													<p>${rwcq.title}</p>
												</a>
											</td>
											</c:forEach>
										</tr>
										</table>
									</td>
									<td id=marquePic2 valign=top></td>
									</tr>
								</table>
							</div>
							</td>
						</tr>
					</table>
					<script type=text/javascript>
						var speed=20
						marquePic2.innerHTML=marquePic1.innerHTML
						function Marquee(){
						if(demo.scrollLeft>=marquePic1.scrollWidth){
						demo.scrollLeft=0
						}else{
						demo.scrollLeft++
						}
						}
						var MyMar=setInterval(Marquee,speed)
						demo.onmouseover=function() {clearInterval(MyMar)}
						demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
					</script>
				</div>
			</div>
		</div>

		<div class="footer">
		<div class="footer_content">
			<img src="<%=request.getContextPath() %>/img/ylsf_wx.jpg" alt="">
			<div id="adress">
				<p>
					<a href="https://www.ylnu.edu.cn/">伊犁师范大学</a>
					<p>
						地址：伊宁市解放西路448号(解放路)
						<br>邮编：835000
					</p>
				</p>
			</div>
		</div>
		</div>
		
		<!-- 链接页面内容 -->

		<!-- 链接页面内容 -->
</body>
</html>
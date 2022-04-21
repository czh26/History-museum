<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

	<head>
		<meta charset="utf-8">
		<title>注册</title>
	</head>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>

	<body>
		<div class="container">
			
			<div class="row clearfix">
				<div class="col-md-12 column" style="height: 500;">
					<div class="row">
						<div class="col-md-3">
						</div>
						<div class="col-md-6">
							<h3>用户注册</h3>
							<br /><br />
							<form role="form" action="register" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">用户名：</label>
									<input type="username" class="form-control " name="username" />
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">密码：</label>
									<input type="password" class="form-control " name="password" />
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">确认密码：</label>
									<input type="password" class="form-control " name="password2" />
								</div>
								<label for="exampleInputEmail1">${unLoginInfo}</label>
								<button type="submit" class="btn btn-default">注册</button>
							</form>
						</div>
						<div class="col-md-3"></div>
					</div>
					<br />
					<br />
				</div>
			</div>

		</div>
	</body>

</html>
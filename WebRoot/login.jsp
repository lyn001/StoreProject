<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <title>用户登录</title>
  <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="css/login.css">
  <!--[if lt IE 9]>
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
  <![endif]-->

</head>
<body>
	
	<!-- 背景图 -->
	<section id="login_center">
		<div class="img">
			<form action="/ProjectOne/UserLoginServlet" method="post" accept-charset="utf-8">
				<!-- 登录框 -->
				<div id="login_case" class="nav navbar-nav navbar-right">
					<div id="wenzi"><span>用户登录</span></div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span>
						  	<input type="text" class="form-control" placeholder="请输入账号" aria-describedby="basic-addon1" name="uname">
						  	<span id="namespan"></span>
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span>
							 <input type="password" class="form-control" placeholder="请输入密码" aria-describedby="basic-addon1" name="upwd">
						</div>
						<div class="login_button">
							<input class="btn btn-default" id="login" type="submit" value="登录">
						</div>

						<div class="forget">
							<div class="row">
								<div class="col-md-4">
									<a href="#" title=""><span>忘记密码</span></a>
								</div>
								<div class="col-md-4">
									<a href="#" title=""><span>忘记账号</span></a>
								</div>
								<div class="col-md-4">
									<a href="register.jsp" title=""><span>免费注册</span></a>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- /背景图 -->
	<!-- 页脚 -->
	<footer id="foot">
		<p>欢迎您使用博康购物商城</p>
	</footer>
	<!-- /页脚 -->
	<script src="lib/jquery/jquery.js"></script>
	<script src="lib/bootstrap/js/bootstrap.js"></script>
	
</body>
</html>
<script>
		var uname=document.getElementsByName("uname")[0]; 
		var unamespan=document.getElementById("namespan");
		uname.onblur=function(){
			 $.ajax({
		   		   type: "GET",
		   		   url: "/ProjectOne/UserLoginServlet?uname="+uname.value,
		   		   success: function(msg){
					   if("false"==msg){
						   //登录失败
						   unamespan.innerHTML="用户不存在";
						   unamespan.style.color="red";
					   }else{
						   unamespan.innerHTML="";
					   }
		   		   }
		   	   });
		}
</script>


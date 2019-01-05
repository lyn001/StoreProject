<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <title>商品详情</title>
  <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/commodity.css">
  <link rel="stylesheet" href="css/base.css">
  <!--[if lt IE 9]>
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
  <![endif]-->
</head>

<body>
  <!-- 头部区域 -->
  <header id="header">
    <!-- <div class="topbar hidden-sm hidden-xs"> -->
    <div class="topbar visible-md visible-lg">
      <div class="container">
        <div class="row">
          <div class="col-md-2 text-center">
            <a href="#" class="mobile-link">
              <i class="icon-mobilephone"></i>
              <span>手机商城</span>
              <i class="glyphicon glyphicon-chevron-down"></i>
              <img src="img/qqq.jpg" height="136" width="120" alt="扫一扫">
            </a>
          </div>
          <div class="col-md-5 text-center">
            <i class="icon-telephone"></i>
            <span>4006-89-4006（服务时间：9:00-21:00）</span>
          </div>
          <div class="col-md-2 text-center">
            <a href="#">我的钱包</a>
          </div>
          <div class="col-md-3 text-center">
            <a href="#" class="btn btn-guwei btn-sm">免费注册</a>
            <a href="#" class="btn btn-link btn-sm">登录</a>
            <a href="#" class="btn btn-link btn-sm">购物车
              <span class="glyphicon glyphicon-shopping-cart"></span>
              <span class="badge">0</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <nav class="navbar navbar-guwei navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button id="btn" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav_list" aria-expanded="false">
            <span class="sr-only">切换菜单</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
             <img src="img/logo1.png" alt="">
          </a>
        </div>
        <div id="nav_list" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active">
              <a data-toggle="dropdown" href="index.html">实体商品
                <span class="glyphicon glyphicon-menu-down"></span>
              </a>
              <ul class="dropdown-menu multi-level" >
                <li><a href="#">全部</a></li>
                <li><a href="#">油盐酱醋</a></li>
                <li><a href="#">零食</a></li>
                <li><a href="#">百货</a></li>
                <li><a href="#">其他</a></li>
              </ul>
            </li>
            
            <li>
              <form class="navbar-form navbar-left">
              <input type="text" class="form-control" placeholder="请输入商品名称">
              <button type="submit" class="btn btn-default">
              <span class="glyphicon glyphicon-search"></span>
              </button>
              </form>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-sm">
            <li><a href="#">个人中心</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <!-- /头部区域 -->

  <!-- 商品详情 -->
  <section class="section">
      <div class="left">
        <div class="show">
        <div id="preview" class="spec-preview"> 
          <span class="jqzoom"><img jqimg="${shop.shop_img }" src="${shop.shop_img }" /></span>
          </div>
        <div class="spec-scroll">
      	<div class="items">
          <ul>
          	<c:forEach var="i" items="${imgs}">
          		<li><img src="${i}" onmousemove="preview(this);"></li>
          	</c:forEach>
          </ul>
        </div>
      </div>
    </div>
    </div>
      <div class="right">
        <div class="div-font">
          <div class="div-01">
            <p style="font-size: 20px;">${shop.shop_name}</p>
            <p style="font-size:15px;">${shop.shop_desc}</p>
          </div>
          <div class="div-02">
            <span style="font-size:15px;">价格&nbsp;</span>
            <span style="color: #e92322; font-size: 25px;">￥${shop.shop_price}</span>
          </div>
          <div class="div-03">
              <span style="font-size:15px;">商品数量&nbsp;</span>
            <div class="numb">
              <button class="but" style="font-size: 15px;" onclick="count1()">-</button>
              <span id="count">1</span>
              <button class="but" style="font-size: 15px;" onclick="count()">+</button>
            </div>
              <span>件(库存${shop.shop_supply}件)</span>
          </div>
            <div class="div-04">
              <div class="btn-group btn-group-justified" role="group" aria-label="...">
              <div class="btn-group" role="group">
                <a onclick="now()"><button type="button" class="btn btn-default">立即购买</button></a>
              </div>
              <div class="btn-group" role="group">
                <button type="button" class="btn btn-default">
                <a onclick="addShopCar()"><span class="glyphicon glyphicon-shopping-cart"></span>加入购物车</button></a>
              </div>
              </div>
            </div>
          </div>
      </div>
  </section>
  <!-- /商品详情 -->
  <!-- 脚注区域 -->
  <footer class="bs-docs-footer">
    <div class="footer">
      <ul class="footer-ul">
        <li><a href="commodity.html">天猫</a></li>
        <li><a href="#">淘宝</a></li>
        <li><a href="#">京东</a></li>
        <li>备案号:HJDSG88725438286983</li>
        <li>商业合作</li>
        <li>联系电话:110120119911</li>
      </ul>
    </div>
  </footer>
  <!-- /脚注区域 -->
  <script src="lib/jquery/jquery.js"></script>
  <script src="lib/bootstrap/js/bootstrap.js"></script>
  <script src="js/main.js"></script>
  <script src="js/base.js"></script>
  <script src="js/jquery.jqzoom.js"></script>
  <script src="js/jquery-1.4.2.min.js"></script>
</body>
</html>
<script>
	
	var shopname=document.getElementsByTagName("p")[0].innerHTML;
	function now(){
		var c=document.getElementById("count").innerHTML;
		location.href="/ProjectOne/ByNowServlet?count="+c+"&shopname="+shopname;
	}
	
	function addShopCar(){
		var c=document.getElementById("count").innerHTML;
		location.href="/ProjectOne/AddShopCarServlet?count="+c+"&shopname="+shopname;
	}
	
	
</script>

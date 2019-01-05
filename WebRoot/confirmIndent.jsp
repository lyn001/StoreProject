<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>确认订单</title>
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/shopping.css">
    <link rel="stylesheet" type="text/css" href="css/confirmIndent.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
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
                    <div class="col-md-4 text-center">
                        <i class="icon-telephone"></i>
                        <span>4006-89-4006（服务时间：9:00-21:00）</span>
                    </div>
                    <div class="col-md-2 text-center">
                        <a href="#">我的钱包</a>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="index.html" class="btn btn-link btn-sm">谷维商城</a>
                        <a href="/ProjectOne/AccessServlet" class="btn btn-link btn-sm">首页</a>
                        <a href="/ProjectOne/AddShopCarServlet?shopname=null&count=0" class="btn btn-link btn-sm">购物车
              <span class="glyphicon glyphicon-shopping-cart"></span>
              <span class="badge">0</span>
            </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--订单列表-->
    <section class="section">
        <div class="indent">
            <span style="font-size: 20px;">确认订单信息</span>
            <div class="infomation01">
                <ul class="info-ul01">
                    <li><a href="#">商品名称</a></li>
                    <li><a href="#">单价</a></li>
                    <li><a href="#">数量</a></li>
                    <li><a href="#">小计</a></li>
                </ul>
            </div>
            <div class="infomation02">
                <ul class="info-ul02">
                    <li><a href="#"><img src="${shopInfo.shop_img }">
              			<span>${shopInfo.shop_name}</span></a>
                    </li>
                    <li><a href="#"><span id="shopprice">${shopInfo.shop_price }</span></a></li>
                    <li><a href="#"><span id="count">${count}</span></a></li>
                    <li><a href="#"><span style="color: red;" id="moneycount">${shopMoney}</span></a></li>
                </ul>
            </div>
            <div class="infomation04">
                <div class="address">
                    <span class="span">实付款:<span style="color: red;font-size: 20px;" id="moneycount2"></span></span>
                    <br>
                    <br>
                    <span class="span">寄送至:<span>长沙望城，大汉金桥国际未来城</span></span>
                    <br>
                    <br>
                    <span class="span">收货人:<span>小丸子&nbsp;1101121191</span></span>
                </div>
            </div>
            <div class="infomation05">
                <button type="button" class="btn" onclick="commit()">提交订单</button>
            </div>
        </div>
    </section>
    <!--订单列表-->
    <!-- 脚注区域 -->
    <footer class="bs-docs-footer navbar-static-bottom">
        <div class="footer">
            <ul class="footer-ul">
                <li><a href="#">天猫</a></li>
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
    <script type="text/javascript" src="js/shopping.js"></script>
</body>

</html>
<script>

		var moneycount=document.getElementById("moneycount");
		var moneycount2=document.getElementById("moneycount2");
		moneycount2.innerHTML="￥"+moneycount.innerHTML;

		//提交订单  需要传用户的id 和总的单价
		function commit(){
			location.href="/ProjectOne/ByNowCommitServlet?money="+moneycount.innerHTML;
		}
</script>

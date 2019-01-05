<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>博康智慧养老</title>
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="css/main.css">
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
                        <a href="register.jsp" class="btn btn-guwei btn-sm"><span id="isregist">免费注册</span></a>
                        <a href="login.jsp" class="btn btn-link btn-sm"><span id="islogin">登录</span></a>
                        <a href="/ProjectOne/AddShopCarServlet?shopname=null&count=0" class="btn btn-link btn-sm">购物车
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
                    <a class="navbar-brand" href="index.html">
                        <img src="img/logo1.png" alt="">
          </a>
                </div>
                <div id="nav_list" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a data-toggle="dropdown" href="#">实体商品
                <span class="glyphicon glyphicon-menu-down"></span>
              </a>
                            <ul class="dropdown-menu multi-level">
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
    <!-- 广告轮播 -->
    <section id="main_ad" class="carousel slide" data-ride="carousel">
        <!-- 下面的小点点，活动指示器 -->
        <ol class="carousel-indicators">
            <li data-target="#main_ad" data-slide-to="0" class="active"></li>
            <li data-target="#main_ad" data-slide-to="1"></li>
            <li data-target="#main_ad" data-slide-to="2"></li>
            <li data-target="#main_ad" data-slide-to="3"></li>
        </ol>
        <!-- 轮播项 -->
        <div class="carousel-inner" role="listbox">
            <div class="item active" data-image-lg="img/011.png" data-image-xs="img/1_副本.png"></div>
            <div class="item" data-image-lg="img/012.png" data-image-xs="img/2_副本.png"></div>
            <div class="item" data-image-lg="img/013.png" data-image-xs="img/3_副本.png"></div>
            <div class="item" data-image-lg="img/014.png" data-image-xs="img/4_副本.png"></div>
        </div>
        <!-- 控制按钮 -->
        <a class="left carousel-control" href="#main_ad" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
        <a class="right carousel-control" href="#main_ad" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    </section>
    <!-- /广告轮播 -->
    <!-- 立即预约 -->
    <!-- 商品展示 -->
    <section id="products">
        <div class="container">
            <!-- 选项卡标题 -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#category_01" aria-controls="category_01" role="tab" data-toggle="tab" aria-expanded="false" >全部</a></li>
                <li role="presentation"  id="li1"><a href="#category_02" aria-controls="category_02" role="tab" data-toggle="tab" aria-expanded="true">油盐酱醋</a></li>
                <li role="presentation" id="li2"><a href="#category_03" aria-controls="category_03" role="tab" data-toggle="tab" aria-expanded="false">零食</a></li>
                <li role="presentation" id="li3"><a href="#category_04" aria-controls="category_04" role="tab" data-toggle="tab" aria-expanded="false">百货</a></li>
                <li role="presentation" id="li4"><a href="#category_05" aria-controls="category_05" role="tab" data-toggle="tab" aria-expanded="false">其他</a></li>
                <li class="pull-right"><a href="#">更多</a></li>
            </ul>
            <!-- 所有的选项卡内容 -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="category_01">
                    <div class="row">
                    	<c:forEach items="${AllShop}" var="lists">
                    		<div class="col-xs-6 col-xs-3">
	                            <div class="thumbnail">
	                                <a href="/ProjectOne/ShopInfoServlet?shopid=${lists.shop_id}"><img src="${lists.shop_img}"></a>
	                                <div class="caption">
	                                    <h4 style="text-align:center">${lists.shop_name}</h4>
	                                    <p style="color: red;text-align:center">￥${lists.shop_price}</p>
	                                </div>
	                            </div>
                        	</div>
                    	</c:forEach>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="category_02">
                    <div class="row">
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (6).png"></a>
                                <div class="caption">
                                    <h4>蛋白粉</h4>
                                    <p style="color: red">￥49</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (7).png"></a>
                                <div class="caption">
                                    <h4>不锈钢菜刀</h4>
                                    <p style="color: red">￥79</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (8).png"></a>
                                <div class="caption">
                                    <h4>老年高钙奶粉</h4>
                                    <p style="color: red">￥119</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="category_03">
                    <div class="row">
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (6).png"></a>
                                <div class="caption">
                                    <h4>氨基酸的</h4>
                                    <p style="color: red">￥29</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (7).png"></a>
                                <div class="caption">
                                    <h4>撒地方</h4>
                                    <p style="color: red">￥29</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (11).png"></a>
                                <div class="caption">
                                    <h4>了我的手</h4>
                                    <p style="color: red">￥29</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="category_04">
                    <div class="row">
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (11).png"></a>
                                <div class="caption">
                                    <h4>了我的手</h4>
                                    <p style="color: red">￥29</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="category_05">
                    <div class="row">
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (2).png"></a>
                                <div class="caption">
                                    <h4>了我的手</h4>
                                    <p style="color: red">￥29</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="category_06">
                    <div class="row">
                        <div class="col-xs-6 col-xs-3">
                            <div class="thumbnail">
                                <a href="commodity.html"><img src="img/a (7).png"></a>
                                <div class="caption">
                                    <h4>了我的手</h4>
                                    <p style="color: red">￥29</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /商品展示 -->
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
</body>
</html>


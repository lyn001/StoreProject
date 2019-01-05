<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <title>用户注册</title>
  <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/register.css">
  <!--[if lt IE 9]>
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
  <![endif]-->
</head>
<body>
	<!-- 顶部通栏 -->
	<header id="header" class="">
		<!-- <div class="topbar hidden-sm hidden-xs"> -->
		<div class="topbar visible-md visible-lg">
      <div class="container">
        <div class="row">
          <div class="col-md-2 text-center">
            <a href="#" class="mobile-link">
              <i class="icon-mobilephone"></i>
              <span>微社区</span>
              <i class="glyphicon glyphicon-chevron-down"></i>
              <img src="img/c_06.jpg" height="136" width="120" alt="扫一扫">
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
	</header>
	<!-- /顶部通栏 -->
	<!-- logo以及小标题 -->
	<section id="logoAndTitle">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="logo">
            <img src="img/11121212.png" height="65px">     
          </div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- /logo以及小标题 -->
	<!-- class="btn disabled" -->
	<section id="register">
		<!-- 导航栏 -->
		 <div class="container"> 
	         <ul class="nav nav-tabs" role="tablist" id="reg">
	             <li role="presentation" class="active">
	               <a href="#category_01" aria-controls="category_01" role="tab" data-toggle="tab"  aria-expanded="false">1、用户注册</a>
	             </li>
	             <li role="presentation">
	               <a href="#category_02" aria-controls="category_02" role="tab" data-toggle="tab" aria-expanded="true" class="btn disabled">2、完善个人信息</a>
	             </li>
	             <li role="presentation">
	               <a href="#category_03" aria-controls="category_03" role="tab" data-toggle="tab" aria-expanded="true" class="btn disabled">3、注册成功</a>
	             </li>
	        </ul>
	     </div>
	     <div class="tab-content" id="tab-content1">
	     	<div role="tabpanel" class="tab-pane fade in active" id="category_01" id="home">
	     		<form action="register_submit" method="get" accept-charset="utf-8" id="verify">
	              <div class="input-group">
		              <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-phone"></i></span>
		              <input type="tel" maxlength='11' class="form-control" id="uname" placeholder="请输入用户名" aria-describedby="basic-addon1">
		              <span id="unamespan"></span>
	              </div>
	              <div class="input-group">
		              <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span>
		              <input type="text" maxlength='6' class="form-control" id="upwd" placeholder="请输入密码" aria-describedby="basic-addon1">
		              <span id="upwdspan"></span>
	              </div>
	              <div class="input-group">
		              <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span>
		              <input type="text" maxlength='6' class="form-control" id="reupwd" placeholder="请重新输入密码" aria-describedby="basic-addon1">
		              <span id="reupwdspan"></span>
	              </div>
	              <div class="input-group" style="margin-bottom: 1%;">
	              	  <a href="#" id="next" class="btn btn-primary btn-lg" role="button" id="next" >下一步</a>
	              </div>
	          </form>
	     	 </div>
	       	<div role="tabpanel" class="tab-pane fade" id="category_02" id="home">
	                <div class="form-group">
	                  <input type="text" class="form-control-update" id="text" name="name" placeholder="姓名">
	                  <span id="Vnamespan"></span>
	                </div>
	                <div class="form-group">
	                  <select class="form-control-update" name="sex"   id="select1">
	                    <option value="0">女</option>
	                    <option value="1">男</option>
	                  </select>
	                </div>
	                <div class="form-group">
	                  	<input type="tel" class="form-control-update" id="age" name="age"  placeholder="年龄">
	                  	 <span id="Vagespan"></span>
	                </div>
	                <div class="form-group">
	                    <input type="tel" class="form-control-update" id="telnum" name="tellphone" placeholder="手机号">
	                     <span id="Vtellphonespan"></span>
	                </div>
	                <div class="form-group">
	                    <input type="tel" class="form-control-update" id="tel" name="phone" placeholder="固定电话">
	                     <span id="Vphonespan"></span>
	                </div>
	                <div class="form-group">
	                    <input type="text" class="form-control-update" id="address" name="addres" placeholder="家庭住址">
	                </div>
	                <div class="form-group">
	                    <input type="tel" class="form-control-update" id="cardnum" name="bankid" placeholder="一卡通卡号">
	                </div>
	                <div class="form-group">
	                    <input type="text" class="form-control-update" id="row" name="street" placeholder="所属街道">
	                </div>
	                <div class="form-group">
	                    <select name="wangdian" class="form-control-update" name="select2" id="select2">
	                      <option value="moren">请选择所属街道</option>
	                      <option value="nihao">你好</option>
	                    </select>
	                </div>
	                <div class="form-group">
	                    <input type="text" class="form-control-update" id="childname" name="childname" placeholder="子女姓名">
	                </div>
	                <div class="form-group">
	                    <input type="tel" class="form-control-update" id="childtel" name="childphone" placeholder="子女电话">
	                </div>
	                <div id="btn_contaner" class="form-group">
		                 <button class="btn-update btn-default-update btn btn-primary" id="sub">提交</button>
		                 <button type="submit" class="btn-update btn-default-update btn btn-primary" id="prev">上一步</button>
	                </div>
	         </div>
	     	<div role="tabpanel" class="tab-pane fade" id="category_03" id="home">
	     	 	<div id="icon-right-check" style="width: 100%;text-align: center;margin-top: 64px;">
	                  <i class="glyphicon glyphicon-check"></i>
	            </div>
	            <div class="succ-wenzi" style="margin-top: 25px;text-align: center;width: 100%;">
	              <span id="reg_message" style="color: #333;font-size: 30px;">恭喜您，注册成功</span>
	            </div>
	            <div class="succ-cond" style="width: 100%;margin-top: 2%;margin-left: 29%;">
	              <p><span id="reg_text" style="color: #666;font-size: 14px;">这里是展示升级成为会员后可享受会员价格/折扣，或参加特定优惠活动文本，非会员则不可。</span></p>
	            </div>
	            <div id="btn_contaner" class="form-group" style="width: 88%;margin-top: 29px; display: block;">
	              <a href="login.jsp" class="btn-update btn-default-update" role="button">返回登录</a>
	           </div>
	        </div>
	     </div>
	</section>

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
  
	<script src="lib/jquery/jquery.js"></script>
	<script src="lib/bootstrap/js/bootstrap.js"></script>
  	<script src="lib/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
  	<script src="js/register.js"></script>
<script>
   var register =  document.getElementById("reg"); //拿到id为reg的标签
   var lis = register.children;//用户注册 详细信息 注册成功三个标签  li
   var next = document.getElementById("next");//下一步这个按钮
   var tab = document.getElementById("tab-content1");//拿到要操作的三个盒子的爸爸
   var divs = tab.children;//用一个数组装三个要操作的盒子
   var sub = document.getElementById("sub");//提交的按钮 这句暂时忽略
   var a = null;
   var prev = document.getElementById("prev");//上一步的按钮
   //next 下一步的按钮   点击next这个按钮的时候触发这段代码
   //onmouseover 鼠标悬挂    onmouseout 鼠标离开事件
   
  
   var responseText=null;
   //判断账户是否已经存在 //用户名确定的ajax
   var uname=document.getElementById("uname");
   uname.onblur=function(){
	   $.ajax({
   		   type: "GET",
   		   url: "/ProjectOne/UserRegisterServlet?uname="+uname.value,
   		   success: function(msg){
   			   var unamespan=document.getElementById("unamespan");
			   responseText = msg;
			   if("true"==responseText){
				   //没有此用户
				   unamespan.innerHTML="用户名成功";
				   unamespan.style.color="green";
			   }else{
				   if(""==responseText){
					   unamespan.innerHTML="用户名不能为空";
					   unamespan.style.color="red";
				   }else{
					   unamespan.innerHTML="该用户名已存在";
					   unamespan.style.color="red";
				   }
			   }
   		   }
   	   });
   }
   //确定密码的ajax
    var reupwdspan=document.getElementById("reupwdspan");
   	var upwdspan=document.getElementById("upwdspan");
    var upwd=document.getElementById("upwd");
    var reupwd=document.getElementById("reupwd");
    upwd.onblur=function(){
       $.ajax({
   		   type: "GET",
   		   url: "/ProjectOne/UserRegisterServlet?upwd="+upwd.value+"&reupwd="+reupwd.value,
   		   success: function(){
   			   if(upwd.length!=undefined || upwd.value!=""){
   				   upwdspan.innerHTML="";
			   }else{
				   upwdspan.innerHTML="密码不能为空";
				   upwdspan.style.color="red";
			   }
   			   
   		   }
   	   });
   }
  
   reupwd.onblur=function(){
	   $.ajax({
		   type: "GET",
		   url: "/ProjectOne/UserRegisterServlet?upwd="+upwd.value+"&reupwd="+reupwd.value,
		   success: function(){
			   if(upwd.value!=reupwd.value){
				   reupwdspan.innerHTML="二次输入的密码不一样";
				   reupwdspan.style.color="red";
			   }else{
				   reupwdspan.innerHTML="";
			   }
		   }
	   });
   }
   
   //下一步按钮
   next.onclick = function(){
	  //判断输入的密码和再次输入的是否相同
	  var flag=false; 
	  if("true"==responseText){
		  //没有此用户
		  if(upwd.value==reupwd.value){
			  flag=true;
		  }	  
	  }
	  if(flag){
		  $.ajax({
			   type: "GET",
			   url: "/ProjectOne/UserRegisterServlet?uname="+uname.value+"&upwd="+upwd.value+"&reupwd="+reupwd.value
		  });
		  for(var i=0;i<lis.length;i++){
		        //找到当前显示的标签 和 内容
		          if(lis[i].className=="active"){
		          	//让当前显示的标签的classname为空
		           	lis[i].className = "";
		            divs[i].classList.remove("active");
		            divs[i].classList.remove("in");
		            a = i+1;
		          }
		      }
		      //让当前显示内容的盒子的classname部位active和in
		      lis[a].className="active";
		      divs[a].classList.add("in");
		      divs[a].classList.add("active");
	  }
   }
   
   //上一步按钮
   prev.onclick=function(){
      for(var i=0;i<lis.length;i++){
          if(lis[i].className=="active"){
            lis[i].className = "";
            divs[i].classList.remove("active");
            divs[i].classList.remove("in");
            a = i-1;
          }
      }
      lis[a].className="active";
      divs[a].classList.add("in");
      divs[a].classList.add("active");
   }
   
   var Vname=document.getElementsByName("name")[0];
   var Vnamespan=document.getElementById("Vnamespan");
   var Vage=document.getElementsByName("age")[0];
   var Vagespan=document.getElementById("Vagespan");
   var Vtellphone=document.getElementsByName("tellphone")[0];
   var Vtellphonespan=document.getElementById("Vtellphonespan");
   var Vphone=document.getElementsByName("phone")[0];
   var Vphonespan=document.getElementById("Vphonespan");
   
   Vname.onblur=function(){
	   $.ajax({
		   type: "GET",
		   url: "/ProjectOne/UserRegisterServlet",
		   success: function(){
			   if(Vname.length==0 || Vname.value==""){
				   Vnamespan.innerHTML="不能为空";
				   Vnamespan.style.color="red";
			   }else{
				   Vnamespan.innerHTML="";
			   }
		   }
	  });
   } 
   Vage.onblur=function(){
	   $.ajax({
		   type: "GET",
		   url: "/ProjectOne/UserRegisterServlet",
		   success: function(){
			   if(Vage.length==0 || Vage.value==""){
				   Vagespan.innerHTML="不能为空";
				   Vagespan.style.color="red";
			   }else{
				   Vagespan.innerHTML="";
			   }
		   }
	  });
   }
   Vtellphone.onblur=function(){
	   $.ajax({
		   type: "GET",
		   url: "/ProjectOne/UserRegisterServlet",
		   success: function(){
			   if(Vtellphone.length==0 || Vtellphone.value==""){
				   Vtellphonespan.innerHTML="不能为空";
				   Vtellphonespan.style.color="red";
			   }else{
				   Vtellphonespan.innerHTML="";
			   }
		   }
	  });
   }
   Vphone.onblur=function(){
	   $.ajax({
		   type: "GET",
		   url: "/ProjectOne/UserRegisterServlet",
		   success: function(){
			   if(Vphone.length==0 || Vphone.value==""){
				   Vphonespan.innerHTML="不能为空";
				   Vphonespan.style.color="red";
			   }else{
				   Vphonespan.innerHTML="";
			   }
		   }
	  });
   }
   var notNull=function(obj,v){
	   $.ajax({
		   type: "GET",
		   url: "/ProjectOne/UserRegisterServlet",
		   success: function(){
			   if(v.length==0 || v.value==""){
				   obj.innerHTML="不能为空";
				   obj.style.color="red";
			   }else{
				   obj.innerHTML="";
			   }
		   }
	  });
   }
   //提交按钮
   sub.onclick=function(){
	 //应该将第二个页面的所有信息都携带过去注册页面
	 var name=Vname.value;
	 var sex=document.getElementsByName("sex")[0].value;
	 var age=Vage.value;
	 var tellphone=Vtellphone.value;
	 var phone=Vphone.value;
	 var addres=document.getElementsByName("addres")[0].value;
	 var bankid=document.getElementsByName("bankid")[0].value;
	 var street=document.getElementsByName("street")[0].value;
	 var childname=document.getElementsByName("childname")[0].value;
	 var childphone=document.getElementsByName("childphone")[0].value;
	 var flag=true;
	 if(name.length==0 || name==""){
		 notNull(Vnamespan,Vname);
		 flag=false;
	 }
	 if(age.length==0 || age==""){
		 notNull(Vagespan,Vage);
		 flag=false;
	 }
	 if(tellphone.length==0 || tellphone==""){
		 notNull(Vtellphonespan,Vtellphone);
		 flag=false;
	 }
	 if(phone.length==0 || phone==""){
		 notNull(Vphonespan,Vphone);
		 flag=false;
	 }
	 if(flag){
		 $.ajax({
			   type: "GET",
			   url: "/ProjectOne/UserRegisterServlet?uname="+uname.value+"&upwd="+upwd.value
				 +"&name="+name+"&sex="+sex+"&age="+age+"&tellphone="+tellphone
				 +"&phone="+phone+"&addres="+addres+"&bankid="+bankid+
				 "&street="+street+"&childname="+childname+"&childphone="+childphone+"&submit=ture",
			   success: function(msg){
				   msg=msg.substring(msg.length-2, msg.length);
				   if(msg=="ok"){
					   for(var i=0;i<lis.length;i++){
					          if(lis[i].className=="active"){
					            lis[i].className = "";
					            divs[i].classList.remove("active");
					            divs[i].classList.remove("in");
					            a = i+1;
					          }
					     }
					     lis[a].className="active";
					     divs[a].classList.add("in");
					     divs[a].classList.add("active");
				   }
			   }
		   });
	 }
	 
   }
   
</script> 
</body>
</html>

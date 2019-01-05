/*

	注册的表单验证

*/


$(function(){
	 $('form').bootstrapValidator({
　　　　　　　message: 'This value is not valid',
            　feedbackIcons: {
　　　　　　　　valid: 'glyphicon glyphicon-ok',
　　　　　　　　invalid: 'glyphicon glyphicon-remove',
　　　　　　　　validating: 'glyphicon glyphicon-refresh'
        　　　},
              fields: {
                username: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        }
                    }
                },
                age: {
                    validators: {
                        notEmpty: {
                            message: '年龄不能为空'
                        }
                    }
                },
                telnum:{
                	validators:{
                		notEmpty:{
                			message:'手机号码不能为空'
                		},
                        regexp: {
                            regexp: /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1})|(14[0-9]{1}))+\d{8})$/,
                            message: '手机号码格式不正确'
                        }
                	}
                },
                tel:{
                	notEmpty:{
                		message:'电话号码不能为空'
                	},
                	regexp:{
                		regexp: /^(?:(?:0\d{2,3})-)?(?:\d{7,8})(-(?:\d{3,}))?$/,
                		message:'电话号码格式不正确'
                	}
                },
                address:{
                	notEmpty:{
                		message:'家庭住址不能为空'
                	},
                	regexp:{
                		regexp:/[\dA-Za-z\u4E00-\u9FA5]+/,
                		message:'住址格式不正确'
                	}
                },
                childname:{
                	notEmpty:{
                		message:'子女姓名不能为空'
                	},
                	regexp:{
                		regexp:/^([\u4e00-\u9fa5]){2,7}$/,
                		message:'姓名格式不合法'
                	}
                },
                childtel:{
                	notEmpty:{
                		message:'子女电话不能为空'
                	},
                	regexp:{
                		regexp: /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1})|(14[0-9]{1}))+\d{8})$/,
                		message: '手机号码格式不正确'
                	}
                }
            }
        });
})

<script>
   var register =  document.getElementById("reg");
   var lis = register.children;
   var next = document.getElementById("next");
   var tab = document.getElementById("tab-content1");
   var divs = tab.children;
   var sub = document.getElementById("sub");

   var a = null;
   var prev = document.getElementById("prev");
   next.onclick = function(){
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
   sub.onclick=function(){
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
 </script>
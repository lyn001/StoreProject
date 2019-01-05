
$(function() {
	var dan = $(".dan").text();
	var procount = $(".num").text();
	var arrdan = dan.split("￥");
	var arrprocount = procount.split("x");
	var sum = 0.0;
	var sums = new Array(arrdan.length);
	for (var i = 0; i < arrdan.length; i++) {
		if (i != 0) {
			var dans = parseFloat(arrdan[i]);
			var procounts = parseFloat(arrprocount[i]);
			sum = dans * procounts;
			sums[i] = sum;
		}

	}
	for (var i = 0; i < sums.length; i++) {
		if (i != 0) {
			//console.log("sums="+sums[i]);
			$(".moneyonlysum" + i).text("" + sums[i]);
		}
	}
	$("input[name='check']").each(function(index, el) {
		$(this).val("" + sums[index + 1]);
	});
	$("a[class='shopa']").each(function(index, elements) {
		$(this).hover(function() {
			//console.log($(".shopimg"+index));
			$(".shopimg" + index).show();
		}, function() {
			$(".shopimg" + index).hide();
		});;
	});

	var money = "￥0.0";
	var b = 0.0;
	var cc = 0.0;
	$(".allcheck").click(function() {
		//判断checkall的属性checked的值是否是checked。  
		//如果是所有的选项框都打上对号  
		//如果不是，将所有的选项框的对号清空  
		var c = "";
		var carr = new Array();
		if ($(".allcheck").prop("checked") == true) {
			$("input:checkbox").prop("checked", true);
			$("input:checkbox").attr("checked", "checked");
			$("input[type='checkbox']").each(function(index, elements) {
				c += $(this).val() + ",";
				carr = c.replace("on", "").split(",");
				console.log(carr.length);
				if (carr.length == sums.length - 1 + 2) {
					for (var i = 0; i < carr.length; i++) {
						if (carr[i] != "") {
							console.log(carr[i]);
							b += parseFloat(carr[i]);
							b = Math.round(b * 10) / 10;
						}
					}
				}
			});
		} else {
			$("input:checkbox").prop("checked", false);
			$("input:checkbox").removeAttr("checked");
			$("input[type='checkbox']").each(function() {
				c += $(this).val() + ",";
				carr = c.replace("on", "").split(",");
				console.log(carr.length);
				if (carr.length == sums.length - 1 + 2) {
					for (var i = 0; i < carr.length; i++) {
						if (carr[i] != "") {
							b = 0.0;
						}
					}
				}
			});
		}
		$("#shopmoney").text("￥" + b);
		money = $("#shopmoney").text();
		if (money == "￥0.0" || money == "￥0") {
			//console.log("hahaha"+money);
			$("#shopping-sum").hover(function() {
				$("#shopping-sum").removeClass('shopping-sums');
				$("#shopping-sum").addClass('shopping-summ');
			}, function() {
				$("#shopping-sum").removeClass('shopping-sums');
				$("#shopping-sum").addClass('shopping-summ');
			});
		} else {
			//console.log(money);
			$("#shopping-sum").hover(function() {
				$("#shopping-sum").removeClass('shopping-summ');
				$("#shopping-sum").removeClass('shopping-sum');
				$("#shopping-sum").addClass('shopping-sums');
			}, function() {
				$("#shopping-sum").removeClass('shopping-summ');
				$("#shopping-sum").removeClass('shopping-sum');
				$("#shopping-sum").addClass('shopping-sums');
			});
		}
	});
	$("input[name='check']").each(function(index, elements) {
		$(elements).click(function(event) {
			if ($(elements).prop("checked")) {
				var a = "";
				var arr = new Array();
				a += $(elements).val() + ",";
				arr = a.split(",");
				for (var i = 0; i < arr.length; i++) {
					if (i != arr.length - 1) {
						console.log(arr[i]);
						b += parseFloat(arr[i]);
						b = Math.round(b * 10) / 10;
					}
				}
			} else {
				var a = "";
				var arr = new Array();
				a += $(elements).val() + ",";
				arr = a.split(",");
				for (var i = 0; i < arr.length; i++) {
					if (i != arr.length - 1) {
						console.log(arr[i]);
						b -= parseFloat(arr[i]);
						b = Math.round(b * 10) / 10;
					}
				}
			}
			$("#shopmoney").text("￥" + b);
			money = $("#shopmoney").text();
			if (money == "￥0.0" || money == "￥0") {
				//console.log("hahaha"+money);
				$("#shopping-sum").hover(function() {
					$("#shopping-sum").removeClass('shopping-sums');
					$("#shopping-sum").addClass('shopping-summ');
				}, function() {
					$("#shopping-sum").removeClass('shopping-sums');
					$("#shopping-sum").addClass('shopping-summ');
				});
			} else {
				//console.log(money);
				$("#shopping-sum").hover(function() {
					$("#shopping-sum").removeClass('shopping-summ');
					$("#shopping-sum").removeClass('shopping-sum');
					$("#shopping-sum").addClass('shopping-sums');
				}, function() {
					$("#shopping-sum").removeClass('shopping-summ');
					$("#shopping-sum").removeClass('shopping-sum');
					$("#shopping-sum").addClass('shopping-sums');
				});
			}
		});
	});
	$("#shopmoney").text("￥0.0");
	$(".badge").text("" + sums.length - 1);


	//如果清空子选项框的对号，则将全选选项框的对号清空。  
	$("input[name='check']").bind({
		change: function() {
			$("input[name='check']").each(function() //遍历每个.checkcell的checkbox  
				{
					if ($(this).prop("checked") == false) //如果checkcell取消选中  
					{
						$(this).removeAttr("checked"); //先删除它的checked属性，便于统计被选中的checkcell  
						$(".allcheck").removeAttr("checked");

					} else {
						$(this).prop("checked", true); //如果checkcell被选中，页面显示选中  
						$(this).attr("checked", "checked"); //checked属性值设置为checked  
					}
				});
			var checkedLength = $(".checkcell[checked='checked']").length; //attr方法赋值checked都为计算出子checkbox的长度  
			var subLength = $(".checkcell").length;
			//如果所有的子checkbox个数不等于选中的checkbox的个数，就取消全选框的对号  
			if (subLength != checkedLength) {
				$(".allcheck").prop("checked", false);
			} else { //如果所有的子checkbox被选中，全选框也全选中  
				$(".allcheck").attr("checked", "checked");
				$(".allcheck").prop("checked", true);
			}

		}
	});
});


$(document).ready(function(){
//加的效果
$(".add").click(function(){
var n=$(this).prev().val();
var num=parseInt(n)+1;
if(num==0){ return;}
$(this).prev().val(num);
});
//减的效果
$(".jian").click(function(){
var n=$(this).next().val();
var num=parseInt(n)-1;
if(num==0){ return}
$(this).next().val(num);
});
})
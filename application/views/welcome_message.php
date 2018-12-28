<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>
	<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
</head>
<body>




<div id="container">
	<p class="footer">เวลาในการโหลดหน้าเว็บ <strong>{elapsed_time}</strong> seconds. </p>
</div>
<div id="title">
<h3></h3>
<div>
<input type="text" id="txt1"> + <input type="text" id="txt2"> = <input type="text" id="txt3"> 
<input type="button" id="btn1" value="Click">
<input type="button" id="btn2" value="Clear">
<hr/>
<div id="div1">True www.google.com</div>
<button type="button" value="Click" id="btn_show">Show</button>
<button type="button" value="Click" id="btn_hide">Hide</button>
<hr>
<div id="div_slide">slide up, slide down, slide toggle</div>
<button type="button" value="Click" id="btn_slideup">slide up</button>
<button type="button" value="Click" id="btn_slidedown">slide down</button>
<button type="button" value="Click" id="btn_slidetoggle">slide toggle</button>
<hr/>
<div id="event_load"></div>
<button type="button" value="Click" id="btn_loadajex">event jquery load ajex</button>
<hr/>
<div class="show_ajax">
</div>
</div>
<button type="button" value="Click" id="btn_method_ajax">Click method ajax jquery</button>
<hr/>
<input type="text" id="txt1_val">
<input type="text" id="txt2_val">
<div id="data_01"></div>
<button type="button" id="btn_input_val" value="load">คลิก</button>
<script>
 //  ParseInt() ในการเปรียบเทียบค่า string หรือตัวแปรและส่งกลับให้เป็น Integer หรือจำนวนเต็ม
//  ParseFloat() ในการแปลงค่า string หรือตัวแปรให้เป็น Number
	$("#title h3").append("บวกเลข")
    $("#txt3").hide();
    $("#btn1").click(function(){
	$("#txt3").show();
	$("#txt3").val(parseFloat($("#txt1").val()) + parseFloat($("#txt2").val()));
	});
	$("#btn2").click(function(){
	$("#txt3").hide();
	$("#txt1").val('');
	$("#txt2").val('');
	$("#txt3").val('');
	});
	

	$("#btn_show").click(function(){
		$("#div1").show(1000);
	});
	$("#btn_hide").click(function(){
		$("#div1").hide(1000);
	});
	$("#btn_slideup").click(function(){
		$("#div_slide").slideUp(1000);
	});
	$("#btn_slidedown").click(function(){
		$("#div_slide").slideDown(1000);
	});
	$("#btn_slidetoggle").click(function(){
		$("#div_slide").slideToggle(1000);
	})
 // click load ajax
	$("#btn_loadajex").click(function(){
		$("#event_load").load('Products/load_jquery_ajex');
	});
 // Click method ajax 
    $("#btn_method_ajax").click(function(){
		$.ajax({
			type: "GET",
			url: "Products/method_ajax",
			success: function(data)
			{
			if( !$(this).hasClass("show_ajax") ) {   
				$(".show_ajax").html(data);  
			}
			},
			error: function(data_error)
			{
			$("#event_method_ajax").html(data_error);
			}
		});
	});
	$(".show_ajax").hide();
	
	$("#btn_method_ajax").click(function(){
		event.preventDefault();
		$(".show_ajax").toggle();
	});
	
	$("#btn_input_val").click(function(){
		var senddata = [{
    	text1: $("#txt1_val").val(),
    	text2: $("#txt2_val").val(), 
  		}];
		$.ajax({
			method: "POST",
			data: {myData: senddata},
			url: "Products/method_post_ajax",
		})
		.done(add)
		.fail(function(){
			alert("OH NO! FAILED");
		});
	});
	function add (data)
	{
		$('#data_01').html(data);
	}
</script>

</body>
</html>
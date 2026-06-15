<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
     효과
     hide / show / fadeOut / fadeIn / slideUp / slidDown / animation
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body{
 padding: 20px;
}
.btn-group {
 margin-bottom: 20px;
}
button {
  padding: 8px 12px;
  margin-right: 5px;
  cursor: pointer;
  
}
#box {
  width: 200px;
  height: 200px;
  background-color: red;
  position: relative;
  margin-top: 10px;
  border-radius: 8px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-4.0.0-rc.1.min.js"></script>
<script type="text/javascript">
$(function(){
	const duration=1000; // 1초
	$('#btn-hide').on('click',function(){
		$('#box').hide(duration);
	})
	$('#btn-show').on('click',function(){
		$('#box').show(duration);
	})
	$('#btn-fadeout').on('click',function(){
		$('#box').fadeOut(duration);
	})
	$('#btn-fadeIn').on('click',function(){
		$('#box').fadeIn(duration);
	})
	$('#btn-slideUp').on('click',function(){
		$('#box').slideUp(duration);
	})
	$('#btn-slideDown').on('click',function(){
		$('#box').slideDown(duration);
	})
	$('#btn-move').on('click',function(){
		$('#box').stop().animate({
			left:'200px',
			width:'300px',
			opacity:'0.5'
		},duration)
	})
	$('#btn-reset').on('click',function(){
		$('#box').stop().animate({
			left:'0px',
			width:'200px',
			height:'200px',
			opacity:'1'
		},duration)
	})
})
</script>
</head>
<body>
  <h1>Jquery 효과 관련 라이브러리</h1>
  <div class="btn-group">
   <button id="btn-hide">Hide</button>
   <button id="btn-show">show</button>
   <button id="btn-fadeout">fadeOut</button>
   <button id="btn-fadein">fadeIn</button>
   <button id="btn-slidUp">slidUp</button>
   <button id="btn-slidDown">slideDown</button>
   <button id="btn-move">Animate</button>
   <button id="btn-reset">Reset</button>
  </div>
  <div id="box"></div>
</body>
</html>
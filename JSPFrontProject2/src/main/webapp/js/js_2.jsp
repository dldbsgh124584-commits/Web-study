<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 *    선언적 함수
      function plus(a,b)
      {
	     return a+b
	
      }
      
      // => function 안에 function (이벤트 처리 등록)
      // => CallBack 안에
      익명의 함수
      const plus=function(a,b)
      {
    	  return a+b
      }
      const plus=(a,b)=>{return a+b}
      const plus=(a,b)=>a+b
 
 
 */
window.onload=()=>{
    // 문서 객체 가지고 오기 => 태그의 속성 제어 
    let h2=document.querySelector("h2")
    h2.style.color="blue"
    let h3=document.querySelector("h3")
    h3.style.color="green"
    let h1=document.querySelector("h1")
    h1.style.color="red"
    
    let colors=["pink","orange"]
    for(let i=0;i<h1.length;i++)
    {
    	h1[i].style.color=colors[i]
    }
    
    let h4_1 = document.getElementById("h4")
    h4_1.style.background='red'
    let h4_2 = document.getElementById("h4")
    h4_2[0].style.background='blue'
    let h4_3 = document.getElementById("h4")
    h4_3[0].style.background='green'
    
    /*
        document.getElementById()
        document.querySelector() => $("#")
        ------------------------- 1개만 가지고 온다
        document.getElementsByClassName()
        document.getElementsByName()
        document.getElementsByTagName()
        document.querySelectorAll()
        ------------------------------ 여러개 => 배열 []
    
    */
}
</script>
</head>
<body>
  <h1>Hello DOM!!-1</h1>
  <h2>Hello DOM!!</h2>
  <h3>Hello DOM!!</h3>
  <h1>Hello DOM!!-2</h1>
  <h4 id="h4">Hello DOM!!-ID</h4>
</body>
</html>
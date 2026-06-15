<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
     문서 객체 모델
     ----------- 태그를 제어하는 프로그램
                 --- 태그를 가지고 오는 문제 (객체 : 태그)
                 태그 => 클래스 , 속성 => 멤버변수
                 <a href="" target="">
                 class a
                 {
                   String href,target;
                 }
          DOM (Document Object Model)
     HTML / XML => ML(Markup language) => 메모리에 저장 (트리 형태)
     <html>
       <head>
         <body>
           <div></div>
           <div></div>
         </body>
       </head>
     </html>
     
     
                           html
                            |
                      --------------
                      |            |
                     head         body
                                   |
                               ---------------
                               |       |     |
                              div     div   span
                              
                              
              ***3. 속성이 없는 경우
                  document.querySelector("CSS 선택자")
                    id = document.querySelector("#id 명")
                    class = document.querySelector(".class 명")
                    tag = document.querySelector("태그명")
                    자손 = document.querySelector("태그명 > 태그명")
                    후손 = document.querySelector("태그명 태그명")
                    속성선택자 = document.querySelector("태그명[속성=값]")
                    속성선택자 = document.querySelector("태그명[속성*=값]")
                    속성선택자 = document.querySelector("태그명[속성$=값]")
                    속성선택자 = document.querySelector("태그명[속성^=값]")
                    구조선택자 = document.querySelector("태그명:nth-child(2n)")
             
                 4. 태그 선택 = document.getElementByTagName("태그명")
                   => 원하는 태그를 읽어 온다
                      ----------------- 속성값 변경 / 값 추가 / HTML 추가 / CSS 
                      document.getElementsByName() => name 속성
                      document.getElementsByClassName() => class 속성
                      document.querySelectorAll() => class속성 / 태그명
                      ----------------------------------------------
                      동시에 여러개의 태그 읽기 : <th> <li>                     
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
<!-- 바닐라 JS : 순수하게 자바 스크립트로 만든다 -->
/*    
 *       JSON
     서버 =====> 데이터 전송 =====> HTML 
 

 */

let sawon={
		name:"홍길동",
		getName:function(){
	       //document.write("이름:"+name)
	       let h1=document.querySelector("h1")
	       h1.style.color="red"
	       h1.style.background="yellow"
	       h1.textContent=this.name
	    },
	    setName:function(name){
	    	 this.name=name	    	
	    }
}
window.onload=()=>{
	sawon.setName("심청이")
	sawon.getName()	
}
</script>
</head>
<body>
  <h1></h1>
</body>
</html>
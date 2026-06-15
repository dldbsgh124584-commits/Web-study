<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
     객체 배열 : [{},{},{},{}...]
     JSP 파일
     -------
        - , . 이용이 불가능
        _,$
        
        a b.jsp
        
        class a b_jsp
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// 서버에서 값을 받아서 처리
let sawons=[
	{sabun:1,name:"홍길동",dept:"개발부",job:"대리",pay:3600,loc:"서울"},
	{sabun:2,name:"강감찬",dept:"영업부",job:"과장",pay:3600,loc:"부산"},
	{sabun:3,name:"을지문덕",dept:"인사부",job:"부장",pay:3600,loc:"인천"},
	{sabun:4,name:"여포",dept:"기획부",job:"팀장",pay:3600,loc:"대전"},
	{sabun:5,name:"장삼봉",dept:"개발부",job:"사원",pay:3600,loc:"대구"}
]
// 데이터 출력
const sawonList=()=>{
	document.write("<h3>사원 목록</h3>")
	document.write("<ul>")
	sawons.map((sa)=>{
		document.write("<li>"+sa.name+"</li>")		
	})
	document.write("</ul>")
}
const sawonInsert=()=>{
	sawons.push({sabun:6,name:"관우",dept:"개발부",job:"이사",pay:3600,loc:"서울"})
}
const sawonDetail=(sabun)=>{
	document.write("<h3>사원 상세</h3>")
	let sawon=sawons.find(sa=>sa.sabun===sabun)
	document.write("사번:"+sawon.sabun+"<p>")
	document.write("이름:"+sawon.name+"<p>")
	document.write("부서:"+sawon.dept+"<p>")
	document.write("직위:"+sawon.job+"<p>")
	document.write("연봉:"+sawon.pay+"<p>")
	document.write("근무지:"+sawon.loc+"<p>")
	
}
const sawonDelete=(sabun)=>{
	const result=sawons.fliter(sa=> sa.sabun!==sabun)
	document.write("<ul>")
	result.map((sa)=>{
		document.write("<li>"+sa.name+"</li>")		
	})
	document.write("</ul>")
}
window.onload=function(){
	//sawonList()
	//sawonInsert()
	sawonList()
	//sawonDetail(2)
	sawonDelete(3)
}
</script>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.text.*"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>JSTL</h1>
   <%--
        1. JSTL : XML 형식
                  -------
                  1. 문법이 엄격하다
                  2. 문법
                     여는태그 / 닫는 태그가 동일
                     -------------------- 독립태그도 반드시 닫는다 <input />
                     속성값은 반드시 ""
                     
                     
    --%>
   <c:forEach var="i" begin="1" end="10">
    <c:choose>
     <c:when test="${i%2==0}">
       <h3>${ i += "는 짝수입니다"}</h3>
     </c:when>
     <c:otherwise>
        <h3>${ i += "는 홀수입니다"}</h3>
     </c:otherwise>
    </c:choose>
   </c:forEach>
   <h1>변환 : 날짜</h1>
   <%
      Date date=new Date();
      SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
      String today=sdf.format(date);
   %>
   실제 날짜 : <%=date %><br>
   오늘 날짜 : <%= today %><br>
   <c:set var="date" value="<%=date %>"/>
   오늘 날짜:<fmt:formatDate value="${date }" pattern="yyyy-MM-dd"/>
   <h1>변환 : 숫자</h1>
   <%
      int won=1234567;
      DecimalFormat df=new DecimalFormat("#,###,###");
      String s=df.format(won); 
   %>
   실제 값:<%=won %><br>
   브라우저 출력값: <%=s %><br>
   <c:set var="won" value="1234567"/>
   변환 : <fmt:formatNumber value="${won }" type="currency"/>
</body>
</html>
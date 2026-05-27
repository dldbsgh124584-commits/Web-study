<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%--
    JSTL => Java Standard Tag Lib
                 -------- 표준 (실무=> 사용자 정의도 가능 => JSTL)
    
    기본
      --------------------------------------------
      core ==> prefix="c" uri="jakarta.tags.core"
        => 변수 선언
           String name="홍길동"
           request.setAttribute("name",name)
           => <c:set var="name" value="홍길동"/> => request.setAttribute()
                     ---------  -------------
                      key         값 ==> Map 방식
        => 제어문
           = 반복문
             for(int i=1;i<=10;i++)
             
             => <c:forEach var="i" begin="1" end="10" step="1">
                           ------- --------  -------- ---------
                           int i    i=1       i<=10    i++
             for(String name:list)
             => <c:forEach var="name" items="${list}">
             
           = 조건문
             if(i>10) ==> <c:if test="${i>10}">
             if(name.equals("aaa")) ==> <c:if test="${name=='aaa'}">
                                              ---- 조건문 작성
           = 다중 조건문
             if ~ else / 다중조건문 / 선택문
             <c:choose>
              <c:when test="조건">출력값</c:when> => if
              <c:otherwise></c:otherwise> => else
             </c:choose>
             <c:choose>
              <c:when test="조건">출력값</c:when> => if
              <c:when test="조건">출력값</c:when>
              <c:when test="조건">출력값</c:when>
              <c:when test="조건">출력값</c:when>
              <c:when test="조건">출력값</c:when>
              <c:otherwise></c:otherwise> => else
             </c:choose>
        => 화면이동
           response.sendRedirect("list.jsp")
           <c:redirect url="list.jsp">
      --------------------------------------------
      format ==> prefix="fmt" uri="jakarta.tags.format"
        <fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd">
         => SimpleDateFormat
         => TO_CHAR
        <fmt:formatNumber value="1234567" type="currency">
           1,234,567
         => DecimalFormat
         => TO_CHAR
      functions ==> prefix="fn" uri="jakarta.tags.functions"
         => 자바의 String 클래스 메소드
         fn:length() , fn:substring() , fn:trim() ....
      -------------------------------------------------------
      사용하지 않는다 : 보안
      xml => prefix="xml" uri="jakarta.tags.xml" => Manager
      sql => prefix="sql" uri="jakarta.tags.sql" => DAO
      
      EL / JSTL => 실무
 --%>
 <%
    List<String> list=new ArrayList<String>();
    list.add("홍길동");
    list.add("심청이");
    list.add("춘향이");
    list.add("박문수");
    list.add("이순신");
    
    request.setAttribute("list1", list); // JSTL / EL 을 쓰려면 request에 담아야 한다 
    session.setAttribute("list2", list); // session => Object
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>고전 방식</h1>
  <ul>
   <%
     for(String name:list)
     {
   %>
       <li><%=name %></li>
   <%	 
     }
   %>
  </ul>
  <h1>현대 방식</h1>
  <%--
     var i=10
     i=10.5
     i=[]
     i={}
     i="aaa"
   --%>
  <ul>
   <%--
        items="${list}"
        request.setAttribute("list", list);
        => request 우선
        session.setAttribute("list", list); 
    --%>
   <c:forEach var="name" items="${list1}"><%-- 배열 / 컬렉션 --%>
       <li>${name}</li>
   </c:forEach>
  </ul>
  <h1>Session 값 출력</h1>
  <ul>
   <c:forEach var="name" items="${list2}"><%-- 배열 / 컬렉션 --%>
       <li>${name}</li>
   </c:forEach>
  </ul>
  <h1>조건 처리</h1>
</body>
</html>
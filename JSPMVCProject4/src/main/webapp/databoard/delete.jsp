<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:choose>
  
    <c:redirect url="list.do"/>
  
   <script>
    alert("비밀번호가 틀립니다");
    history.back()
   </script>
 
</c:choose>
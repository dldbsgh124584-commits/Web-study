<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 버전 : <%=application.getMajorVersion()%><br>
 버전 : <%=application.getMinorVersion()%><br>
 <%=application.getMajorVersion()+"."+application.getMinorVersion()%>
 <%-- 서블릿 버전 --%>
 <br>
 서버이름:<%= application.getServerInfo() %>
 <%
   String driver=application.getInitParameter("driver");
 String url=application.getInitParameter("url");
 String user=application.getInitParameter("username");
 String pwd=application.getInitParameter("password");
 
 application.log("driver:"+driver);
 application.log("url:"+url);
 application.log("username:"+user);
 application.log("password:"+pwd);
 %>
 <br>
 ***<%= application.getRealPath("/") %>
</body>
</html>

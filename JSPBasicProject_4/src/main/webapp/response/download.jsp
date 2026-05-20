<%@page import="java.awt.image.DataBufferDouble"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*,java.net.*"%>
<%
   String fn=request.getParameter("fn");
   String path="c:\\javaDev";
   try
   { 
	   response.setHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(fn,"UTF-8"));
	   File file=new File(path+"\\"+fn);
	   response.setContentLength((int)file.length());
	   // 프로그래스ㅂ
	   BufferedInputStream bis=new BufferedInputStream(new FileInputStream(file));
	   BufferedOutputStream bos=new BufferedOutputStream(response.getOutputStream());
	   byte[] buffer=new byte[1024];
	   int i=0;
	   while((i=bis.read(buffer,0,1024))!=-1)
	   {
		   bos.write(buffer,0,i);
	   }
	   bis.close();
	   bos.close();
	   out.clear();
	   out=pageContext.pushBody();
   }catch(Exception ex){}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
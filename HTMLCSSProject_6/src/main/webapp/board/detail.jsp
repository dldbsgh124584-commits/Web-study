<%@ page import="java.util.*,com.sist.dao.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String no=request.getParameter("no");
  
   BoardDAO dao=new BoardDAO();
   BoardVO vo=dao.boardDetailData(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
  margin-top: 50px;
}
.row {
  margin: 0px auto; /* 가운데 정렬 */
  width : 800px;
}
h3 {
  text-align: center;
}
.board-wrap{
  background: #fff;
  padding: 30px;
  border-radius: 18px;
  box-shadow: 0 8px 25px rgba(0,0,0,0.08);
}
.btn-success{
  border: none;
  border-radius: 30px;
  padding: 8px 18px;
  font-weight: bold;
  transition: all 0.3s ease;
}
.btn-success{
  transform:tranlateY(-2px); 
  box-shadow: 0 5px 15px rgba(0,206,201,0.4)
}
.table{
  background: white;
  border-radius: 12px;
  overflow: hidden;
}
pre {
 white-space: pre-wrap; /* 자동 줄바꿈*/
 background: white;
 border: none;
}
.table tbody tr.a:hover{
  background: #f1f5ff;
  transform:scale(1.01);
}
</style>

</head>
<body>
    <div class="container">
     <div class="board-wrap">
      <h3>내용보기</h3>
   <div class="row">
   <table class="table">
    <tbody>
     <tr>
      <th width=20% class="text-center success">번호</th>
      <td width=20% class="text-center"><%=vo.getNo() %></td>
      <th width=20% class="text-center success">작성일</th>
      <td width=20% class="text-center"><%=vo.getDbday() %></td>
     </tr>
     <tr>
      <th width=20% class="text-center success">이름</th>
      <td width=20% class="text-center"><%=vo.getName() %></td>
      <th width=20% class="text-center success">조회수</th>
      <td width=20% class="text-center"><%=vo.getHit() %></td>
     </tr>
     <tr>
      <th width=20% class="text-center success">제목</th>
      <td colspan="3"><%=vo.getSubject() %></td>     
     </tr>
      <tr>    
      <td colspan="4" class="text-left" valign="top" height="200"><%=vo.getSubject() %>
      <pre><%=vo.getContent() %></pre>
      </td>
     </tr>
      <td colspan="4" class="text-right">
       <a href="update.jsp?no=<%=vo.getNo() %>" class="btn btn-xs btn-info">수정</a>
       <a href="delete.jsp?no=<%=vo.getNo() %>" class="btn btn-xs btn-success">삭제</a>
       <%--
             최종 : list.jsp => insert / delete
                   detail.jsp => update 
        --%>
       <a href="list.jsp" class="btn btn-xs btn-warning">목록</a>
      </td>
    </tbody>
   </table>
    <tbody>
     </div>
    </div>
</body>
</html>
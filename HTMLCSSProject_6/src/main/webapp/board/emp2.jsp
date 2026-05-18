<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%
   String strPage=request.getParameter("page");
   if(strPage==null)
	   strPage="1";
   /*
       list.jsp ===========> null
       list.jsp?page =====> ""
       list.jsp?page=1 ====> 1
       
       URL 주소 확인
       OUTPUT 확인
       Source 확인
       -------------
   */
   // 현재 페이지로 설정
   int curpage=Integer.parseInt(strPage);
   //System.out.println(curpage);
   // 오라클에서 데이터 읽기
   BoardDAO dao=new BoardDAO();
   List<emp2VO> list=dao.emp2ListData(curpage);
   // 총페이지
   int count=dao.boardRowCount();
   int totalpage=(int)(Math.ceil(count/10.0));
   count=count-((curpage*10)-10);
   
   
   /*
      숫자 : DecimalFormat / 날짜 : SimpleDateFormat
      ==> TO_CHAR(regdate,'yyyy-mm-dd')
      ==> TO_CHAR(10000,'#,###,###')
   */
   
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
.table tbody tr.a:hover{
  background: #f1f5ff;
  transform:scale(1.01);
}
.sub{
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
</style>
</head>
<body>
  <div class="container">
   <div class="board-wrap">
   <h3>사원 목록</h3>
   <div class="row">
   <table class="table">
    <tbody>
     <tr>
      
     </tr>
    </tbody>
   </table>
   </div>
   <div class="row" style="margin-top: 10px">
   <table class="table">
    <thead>
     <tr class="danger">
      <th width=10% class="text-center">사번</th>
      <th width=45% class="text-center">이름</th>
      <th width=15% class="text-center">직급</th>
      <th width=20% class="text-center">입사일</th>
      <th width=20% class="text-center">급여</th>           
     </tr>
     </thead>
    <tbody>
     <%
         for(emp2VO vo:list)
         {
      %>
         <tr>
      <th width=10% class="text-center"><%=vo.getEmpno() %></th>
      <th width=45% class="text-center"><%=vo.getEname() %></th>
      <th width=15% class="text-center"><%=vo.getJob() %></th>
      <th width=20% class="text-center"><%=vo.getHiredate() %></th>
      <th width=20% class="text-center"><%=vo.getSal() %></th>           
     </tr>
      <% 	 
         }
      
      %>
      <div class="row text-center" style="margin-top: 20px">
    <a href="emp2.jsp?page=<%=curpage>1?curpage-1:curpage %>" class="btn btn-sm btn-warning">이전</a>
    <%=curpage %> page / <%=totalpage %> pages
    <a href="emp2.jsp?page=<%=curpage<totalpage?curpage+1:curpage %>" class="btn btn-sm btn-warning">다음</a>
   </div>
     
</body>
</html>
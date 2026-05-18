<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    position : 위치속성
       => 원하는 위치에 출력이 가능하게 만드는 속성
       => static / relative / absolute / fixed / sticky
    1. static
       모든 HTML태그 기본값
       => 소스 순서대로 배치
       => top / left / right / bottom => 무시  
       사용법
       태그(id,class) {
         position:static => 생략이 가능
       }
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.static{
 position:static;
 width: 100px;
 height: 100px;
 background-color: red;
 top: 20px;
 left:20px;
}
</style>
</head>
<body>
  <%--
      기본 흐름에 따라 배치 => top/left가 적용되지 않는다
   --%>
  <div class="static">Static</div>
</body>
</html>
<%@page import="com.ist.model.BoardModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ist.model.*"%>
<%
   BoardModel model=new BoardModel();
   model.boardInsert(request, response);
%>


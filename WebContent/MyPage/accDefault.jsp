<%@page import="data.dao.AccountDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String dog_num=request.getParameter("dog_num");
String user_num=request.getParameter("user_num");


	AccountDao dao=new AccountDao();
	dao.updateDefaultAll(user_num);
	
	dao.updateDefault(dog_num);

	response.sendRedirect("../index.jsp?main=MyPage/accUpdateList.jsp");



%>
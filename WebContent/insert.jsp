<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	//String name = request.getParameter("name");
	//String hp = request.getParameter("hp");
	//String company = request.getParameter("company");
	
	//test
	//System.out.println(name);
	//System.out.println(hp);
	//System.out.println(company);
	
	//전송된 값 vo 객체로 만들기
	PhoneDao phoneDao = new PhoneDao();	
	
	//redirect
	response.sendRedirect("./list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>phonebook3</h1>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%	PhoneDao phoneDao = new PhoneDao();

	int personId = Integer.parseInt(request.getParameter("id"));
	
	phoneDao.personDelete(personId);
	
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
	
	
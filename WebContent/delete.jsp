<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.PersonVo" %>
<%@ page import = "com.javaex.dao.PhoneDao" %>

<%@ page import ="java.util.List" %>

<%
	PhoneDao phoneDao = new PhoneDao();

	String name=request.getParameter("name");
	String hp =request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	
	phoneDao.personDelete(personVo);
	
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
	
	
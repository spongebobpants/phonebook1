<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%@ page import ="java.util.List" %>
<%--JSP 페이지 전체에 적용되는 조건을 설정 --%>

<%
	PhoneDao phoneDao = new PhoneDao();

	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//test
	//System.out.println(name);
	//System.out.println(hp);
	//System.out.println(company);
	
	//전송된 값(파라미터)을 vo객체로 만든다
	PersonVo personVo = new PersonVo(name, hp, company);
	//System.out.println(personVo.toString());
	
	//저장
	phoneDao.personInsert(personVo);
	
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
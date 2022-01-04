<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %> 
<%@ page import ="com.javaex.dao.PhoneDao" %> 
<%@ page import="com.javaex.vo.PersonVo" %>    
    
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
%>
<%--Phonedao getList에서 데이터 가져오기 위해 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>phonebook1</h1>
	<h2>전화번호 리스트</h2>
	<p>입력한 정보 내역입니다</p>
	
	<%
		for(int i=0; i<personList.size(); i++) {
	%>
	<%--5가 아니라 list.size %자바문 없는 아래는 html로 인식--%>
	
		<table border ="1">
			<tr>
				<td>이름</td>
				<td><%= personList.get(i).getName()%></td>	
				<%--최종 값을 표현할 때는 <%=%>, java문법 표현할 때는 <%%>--%>
			</tr>
			<tr>
				<td>핸드폰</td>
				<td><%= personList.get(i).getHp()%></td>	
				<%--personList의 i번째의 전화번호를 가져오자--%>
			</tr>
			<tr>
				<td>회사</td>
				<td><%= personList.get(i).getCompany()%></td>
			</tr>
		</table>
		<br>
	
	<%
	}
	%>
	
	<a href ="http://localhost:8088/phonebook1/writeForm.jsp">전화번호 등록폼</a>
	
	<%-- } java code close --%>
</body>
</html>
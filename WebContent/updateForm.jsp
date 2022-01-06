<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Phonebook2</h1>
	
	<h2>전화번호 업데이트 폼</h2>
	
	<p>전화번호를 수정하려면<br>
	아래 항목의 '수정'버튼을 클릭하세요
	</p>
	<form action="./update.jsp?" method="get">
		이름(name): <input type="text" name="name" value="<%= name%>"><br>
		핸드폰(hp): <input type="text" name="hp" value="<%= hp%>"><br>
		회사(company): <input type="text" name="company" value="<%= company %>"><br>
		코드(code): <input type="text" name="id" value="<%= id%>"> <br>
		<button type="submit">update</button>
	</form>
</body>
</html>
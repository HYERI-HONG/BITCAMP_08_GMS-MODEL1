<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@page import="java.util.*"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>ID로 회원 검색</title>
		<style>
	.tbl{border:1px solid black}
	.tbl tr{border:1px solid black}
	.tbl tr th{border:1px solid black}
	.tbl tr td{border:1px solid black}
	</style>
</head>
<body>
	<h3>ID로 회원 검색</h3>
	<%
	MemberBean member = MemberServiceImpl.getInstance().findById(request.getParameter("userid"));
	%>
	<table class = "tbl">
			<tr>
				<th>이름</th>
				<th>아이디</th>
				<th>비밀번호</th>		
				<th>나이</th>
				<th>주민번호</th>
				<th>팀이름</th>					
				<th>역할</th>
			</tr>
			<tr>
				<td><%=member.getName()%></td>
				<td><%=member.getUserId()%></td>
				<td><%=member.getPassword()%></td>
				<td><%=member.getAge()%></td>
				<td><%=member.getSsn()%></td>
				<td><%=member.getTeamId()%></td>
				<td><%=member.getRoll()%></td>
				</tr>
	</table>
	<br>
</body>
</html>
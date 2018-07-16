<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@page import="java.util.*"%>


<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원 목록</title>
	<style>
	.tbl{border:1px solid black}
	.tbl tr{border:1px solid black}
	.tbl tr th{border:1px solid black}
	.tbl tr td{border:1px solid black}
	</style>
</head>
<body>
	<h3>전체 회원 목록</h3>
	<%
	List<MemberBean> list = MemberServiceImpl.getInstance().memberList();
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
				<%
				for(int i=0; i<list.size(); i++){
					%>
						<tr>
						<td><%=list.get(i).getName()%></td>
						<td><%=list.get(i).getUserId()%></td>
						<td><%=list.get(i).getPassword()%></td>
						<td><%=list.get(i).getAge()%></td>
						<td><%=list.get(i).getSsn()%></td>
						<td><%=list.get(i).getTeamId()%></td>
						<td><%=list.get(i).getRoll()%></td>
						</tr>
					<%	
				} 
				%>
			</table>
</body>
</html>

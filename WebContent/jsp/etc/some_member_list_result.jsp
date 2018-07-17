<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="service.*" %>
<%@ page import="domain.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>이름으로 회원 검색</title>
		<style>
	.tbl{border:1px solid black}
	.tbl tr{border:1px solid black}
	.tbl tr th{border:1px solid black}
	.tbl tr td{border:1px solid black}
	</style>
</head>
<body>
	<%
	List<MemberBean> list = MemberServiceImpl.getInstance().findByName(request.getParameter("teamname"));
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
			<%-- <%
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
			%> for each문
			--%>
			<%
			for(MemberBean m : list){
			%>
					<tr>
					<td><%=m.getName()%></td>
					<td><%=m.getUserId()%></td>
					<td><%=m.getPassword()%></td>
					<td><%=m.getAge()%></td>
					<td><%=m.getSsn()%></td>
					<td><%=m.getTeamId()%></td>
					<td><%=m.getRoll()%></td>
					</tr>
			<%	
			} 
			%> 
		</table>
</body>
</html>
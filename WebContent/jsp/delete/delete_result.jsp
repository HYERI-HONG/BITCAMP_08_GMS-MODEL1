<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%! int beforeCount = 0,afterCount =0; %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원 탈퇴</title>
</head>
<body>
	<h3>기존 회원수 : <%= beforeCount = MemberServiceImpl.getInstance().memberCount()%></h3>
	<% 
	MemberBean mem = new MemberBean();
	mem.setUserId(request.getParameter("userid"));
	mem.setPassword(request.getParameter("password"));
	MemberServiceImpl.getInstance().deleteMember(mem);
	%>
	<h3>변경된 회원수 : <%= afterCount = MemberServiceImpl.getInstance().memberCount()%></h3>
	<%
	if(beforeCount>afterCount){
		%><h3>회원 탈퇴 성공!</h3><%
	}
	else{
		%><h3>회원 탈퇴 실패!</h3>
		<br>
		<a href="delete_form.jsp">뒤로가기</a><%
	}
	%>
	<br><br>
	<a href="../../main.jsp">홈으로 가기</a>
</body>
</html>
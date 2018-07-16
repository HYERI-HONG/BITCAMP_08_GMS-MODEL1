<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>비밀번호 변경</title>
</head>
<body>
	<% 
	MemberBean mem = new MemberBean();
	mem.setUserId(request.getParameter("userid"));
	mem.setPassword(String.format("%s/%s",
			request.getParameter("before_pass"),
			request.getParameter("after_pass")));
	MemberServiceImpl.getInstance().updateMember(mem);
	%>
	<h3>비밀번호 변경 성공!</h3>
	<a href="../../main.jsp">홈으로 가기</a>
	<%
	
	%>
</body>
</html>
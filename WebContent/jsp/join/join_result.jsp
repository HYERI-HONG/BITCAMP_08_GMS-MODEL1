<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 회원가입 페이지 : userId,age(birth 930318-2),name,password -->
<%@ page import="domain.*" %>
<%@ page import="service.MemberServiceImpl"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<% 
	MemberBean mem = new MemberBean();
	mem.setUserId(request.getParameter("userid"));
	mem.setPassword(request.getParameter("password"));
	mem.setName(request.getParameter("name"));
	mem.setSsn(request.getParameter("ssn"));
	MemberServiceImpl.getInstance().createMember(mem);
	
	 %>
	 <h3>회원가입 성공</h3>
	 <a href="../login/user_login_form.jsp">로그인 하러가기</a>
	 
	

</body>
</html>
<%@page import="service.MemberServiceImpl"%>
<%@page import="java.text.SimpleDateFormat"%> <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%! int count = 0; %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Test</title>
	<link rel="stylesheet" href="css/style.css" />
</head>
<body id="color-background">
	<%= new SimpleDateFormat("yyyy-mm-dd hh:mm:ss").format(new Date()) %>
	<h3>현재 회원수 : <%= count = MemberServiceImpl.getInstance().memberCount()%></h3>
	
	<table class="width-full  height-full margin-auto">
		<tr class="color-top">
			<th  colspan ="2">GMS Login Page</th>
		</tr>
		<tr class="color-bottom">
			<td ><img src="img/home/user1.jpg" id="img-size" /></td>
			<td class="width-part" >
			<ul>
				<li><a href="jsp/login/admin_login.jsp">관리자 로그인</a></li>
				<li><a href="jsp/login/user_login_form.jsp">사용자 로그인</a></li>
				<li><a href="jsp/join/join_form.jsp">회원가입</a></li>
				<li><a href="jsp/etc/memberlist.jsp">전체 회원 목록</a></li>
				<li><a href="jsp/etc/some_member_list_form.jsp">팀이름으로 회원검색</a></li>
				<li><a href="jsp/etc/one_member_list_form.jsp">ID로 회원검색</a></li>
			</ul>
			</td>
		</tr>
		<tr class="color-bottom">
			<td colspan ="2">ADDRESS</td>
		</tr>
	</table>
</body>
</html>

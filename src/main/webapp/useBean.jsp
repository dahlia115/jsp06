<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>useBean.jsp<br>
	<jsp:useBean id="dto" class="members.MemberDTO" /><%-- 객체생성 --%>
	<%-- MemberDTO dto = new MemberDTO(); --%><%-- useBean과 같음 --%>
	<%
		dto.setId("abcd");
		dto.setPwd("1234");
	%>
	<%=dto.getId() %> <br>
	<%=dto.getPwd() %>
</body>
</html>
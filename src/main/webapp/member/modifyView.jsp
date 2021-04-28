<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:include page="../default/header.jsp" />
	
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		MemberDTO dto = dao.info(request.getParameter("id"));
	%>
	<form action="modify.jsp" class="wrap" align="center">
		<input type="hidden" name="id" value="<%= dto.getId()%>">
		이름 : <input type="text" name = "name" value="<%=dto.getName() %>"><br>
		주소 : <input type="text" name = "addr" value="<%=dto.getAddr() %>"><br>
		번호 : <input type="text" name = "tel" value="<%=dto.getTel() %>"><br>
		<hr>
		<input type="submit" value="수정">
	</form>
	
	<jsp:include page="../default/footer.jsp" />
</body>
</html>
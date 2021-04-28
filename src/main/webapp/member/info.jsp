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
	<%request.setCharacterEncoding("utf-8"); %>
	<%response.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	
	<%
		MemberDTO dto = dao.info(request.getParameter("id"));
	%>
	
	<jsp:include page="../default/header.jsp" />
	<div class="wrap" align="center">
	
		<h1>개인 정보 상세보기</h1>
		<hr>
		<b>아이디</b> : <%=dto.getId() %><br>
		<b>비밀번호</b> : <%=dto.getPwd() %><br>
		<b>이름</b> : <%=dto.getName() %><br>
		<b>주소</b> : <%=dto.getAddr() %><br>
		<b>전화번호</b> : <%=dto.getTel() %><br>
		<hr>
	
		<button type="button" onclick="location.href='modifyView.jsp?id=<%=dto.getId()%>'">수정</button>
		<button type="button" onclick="location.href='delete.jsp?id=<%=dto.getId()%>'">삭제</button>
		
	</div>
	<jsp:include page="../default/footer.jsp" />
</body>
</html>
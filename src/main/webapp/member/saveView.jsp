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
	<jsp:include page="../default/header.jsp" />

	<div class="wrap" align="center">
		<form action="save.jsp" method="post">
			<input type="text" name="id" placeholder="input id"><br>
			<input type="text" name="pwd" placeholder="input pwd"><br>
			<input type="text" name="name" placeholder="input name"><br>
			<input type="text" name="addr" placeholder="input addr"><br>
			<input type="text" name="tel" placeholder="input tel"><br>
			<input type="submit" value="확인">
		</form>
	</div>

	<jsp:include page="../default/footer.jsp" />
</body>
</html>
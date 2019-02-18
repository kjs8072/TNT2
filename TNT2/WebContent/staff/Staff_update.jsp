<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@pafe import="" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>교직원 수정 화면[자격증]</h2>
<a href="staff_form.jsp">교사(?) 화면으로 돌아가기</a>
	<hr>
	<%
	StaffDAO sdao = new StaffDAO();
	StaffBean sbean = new StaffBean();
	
	int staff_id=Integer.parseInt(request.getParameter("staff_id"));
	>sbean=sbean.get
	%>
	<form method="post" action="Staff_">
	<input type="hidden" name="staff_id" value="">
	
	
	
	
	</form>








</body>
</html>
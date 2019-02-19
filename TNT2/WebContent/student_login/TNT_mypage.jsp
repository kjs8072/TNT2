<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="TNT_Bean.*, java.util.*" %>
<jsp:useBean id="stu" class="java.util.ArrayList" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="stu"></jsp:setProperty>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
 <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.min.css" rel="stylesheet">
<title>출결관리</title>
</head>
<body>
<!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="<%= request.getContextPath() %>/student_login/student_main.jsp" style="color:blue">TUTER & TUTEE</a>
      <%
           if(session.getAttribute("signedUser") ==null){
      %>
       <a class="btn btn-primary" href="<%= request.getContextPath() %>/Login_form/Login_form.jsp">Sign In</a>
       <%
             } else {
       %>
              <a class="btn btn-primary" href="<%= request.getContextPath() %>/Login_form/logout.jsp">logout</a>
       <%} %>
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
       
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
        </div>
      </div>
    </div>
  </header>
  <br>
<form method="post" action="<%= request.getContextPath() %>/TNT_Attend_control.jsp?action=update">
<div class="table-responsive">
<table class="table" border="1" align="center" style="width:50%">
		<%
			for(StudentBean ab : (ArrayList<StudentBean>) stu) {
		%>
		<tr>
			<th>이름</th>
			<td><input type="text" name="student_name" value="<%=ab.getStudent_name() %>" style="width:100%"></td></tr>
		<tr>
		<tr>
			<th>생일</th>
			<td><input type="date" name="student_birth" value="<%=ab.getStudent_birth() %>" style="width:100%"></td></tr>
		<tr>
		<tr>
			<th>성별</th>
			<%
				if(ab.getStudent_gender().equals("MALE")) {
			%>
			<td><div class="radio"><label><input type="radio" name="student_gender" value="남자" checked>남자</label> 
			<label><input type="radio"name="student_gender" value="여자">여자</label></div></td></tr>
			<%
				} else if(ab.getStudent_gender().equals("FEMALE")){
			%>
			<td><div class="radio"><label><input type="radio" name="student_gender" value="남자" checked>남자</label> 
			<label><input type="radio"name="student_gender" value="여자">여자</label></div></td></tr>
			<%
				}
			%>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="student_phone" value="<%=ab.getStudent_phone() %>" style="width:100%"></td></tr>
		<tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="student_name" value="<%=ab.getStudent_address() %>" style="width:100%"></td></tr>
		<tr>
		<tr>
			<th>학교</th>
			<td><input type="text" name="student_name" value="<%=ab.getStudent_univ_coll() %>" style="width:100%"></td></tr>
		<tr>
		<tr>
			<th>학과</th>
			<td><input type="text" name="student_name" value="<%=ab.getStudent_major() %>" style="width:100%"></td></tr>
		<%
			}
		%>
		<tr>
			<td colspan="2" align="center"><input class="btn btn-primary" type="submit" value="수정">
			<input class="btn btn-danger" type="reset" value="취소"></td></tr>
	</table>
</div>	
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css" 
			rel="stylesheet">
<!-- Custom fonts for this template -->
<link href="<%=request.getContextPath()%>/vendor/fontawesome-free/css/all.min.css" 
			rel="stylesheet">
<link href="<%=request.getContextPath()%>/vendor/simple-line-icons/css/simple-line-icons.css" 
			rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
			rel="stylesheet" type="text/css">
<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/landing-page.min.css" rel="stylesheet">
<title>회원가입(교사,교직원)추후에수정필요하다요</title>
</head>
<body align="center">
<!-- Navigation -->
	<nav class="navbar navbar-light bg-light static-top">
		<div class="container">
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/index.jsp" style="color: blue">TUTER & TUTEE</a>
				<%
					if (session.getAttribute("sid") == null) {
				%>
				<a class="btn btn-primary"
					href="<%=request.getContextPath()%>/Login_form/Login_form.jsp">Sign In</a>
				<%
					} else {
				%>
				<a class="btn btn-primary"
					href="<%=request.getContextPath()%>/Login_form/logout.jsp">logout</a>
				<%
					}
				%>
		</div>
	</nav>
<!-- Masthead -->
	<header class="masthead text-white text-center">
		<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-lg-8 col-xl-7 mx-auto"></div>
			</div>
		</div>
	</header>
	<br>
	<div class="container">
		<div align="center">
			<form name="form1" method="get" action="">
				<input type="hidden" name="action" value="insert">

<td colspan="2" align="center">
						<button type="submit" class="btn btn-block btn-lg btn-primary">
                		<a href="<%= request.getContextPath() %>/Students_join/student_form.jsp" style="color:white">회원가입<학생></a></button>
						<button type="submit" class="btn btn-block btn-lg btn-primary">
                		<a href="<%= request.getContextPath() %>/Staff_join/staff_form.jsp" style="color:white">회원가입<교직원></a></button>
						</td>

</form>
</body>
</html>
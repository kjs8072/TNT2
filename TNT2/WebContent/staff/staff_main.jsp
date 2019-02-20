<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>STAFF MAIN</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="<%=request.getContextPath()%>/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet" type="text/css"> 
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/landing-page.min.css"
	rel="stylesheet">
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-light bg-light static-top">
		<div class="container">
			<a class="navbar-brand" href="<%= request.getContextPath() %>/student_login/student_main.jsp" style="color:blue">TUTER & TUTEE</a>
			<%
           		if(session.getAttribute("sid") ==null){
      		%>
       		<a class="btn btn-primary" href="<%= request.getContextPath() %>/index.jsp">Sign In</a>
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
				<div class="col-xl-9 mx-auto">
					<h1 class="mb-5">
						<!-- 중앙img / STAFF MAIN으로 이동하기 -->
						<a href="<%=request.getContextPath()%>/staff/staff_main.jsp">Tuter
							& Tutee</a>
					</h1>
				</div>
				<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
					<form>
						<div class="form-row">
							<%--	<div class="col-12 col-md-9 mb-2 mb-md-0">
								<input type="text" class="form-control form-control-lg"
									placeholder="Enter your email...">
							</div>
							<div class="col-12 col-md-3">
								<button type="submit" class="btn btn-block btn-lg btn-primary"
									href="TNT_control.jsp?action=attendance">Sign up!</button>
							</div> --%>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header>

	<!-- Icons Grid -->
	<section class="features-icons bg-light text-center">
		<div class="container">
			<div class="row">
				<!--MY PAGE-->
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="icon-screen-desktop m-auto text-primary"></i>
						</div>
						<h3>
							<a
								href="<%=request.getContextPath()%>/staff/staff_control.jsp?action=my">MyPage</a>
						</h3>
					</div>
				</div>
				<!--LIST-->
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="icon-layers m-auto text-primary"></i>
						</div>
						<h3>
							<a
								href="<%=request.getContextPath()%>/staff/staff_control.jsp?action=list">학생조회
							</a>
						</h3>
					</div>
				</div>
				<!--RANKING-->
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="icon-check m-auto text-primary"></i>
						</div>
						<h3>
							<a
								href="<%=request.getContextPath()%>/staff/staff_control.jsp?action=ranking">성적조회
							</a>
						</h3>
					</div>
				</div>
				<!--LICENSE-->
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="icon-check m-auto text-primary"></i>
						</div>
						<h3>
							<a
								href="<%=request.getContextPath()%>/staff/staff_control.jsp?action=license">자격증조회
							</a>
						</h3>
					</div>
						<p class="lead mb-0"></p>
				</div>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<footer class="footer bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 h-100 text-center text-lg-left my-auto">
					<ul class="list-inline mb-2">
						<li class="list-inline-item"><a href="#">About</a></li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item"><a href="#">Contact</a></li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
					</ul>
					<p class="text-muted small mb-4 mb-lg-0">&copy; Your Website
						2019. All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-right my-auto">
					<ul class="list-inline mb-0">
						<li class="list-inline-item mr-3"><a href="#"> <i
								class="fab fa-facebook fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item mr-3"><a href="#"> <i
								class="fab fa-twitter-square fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-instagram fa-2x fa-fw"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="TNT_Bean.*, TNT_DAO.*, java.util.ArrayList, java.sql.Date"%>
<jsp:useBean id="list" class="java.util.ArrayList" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="list"></jsp:setProperty>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>chart 정보</title>

	<!-- Bootstrap core CSS -->
	<link href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap core JavaScript-->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="<%=request.getContextPath()%>/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="<%=request.getContextPath()%>/js/sb-admin-2.min.js"></script>
	<!-- Custom fonts for this template -->
	<link href="<%=request.getContextPath()%>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
	<!-- Custom styles for this template -->
	<link href="<%=request.getContextPath()%>/css/landing-page.min.css" rel="stylesheet">

	<!-- Page level plugins -->
	<script src="<%=request.getContextPath()%>/vendor/chart.js/Chart.min.js"></script>

	<script src="chart-area-demo.js"></script>
	<script src="chart-bar-demo.js"></script>
	<script src="chart-pie-demo.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		table {
			border-collapse: collapse;
			border-spacing: 0;
			width: 90%;
			border: 1px solid #ddd;
		}

		th,
		td {
			text-align: left;
			padding: 3px;
		}

		tr:nth-child(even) {
			background-color: #f2f2f2
		}
	</style>
</head>

<body>
	<%
		//언어 설정
		request.setCharacterEncoding("UTF-8");
	%>
	<!-- Navigation -->
	<nav class="navbar navbar-light bg-light static-top">
		<div class="container">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/staff/staff_main.jsp" style="color: blue">TUTER
				& TUTEE</a>
			<%
				if (session.getAttribute("sid") == null) {
			%>
			<a class="btn btn-primary" href="<%=request.getContextPath()%>/index.jsp">Sign In</a>
			<%
				} else {
			%>
			<a class="btn btn-primary" href="<%=request.getContextPath()%>/Login_form/logout.jsp">logout</a>
			<%
				}
			%>
		</div>
	</nav>
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
		<!-- Main Content -->
		<div id="content">
			<!-- Masthead -->
			<header class="masthead text-white text-center">
				<div class="overlay"></div>
				<div class="container">
					<div class="row">
						<div class="col-xl-9 mx-auto">
							<h1 class="mb-5">
								<!-- 중앙img / STAFF MAIN으로 이동하기 -->
								<a>chart 정보</a>
							</h1>
						</div>
						<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
						</div>
					</div>
				</div>
			</header>
			<div class="row">

				<div class="col-xl-8 col-lg-7">
					<!-- Area Chart -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Area Chart</h6>
						</div>
						<div class="card-body">
							<div class="chart-area">
								<canvas id="myAreaChart"></canvas>
							</div>
							<hr>
							Styling for the area chart can be found in the <code>/js/demo/chart-area-demo.js</code>
							file.
						</div>
					</div>

					<!-- Bar Chart -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Bar Chart</h6>
						</div>
						<div class="card-body">
							<div class="chart-bar">
								<canvas id="myBarChart"></canvas>
							</div>
							<hr>
							<학생 성적별 인원별 현황><code>/js/demo/chart-bar-demo.js</code> file.
						</div>
					</div>
				</div>
				<!-- Donut Chart -->
				<div class="col-xl-4 col-lg-5">
					<div class="card shadow mb-4">
						<!-- Card Header - Dropdown -->
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Donut Chart</h6>
						</div>
						<!-- Card Body -->
						<div class="card-body">
							<div class="chart-pie pt-4">
								<canvas id="myPieChart"></canvas>
							</div>
							<hr>
							<학생 성적별 인원별 현황><code>/js/demo/chart-pie-demo.js</code> file.
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>

</html>
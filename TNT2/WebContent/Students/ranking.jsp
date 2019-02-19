<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="TNT_Bean.*, TNT_DAO.*, java.util.ArrayList, java.sql.Date"%>

<jsp:useBean id="list" class="java.util.ArrayList" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="list"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>학생 성적 순위</title>

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


	<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 90%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 3px;
}

tr:nth-child(even) {
  background-color: #f2f2f2
}
</style>


</head>



<body>

	<!-- Navigation -->
	<nav class="navbar navbar-light bg-light static-top">
		<div class="container">

			<!-- 상단 / STAFF MAIN으로 이동하기 -->
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/main/staff_main.jsp"
				style="color: blue">TUTER & TUTEE</a> <a class="btn btn-primary"
				href="#">Sign In</a>
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
						<a >학생 성적 정보</a>
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


	<%
		//언어 설정
		request.setCharacterEncoding("UTF-8");
		TestvuBean testvu = new TestvuBean();
		StudentDAO tnt = new StudentDAO();

		list = tnt.getScore();
	%>

	<table border="1" align="center">
		<tr>
			<th>이름</th>
			<th>과정명</th>
			<th>교과목명</th>
			<th>점수</th>
			<th>시험일</th>
			<th>시험구분</th>
			<th>시험결과</th>
		</tr>
		<%
			for (TestvuBean tu : (ArrayList<TestvuBean>) list) {
		%>
		<tr>

			<td><%=tu.getStudent_name()%></td>
			<td><%=tu.getCourse_name()%></td>
			<td><%=tu.getSubject_name()%></td>
			<td><%=tu.getScore()%></td>
			<td><%=tu.getTest_date()%></td>
			<td><%=tu.getTest_division()%></td>
			<td><%=tu.getTest_result()%></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>
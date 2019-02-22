<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function stud_check() {
		var msg = document.getElementById("student_id").value;
		console.log(msg);
		if (msg == "") {
			alert("아이디를 입력하세요.")
			return;
		} else {
			document.form1.action.value = "check1";
			document.form1.submit();
		}
	}
	function pass_check() {
		var password = document.getElementById("student_pw").value;
		var passCheck = document.getElementById("student_pw1").value;

		if (passCheck == "") {
			document.document.getElementById("passCheckText").innerHTML = ""
		} else if (student_pw != student_pw1) {
			document.document.getElementById("passCheckText").innerHTML = "<b><font color=blue size=5pt"> not ok pw. </font></b>"
		} else {
			document.document.getElementById("passCheckText").innerHTML = "<b><font color=red size=5pt> OK pw. </font></b>"
		}
	}
</script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>학생회원가입</title>
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
<title>학생 회원가입</title>
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
			<form name="form1" method="get" action="student_control.jsp">
				<input type="hidden" name="action" value="insert">
					<table class="table" border="2" style="width: 70%">
					<h1>회원가입</h1><tr>
						<th>아이디</th>
							<td><input type="text" id="student_id" name="student_id"
							required>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input class="btn btn-info" type="button" value="중복확인" onclick="stud_check()"></td>
						</tr>
						<tr>
							<th>비밀번호</th>
						<td colspan="2"><input type="password" name="student_pw"
							required></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td colapan="2"><input type="password" name="student_pw1"
							required></td>
					<td id="passCheckText" width=100>
					</td>
					</tr>
						<tr>
						<th>이름</th>
						<td colspan="2"><input type="text" name="student_name"
							required></td>
					</tr>
						<tr>
						<th>성별</th>
						<td colspan="2"><input type="radio" name="gender" value="남자"
							checked>남자 <input type="radio" name="gender" value="여자">여자</td>
					</tr>
					<tr>
						<th>핸드폰번호</th>
						<td colspan="2"><input type="text" name="student_phone"
							required></td>
					</tr>
					<tr>
						<th>주소</th>
						<td colspan="2"><input type="text" name="student_adress"
							required></td>
					</tr>
					<tr>
						<th>학교</th>
						<td colspan="2"><input type="text" name="student_univ_coll"
							required></td>
					</tr>
					<tr>
						<th>학과</th>
						<td colspan="2"><input type="text" name="student_major"
							required></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input class="btn btn-primary type="submit" value="회원가입" action="student_control.jsp %>">
						<input class="btn btn-danger type="reset" value="취소" onclick="메인"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
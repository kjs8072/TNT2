<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<script>
   function staff_check() {
      document.form1.action.value="check2";
      document.form1.submit();
   }

</script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<!-- Bootstrap core CSS -->
	<link href="<%= request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template -->
	<link href="<%= request.getContextPath() %>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
	<link href="<%= request.getContextPath() %>/vendor/simple-line-icons/css/simple-line-icons.css"
		rel="stylesheet" type="text/css">
	<link
		href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
		rel="stylesheet" type="text/css">
<!-- Custom styles for this template -->
	<link href="<%= request.getContextPath() %>/css/landing-page.min.css" rel="stylesheet">
	<title>교직원 회원가입</title>
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
				href="<%=request.getContextPath()%>/Login_form/Login_form.jsp">Sign
				In</a>
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
	<style>
ul {
	border: 1px solid #bcbcbc;
	}
ul.a {
	text-align: center;
	}
ul.b {
	width: 300px;
	margin-left: auto;
	margin-right: auto;
	}
ul.c {
	display: table;
	margin-left: auto;
	margin-right: auto;
	}
</style>
<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
<!-- Main Content -->
		<div id="content">
  
<form name="form1" method="get" action="staff_control.jsp">
<input type="hidden" name="action" value="insert">
<table class="table" border="2">

<tr><th>아이디</th><td><input type="text" name="staff_id">
<input class="btn btn-primary"type="button" value="중복확인" onclick="staff_check()"></td></tr>
<tr><th>비밀번호</th><td colspan="2"><input type="password" name="staff_pass"></td></tr>
<tr><th>비밀번호확인</th><td colapan="2"><input type="password" name="student_pass"></td></tr>
<tr><th>이름</th><td colspan="2"><input type="text" name="staff_name"></td></tr>
<tr><th>성별</th><td colspan="2">
<input type="radio" name="gender" value="남자" >남자 <input type="radio"name="gender" value="여자">여자</td></tr>
<tr><th>직무</th><td colspan="2"><input type="text" name="staff_responsibility"vrequired></td></tr>
<tr><th>주소</th><td colspan="2"><input type="text" name="staff_address"required></td></requiredtr>
<tr><th>폰번호</th><td colspan="2"><input type="text" name="staff_phone"required></td></tr>
<tr><th>이메일</th><td colspan="2"><input type="email" name="staff_email" required></td></tr>
<tr>
<td colspan="2" align="center">
<input class="btn btn-primary" type="submit" value="저장">
<input class="btn btn-primary" type="reset" value="취소">
</table>
</form>
</body>
</html>

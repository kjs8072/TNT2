<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
   function staff_check() {
      document.form1.action.value="check2";
      document.form1.submit();
   }

</script>
<meta charset="EUC-KR">
<title>교직원 회원가입</title>
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
</head>
<body align="center">
<form name="form1" method="get" action="staff_control.jsp">
<input type="hidden" name="action" value="insert">
<table class="table" border="2">
<h1>회원가입 </h1> 
<tr><th>아이디</th><td><input type="text" name="staff_id">
<input class="btn btn-primary"type="button" value="중복확인" onclick="staff_check()"></td></tr>
<tr><th>비밀번호</th><td colspan="2"><input type="password" name="staff_pass"></td></tr>
<tr><th>비밀번호확인</th><td colapan="2"><input type="password" name="student_pass"></td></tr>
<tr><th>이름</th><td colspan="2"><input type="text" name="staff_name"></td></tr>
<tr><th>성별</th><td colspan="2">
<input type="radio" name="gender" value="남자" >남자 <input type="radio"name="gender" value="여자">여자</td></tr>
<tr><th>직무</th><td colspan="2"><input type="text" name="staff_responsibility"></td></tr>
<tr><th>주소</th><td colspan="2"><input type="text" name="staff_address"></td></tr>
<tr><th>폰번호</th><td colspan="2"><input type="text" name="staff_phone"></td></tr>
<tr><th>이메일</th><td colspan="2"><input type="email" name="staff_email"></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="저장"><input type="reset" value="취소">
</table>
</form>
</body>
</html>
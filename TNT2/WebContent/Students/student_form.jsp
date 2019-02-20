<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
   function stud_check() {
      document.form1.action.value="check1";
      document.form1.submit();
   }
</script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>학생 회원가입</title>

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
</head>

<body align="center">
<!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form method="post" action="Login_control.jsp">
          
            <div class="form-row">
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>
  
<form name="form1" method="get" action="student_control.jsp">
<input type="hidden" name="action" value="insert">
<table class="table" border="2">
<h1>회원가입 </h1> 
<tr><th>아이디</th><td><input type="text" name="student_id">
<input class="btn btn-primary" type="button" value="중복확인" onclick="stud_check()"></td></tr>
<tr><th>비밀번호</th><td colspan="2"><input type="password" name="student_pw"></td></tr>
<tr><th>비밀번호확인</th><td colapan="2"><input type="password" name="student_pw"></td></tr>
<tr><th>이름</th><td colspan="2"><input type="text" name="student_name"></td></tr>
<tr><th>성별</th><td colspan="2">
<input type="radio" name="gender" value="남자" >남자 <input type="radio"name="gender" value="여자">여자</td></tr>
<tr><th>핸드폰번호</th><td colspan="2"><input type="text" name="student_phone"></td></tr>
<tr><th>주소</th><td colspan="2"><input type="text" name="student_adress"></td></tr>
<tr><th>학교</th><td colspan="2"><input type="text" name="student_univ_coll"></td></tr>
<tr><th>전공</th><td colspan="2"><input type="text" name="student_major"></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="저장"><input type="reset" value="취소">
</table>
</form>
</body>
</html>
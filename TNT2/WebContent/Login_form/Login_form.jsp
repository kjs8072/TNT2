<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<!-- <script>
	function Login_check() {
		document.form
	}
</script> -->
<meta charset="UTF-8">
<title>Login Form</title>
 <!-- Custom fonts for this template-->
 <link href="<%=request.getContextPath() %>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

 <!-- Custom styles for this template-->
 <link href="<%=request.getContextPath() %>/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body>
<<<<<<< HEAD
	<h2>Login Form</h2>
	<hr>
	<!-- <a href="">메인화면으로 돌아가기</a> -->
	<form method="post" action="Login_control.jsp">
		<input type="hidden" name="action" value="login">
		<table border="1">
			<tr>
				<th>ID</th>
				<td><input type="text" name="userid"></td>
			<tr>
				<th>PASSWORD</th>
				<td><input type="password" name="passwd"></td>
			<tr>
				<th>Login Type</th>
				<td><input type="radio" name="user" value="student" checked>
					학생<br> <input type="radio" name="user" value="staff">
					교직원<br></td>
			</tr>
			<tr>
				<td colspan="1" align="center"><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">환영합니다!!</h1>
                  </div>
                  <form class="user" method="post" action="Login_control.jsp">
                  	<input type="hidden" name="action" value="login">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="exampleInputEmail" name="userid" aria-describedby="emailHelp" placeholder="Enter User Id...">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" name="passwd" placeholder="Password">
                    </div>
                    <div class="form-group">
					  <div>
					    <tr>
							<th>Login Type</th><br>
							<td><label><input type="radio" name="user" value="student_id" checked>학생</label> 
							<label><input type="radio" name="user" value="staff_id">교직원<br></label></td>
						</tr>
					  </div>
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <input type="submit" class="btn btn-primary btn-user btn-block" value="로그인">
                      Login
                    </input>
                    <hr>
                    <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="<%=request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<%=request.getContextPath() %>/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<%=request.getContextPath() %>/js/sb-admin-2.min.js"></script>

>>>>>>> branch 'master' of https://github.com/kjs8072/TNT2.git
</body>
</html>
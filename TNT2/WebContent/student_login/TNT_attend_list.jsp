<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="TNT_Bean.*, TNT_DAO.*, java.util.*" %>
<jsp:useBean id="data" class="java.util.ArrayList" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="data"></jsp:setProperty>
<jsp:useBean id="count" class="java.util.ArrayList" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="count"></jsp:setProperty>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
 <!-- Bootstrap core CSS -->
  <link href="<%= request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="<%= request.getContextPath() %>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="<%= request.getContextPath() %>/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
 
  <!-- Custom styles for this template -->
  <link href="<%= request.getContextPath() %>/css/landing-page.min.css" rel="stylesheet">
<title>출결관리</title>
</head>
<body>
<!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="<%= request.getContextPath() %>/student_login/student_main.jsp" style="color:blue">TUTER & TUTEE</a>
      <%
           if(session.getAttribute("sid") ==null){
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
  </header>
  <br>
  
  <table border="1" align="center">
		<tr>
			<th>출석</th>
			<th>지각</th>
			<th>조퇴</th>
			<th>외출</th>
			<th>결석</th>
			<th>총일수</th>
		</tr>
		<tr>
			<td><%= count.get(0) %></td>
			<td><%= count.get(1) %></td>
			<td><%= count.get(2) %></td>
			<td><%= count.get(3) %></td>
			<td><%= count.get(4) %></td>
			<td><%= count.get(5) %></td>
		</tr>
	</table><br>
	
<table border="1" align="center">
		<tr>
			<th>출석번호</th>
			<th>날짜</th>
			<th>입실시간</th>
			<th>퇴실시간</th>
			<th>외출시간</th>
			<th>복귀시간</th>
			<th>출석구분</th>
		</tr>
		<%
			for(AttendBean ab : (ArrayList<AttendBean>) data) {
		%>
		<tr>
			<td><%=ab.getAttendance_num() %></td>
			<td><%=ab.getAttendance_date() %></td>
			<td><%=ab.getEntering_time() %></td>
			<td><%=ab.getLeaving_time() %></td>
			<td><%=ab.getOutgo_time() %></td>
			<td><%=ab.getReturn_time() %></td>
			<td><%=ab.getAttendance_division() %></td>
		</tr>
		<%
			}
		%>
	</table>
	
	
  <!-- Footer -->
  <footer class="footer bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
          <ul class="list-inline mb-2">
            <li class="list-inline-item">
              <a href="#">About</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Contact</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
          </ul>
          <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2019. All Rights Reserved.</p>
        </div>
        <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
          <ul class="list-inline mb-0">
            <li class="list-inline-item mr-3">
              <a href="#">
                <i class="fab fa-facebook fa-2x fa-fw"></i>
              </a>
            </li>
            <li class="list-inline-item mr-3">
              <a href="#">
                <i class="fab fa-twitter-square fa-2x fa-fw"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-instagram fa-2x fa-fw"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="<%= request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
  <script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
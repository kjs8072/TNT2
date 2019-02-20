<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>출결</title>
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
          <h1 class="mb-5">Tuter & Tutee</h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
        </div>
      </div>
    </div>
  </header>

	<section class="features-icons bg-light text-center">
          <div class="features-icons-item mx-auto mb-0 mb-lg-3">
            <%  String state = request.getParameter("state"); 
            	if (state.equals("init")) {
            %>
            <div class="features-icons-icon d-flex" style="width:60%">
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3 style="width:60%"><a href="<%= request.getContextPath() %>/student_login/TNT_Attend_control.jsp?action=insert">입실</a></h3>
            <p class="lead mb-0"></p>
            <% } else if(state.equals("attendance")) { %>
            <div class="features-icons-icon d-flex" style="width:60%">
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3 style="width:60%"><a href="<%= request.getContextPath() %>/student_login/TNT_Attend_control.jsp?action=insert">외출</a></h3>
            <p class="lead mb-0"></p>
            
            <div class="features-icons-icon d-flex" style="width:60%">
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3 style="width:60%"><a href="<%= request.getContextPath() %>/student_login/TNT_Attend_control.jsp?action=insert">퇴실</a></h3>
            <p class="lead mb-0"></p>
            <% }else if(state.equals("out")) { %>
            <div class="features-icons-icon d-flex" style="width:60%">
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3 style="width:60%"><a href="<%= request.getContextPath() %>/student_login/TNT_Attend_control.jsp?action=insert">복귀</a></h3>
            <p class="lead mb-0"></p>
            
            <div class="features-icons-icon d-flex" style="width:60%">
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3 style="width:60%"><a href="<%= request.getContextPath() %>/student_login/TNT_Attend_control.jsp?action=insert">퇴실</a></h3>
            <p class="lead mb-0"></p>
            <% }else { %>
            <div class="features-icons-icon d-flex" style="width:60%">
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3 style="width:60%"><a href="<%= request.getContextPath() %>/student_login/TNT_Attend_control.jsp?action=insert">퇴실</a></h3>
            <p class="lead mb-0"></p>
            
            <% } %>
          </div>
      
  </section>
  
</body>
</html>
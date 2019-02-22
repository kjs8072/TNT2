<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
   function stud_check() {
      var msg=document.getElementById("student_id").value;
      console.log(msg);
       if (msg==""){
          alert("아이디를 입력하세요.")
          return;
       }else{
            document.form1.action.value = "check1";
            document.form1.submit();
       }
   }
</script>
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
<script src="lcs_nclicks.js"></script>
<script src="clickcr.js"></script>
</head>
<body align="center">
<!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="<%= request.getContextPath() %>/index.jsp" style="color:blue">TUTER & TUTEE</a>
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
    <div class="container">
       <div class="row"> 
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
        </div>
      </div>
    </div>
  </header>
  <br>
 
    <div class="container">
    <div align="center">
   <form name="form1" method="get" action="student_control.jsp">
      <input type="hidden" name="action" value="insert">
      <table class="table" border="2" style="width:70%">
         <h1>회원가입</h1>
         <tr>
            <th>아이디</th>
            <td><input type="text" id="student_id" name="student_id" required>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <input class="btn btn-primary" type="button" value="중복확인"
               onclick="stud_check()"></td>
         </tr>
         <tr>
          
                        <th class="join_title"><label for="pswd1">비밀번호</label></th>
                        <span class="ps_box int_pass" id="pswd1Img">
                     <td><input type="password" id="student_pw" name="student_pw" 
                     class="int" title="비밀번호 입력" aria-describedby="pswd1Msg" maxlength="20"></td>
                        <span class="error_next_box" id="pswd1Msg" style="display:none" role="alert">5~12자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다.</span>
                        
               </span>
               </tr>
               <tr>
                        <th class="join_title"><label for="pswd2">비밀번호 재확인</label></th></td>
                        <span class="ps_box int_pass_check" id="pswd2Img">
                     <td><input type="password" id="student_pw1" name="student_pw1" class="int" title="비밀번호 재확인 입력" aria-describedby="pswd2Blind" maxlength="20">
                     <span id="pswd2Blind" class="wa_blind" style="display:none">설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span></td>
                  </span>
                        <span class="error_next_box" id="pswd2Msg" style="display:none" role="alert"></span>
                   
                
         </tr>
         <tr>
            <th>이름</th>
            <td colspan="2"><input type="text" name="student_name" required></td>
         </tr>
         <tr>
            <th>성별</th>
            
            <td colspan="2"><input type="radio" name="gender" value="남자" checked>남자
               <input type="radio" name="gender" value="여자">여자</td>
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
            <td colspan="2" align="center"><input type="submit"
               value="회원가입" action="student_control.jsp %>">
               <input type="reset" value="취소" onclick="메인">
               </td></tr>
      </table>
   </form></div></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList, TNT_Bean.*, TNT_DAO.*"%>

<jsp:useBean id="bean" class="TNT_Bean.StudentBean"></jsp:useBean>
<jsp:useBean id="TNT" class="TNT_DAO.StudentDAO"></jsp:useBean>
<jsp:setProperty property="*" name="bean" />
<jsp:setProperty property="*" name="TNT" />

<%
	request.setCharacterEncoding("UTF-8");
	//앞(main)에서 받은 parameter인 "action"값을 action에 담음
	String action = request.getParameter("action");

	// 	if (action.equals("insert")) {
	// 		//   bean.insertDB(TNT);
	// 		response.sendRedirect("membership_messageform.jsp");
	// 	}
	// 	/* else if (action.equals("main")) {
	// 	//   bean.insertDB(TNT);
	// 	      response.sendRedirect("메인화면 공백.jsp");
	// 	       */
	// 	/* } */
	// 	else if (action.equals("login")) {
	// 		//   bean.insertDB(TNT);
	// 		response.sendRedirect("login_control.jsp");
	// 	}
	// 	else if (action.equals("check2")) {
	// 		if (bean.funcstaff_check(TNT.getStaff_id()) == 0) {
	// 			out.println("<script>alert('ok');history.back();</script>");
	// 		} else
	// 			out.println("<script>alert('no');history.back();</script>");

	/**********************************************IH********************************************/
	//action의 값이 "list인지 확인"
	/*	} else */
	if (action.equals("list")) {
		//bean에 있는 getStudents를 실행하고 나온 값을 arrylist type으로 studentVO에 넣음
		ArrayList<StudentBean> list = TNT.getStudents();
		//list에 넣은 값을 "list"로 설정?
		request.setAttribute("list", list);
		//앞의 데이터(list)를 가지고 student_info.jsp로 가져감
		pageContext.forward("Student_Info.jsp");
	}

	else if (action.equals("gradelist")) {
		ArrayList<TestvuBean> list = TNT.getScore();
		request.setAttribute("list", list);
		pageContext.forward("ranking.jsp");
	}
%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="TNT_Bean.LoginBean"%>
<%@page import="TNT_DAO.LoginDAO"%>
<jsp:useBean id="bean" class="TNT_Bean.LoginBean" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="bean"></jsp:setProperty>
<jsp:useBean id="dao" class="TNT_DAO.LoginDAO"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	String action = request.getParameter("action");

	if (action.equals("students")) {
		ArrayList<LoginBean> login = dao.studentDBselect();
		request.setAttribute("data", login);
		pageContext.forward("Login_students.jsp");

	} else if (action.equals("insert")) {
		dao.studentsDBinsert(bean);
		response.sendRedirect("Login_control.jsp?action=list");

	} else if (action.equals("login")) {
		String res = request.getParameter("user");
		System.out.println(bean.getUserid() + res + bean.getPasswd());
		if (res.equals("student_id")) {
			if (dao.funcStudent(bean.getUserid(), bean.getPasswd())){
				response.sendRedirect("/TNT2/index.jsp"); //메인주소로 해놓기
				session.setAttribute("signedUser", res);
			}
			else
				out.println("<script>alert('Login Fail');history.back();</script>");
		}
	}

	else if (action.equals("staffs")) {
		ArrayList<LoginBean> login = dao.staffDBselect();
		request.setAttribute("data", login);
		pageContext.forward("Login_staffs.jsp");

	} else if (action.equals("insert")) {
		dao.staffsDBinsert(bean);
		response.sendRedirect("Login_control.jsp?action=list");

	} else if (action.equals("login")) {
		String res = request.getParameter("user");
		System.out.println(bean.getUserid() + res + bean.getPasswd());
		if (res.equals("staff_id")) {
			if (dao.funcStaff(bean.getUserid(), bean.getPasswd()))
				response.sendRedirect("Staff_Main.jsp");
			else
				out.println("<script>alert('Login Fall');history.back();</script>");
		}
	}
%>
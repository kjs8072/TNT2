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
	
	
	if (action.equals("login")) {
		String res = request.getParameter("user");
		if (res.equals("student")) {
			if (dao.funcStudent(bean.getUserid(), bean.getPasswd())) {
				session.setAttribute("signedUser", res);
				response.sendRedirect("/TNT2/student_login/student_main.jsp"); //메인주소로 해놓기
			} else
				out.println("<script>alert('Login Fail');history.back();</script>");

		}else if (res.equals("staff")) {
			if (dao.funcStaff(bean.getUserid(), bean.getPasswd())) {
				session.setAttribute("signedUser", res);
				response.sendRedirect("/TNT2/main/staff_main.jsp");
			}
			else
				out.println("<script>alert('Login Fall');history.back();</script>");
		}
	}
%>
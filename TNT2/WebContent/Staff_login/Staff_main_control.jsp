<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,TNT_DAO.*, TNT_Bean.*" %>
 
<%-- <jsp:useBean id="adao" class="TNT_DAO.AttendDAO"></jsp:useBean>
<jsp:useBean id="abean" class="TNT_Bean.AttendBean"></jsp:useBean>
<jsp:setProperty property="*" name="abean"></jsp:setProperty>
<jsp:setProperty property="*" name="adao"></jsp:setProperty> --%>

<jsp:useBean id="sdao" class="TNT_DAO.StaffDAO"></jsp:useBean>
<jsp:useBean id="sbean" class="TNT_Bean.StaffBean"></jsp:useBean>
<jsp:setProperty property="*" name="sdao"></jsp:setProperty>
<jsp:setProperty property="*" name="sbean"></jsp:setProperty>

<%
	request.setCharacterEncoding("UTF-8");
	String action = request.getParameter("action");

	 if(action.equals("mypage")){
		ArrayList<StaffBean> list = sdao.getInfoList("19001");
		request.setAttribute("data", list);		//요청 페이지에 값을 setting. list에 있는 값을 "stu"에 넣어서 TNT_mypage.jsp에 값을 넘김
		pageContext.forward("Staff_mypage.jsp");
		
	} else if(action.equals("update")){
		ArrayList<StaffBean> list = sdao.getInfoList("19001");
		request.setAttribute("data", list);		//요청 페이지에 값을 setting. list에 있는 값을 "stu"에 넣어서 TNT_mypage_update.jsp에 값을 넘김
		pageContext.forward("Staff_mypage_update.jsp");
		
	}
%>
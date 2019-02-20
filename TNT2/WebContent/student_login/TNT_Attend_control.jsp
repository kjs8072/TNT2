<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,TNT_DAO.*, TNT_Bean.*" %>
 
<jsp:useBean id="adao" class="TNT_DAO.AttendDAO"></jsp:useBean>
<jsp:useBean id="abean" class="TNT_Bean.AttendBean"></jsp:useBean>
<jsp:setProperty property="*" name="abean"></jsp:setProperty>
<jsp:setProperty property="*" name="adao"></jsp:setProperty>

<jsp:useBean id="sdao" class="TNT_DAO.StudentDAO"></jsp:useBean>
<jsp:useBean id="sbean" class="TNT_Bean.StudentBean"></jsp:useBean>
<jsp:setProperty property="*" name="sdao"></jsp:setProperty>
<jsp:setProperty property="*" name="sbean"></jsp:setProperty>

<%
	request.setCharacterEncoding("UTF-8");
	String action = request.getParameter("action");

	if(action.equals("attendance")){
		ArrayList<AttendBean> list = adao.getAttendList(1);
		request.setAttribute("data", list);		//요청 페이지에 값을 setting. list에 있는 값을 "data"에 넣어서 addrbook_list.jsp에 값을 넘김
		pageContext.forward("TNT_attend_list.jsp");		//리스트를 보여주는 페이지(TNT_attend_list.jsp)로 이동 ( data값을 넘겨줌.)
		
	} else if(action.equals("attend_out")){
		String etime, ltime, outtime, returntime;
		etime = adao.etimeSelect((String)session.getAttribute("sid"));
		outtime = adao.outtimeSelect((String)session.getAttribute("sid"));
		returntime = adao.returntimeSelect((String)session.getAttribute("sid"));
		ltime = adao.leaveSelect((String)session.getAttribute("sid"));
		
		if(etime == null){
			pageContext.forward("TNT_attend_mnt.jsp?state=init");	//입실
		} else{
			if(outtime != null){
				if(returntime==null){
					pageContext.forward("TNT_attend_mnt.jsp?state=out");	//복귀 퇴실
				} else{
					pageContext.forward("TNT_attend_mnt.jsp?state=leave");	//퇴실
				}
			} else
				pageContext.forward("TNT_attend_mnt.jsp?state=attendance");	//외출 퇴실
		}
		
	} else if(action.equals("mypage")){
		ArrayList<StudentBean> list = sdao.getInfoList("19001");
		request.setAttribute("stu", list);		//요청 페이지에 값을 setting. list에 있는 값을 "stu"에 넣어서 TNT_mypage.jsp에 값을 넘김
		pageContext.forward("TNT_mypage.jsp");
		
	} else if(action.equals("update")){
		ArrayList<StudentBean> list = sdao.getInfoList("19001");
		request.setAttribute("stu", list);		//요청 페이지에 값을 setting. list에 있는 값을 "stu"에 넣어서 TNT_mypage_update.jsp에 값을 넘김
		pageContext.forward("TNT_mypage_update.jsp");
		
	}else if(action.equals("insert")){
		adao.attendInsert((String)session.getAttribute("sid"));
		pageContext.forward("TNT_Attend_control.jsp?action=attend_out");
	}
%>
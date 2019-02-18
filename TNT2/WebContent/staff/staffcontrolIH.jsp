<%@page import="TNT_Bean.TestvuBean"%>
<%@page import="TNT_Bean.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>

<jsp:useBean id="bean" class="TNT_DAO.StudentDAO" />
<jsp:useBean id="student" class="TNT_Bean.StudentBean" />
<jsp:useBean id="grade" class="TNT_Bean.GradeBean" />
<jsp:useBean id="vu" class="TNT_Bean.TestvuBean" />

<jsp:setProperty property="*" name="bean" />
<jsp:setProperty property="*" name="student" />
<jsp:setProperty property="*" name="vu" />

<%
	request.setCharacterEncoding("UTF-8");

	//��(main)���� ���� parameter�� "action"���� action�� ����
	String action = request.getParameter("action");

	//action�� ���� "list���� Ȯ��"
	if (action.equals("list")) {

		//bean�� �ִ� getStudents�� �����ϰ� ���� ���� arrylist type���� studentVO�� ����
		ArrayList<StudentBean> list = bean.getStudents();

		//list�� ���� ���� "list"�� ����?
		request.setAttribute("list", list);

		//���� ������(list)�� ������ student_info.jsp�� ������
		pageContext.forward("Student_Info.jsp");

	}

	else if (action.equals("gradelist")) {
		ArrayList<TestvuBean> list = bean.getScore();
		request.setAttribute("list", list);
		pageContext.forward("ranking.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
   function stud_check() {
      document.form1.action.value="check1";
      document.form1.submit();
   }
  
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align="center">
<form name="form1" method="get" action="student_control.jsp">
<input type="hidden" name="action" value="insert">
<table border="2">
<h1>ȸ������ </h1> 
<tr><th>���̵�</th><td><input type="text" name="student_id">
<input type="button" value="�ߺ�Ȯ��" onclick="stud_check()" required></td></tr>
<tr><th>��й�ȣ</th><td colspan="2"><input type="password" name="student_pw"></td></tr>
<tr><th>��й�ȣȮ��</th><td colapan="2"><input type="password" name="student_pw"></td></tr>
<tr><th>�̸�</th><td colspan="2"><input type="text" name="student_name" required></td></tr>
<tr><th>����</th><td colspan="2">
<input type="radio" name="gender" value="����" >���� <input type="radio"name="gender" value="����">����</td></tr>
<tr><th>�ڵ�����ȣ</th><td colspan="2"><input type="text" name="student_phone" required></td></tr>
<tr><th>�ּ�</th><td colspan="2"><input type="text" name="student_adress" required></td></tr>
<tr><th>�б�</th><td colspan="2"><input type="text" name="student_univ_coll" required></td></tr>
<tr><th>�а�</th><td colspan="2"><input type="text" name="student_major" required></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="ȸ������" action="student_control.jsp %>"><input type="reset" value="���" onclick="����">
</table>
</form>
</body>
</html>
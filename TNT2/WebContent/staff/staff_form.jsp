<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
   function staff_check() {
      document.form1.action.value="check2";
      document.form1.submit();
   }

</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align="center">
<form name="form1" method="get" action="staff_control.jsp">
<input type="hidden" name="action" value="insert">
<table border="2">
<h1>ȸ������ </h1> 
<tr><th>������ȣ</th><td><input type="text" name="staff_num"> <!-- ���� ��ȣ�� ������ ������ ���� �������� �ڵ����� ��ȣ�� ������Ʈ �߾��Ѵ�. -->
<tr><th>���̵�</th><td><input type="text" name="staff_id">
<input type="button" value="�ߺ�Ȯ��" onclick="staff_check()"></td></tr>
<tr><th>��й�ȣ</th><td colspan="2"><input type="password" name="staff_pass"></td></tr>
<tr><th>��й�ȣȮ��</th><td colapan="2"><input type="password" name="student_pass"></td></tr>
<tr><th>�̸�</th><td colspan="2"><input type="text" name="staff_name"></td></tr>
<tr><th>����</th><td colspan="2">
<input type="radio" name="gender" value="����" >���� <input type="radio"name="gender" value="����">����</td></tr>
<tr><th>����</th><td colspan="2"><input type="text" name="staff_responsibility"></td></tr>
<tr><th>�ּ�</th><td colspan="2"><input type="text" name="staff_address"></td></tr>
<tr><th>����ȣ</th><td colspan="2"><input type="text" name="staff_phone"></td></tr>
<tr><th>�̸���</th><td colspan="2"><input type="email" name="staff_email"></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="����"><input type="reset" value="���">
</table>
</form>
</body>
</html>
--학생 로그인 check
create or replace function log_in_check
(p_stuid students.student_id%type,
 p_stupw students.student_pass%type)
return number 
is 
	v_pw number;
	v_epw varchar2(50);
begin
	select PKG_ENCRYPT_DECRYPT.DECRYPT(p_stupw)
	into v_epw
	from dual;
	
	select count(*)
	into v_pw
	from students
	where student_id=p_stuid
	and student_pass = v_epw;
	
	return v_pw;
end log_in_check;
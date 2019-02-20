--학생 아이디 중복 확인
create or replace function studid_check
(p_id students.student_id%type)
return number
is
	v_pwd number;
begin
	select count(*)
	into v_pwd
	from students
	where student_id = p_id;
	
    return v_pwd;
end studid_check;
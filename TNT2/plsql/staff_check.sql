--교직원 아이디 중복확인 procedure
create or replace function staff_check
(p_id staffs.staff_id%type)
return number
is
	v_pwd number;
begin
	select count(*)
	into v_pwd
	from staffs
	where staff_id = p_id;
	
	return v_pwd;
	
end staff_check;
create or replace function staff_login_check
(p_staid staffs.staff_id%type,
p_stapw staffs.staff_pw%type)
return number 
is 
	v_pw number;
	v_epw varchar2(50);
begin
	select PKG_ENCRYPT_DECRYPT.DECRYPT(p_stapw)
	into v_epw
	from dual;
	
	select count(*)
	into v_pw
	from staffs
	where staff_id=p_staid
	and staff_pw=v_epw;
	
	return v_pw;
end staff_login_check;
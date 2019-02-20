create or replace function stud_licen(p_end_date date)
return varchar2 
is
	v_lice_status varchar2(20);
begin
	if p_end_date > sysdate then
		v_lice_status := 'expired';
	else
		v_lice_status := 'valid';
	end if;
	return (v_lice_status);
end stud_licen;
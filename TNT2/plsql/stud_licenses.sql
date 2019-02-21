create or replace procedure stud_licenses
(a out sys_refcursor,
 p_stuid students.student_id%type)
is
begin
	open a for
		select a.student_name, b.t_license_code, c.license_name, c.certificate_authority, c.license_type, stud_lice(sysdate)
		from students a join student_licenses b
		on a.student_id = b.student_id
		join licenses c
		on b.license_num = c.license_num
		where a.student_id = p_stuid;
end;
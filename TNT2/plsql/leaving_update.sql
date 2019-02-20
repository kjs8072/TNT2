create or replace procedure leaving_update(p_stuid attendance_managements.student_id%type)
is
begin
	update attendance_managements
	set leaving_time=sysdate
	where student_id=p_stuid
	and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
	commit;

	attendance_update(p_stuid);
end leaving_update;
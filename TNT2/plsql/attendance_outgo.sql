create or replace procedure attendance_outgo(p_stuid attendance_managements.student_id%type)
is
begin
	update attendance_managements
	set outgo_time = sysdate
	where student_id = p_stuid
	and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
	commit;
end attendance_outgo;
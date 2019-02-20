create or replace procedure attendance_insert(p_stuid attendance_managements.student_id%type)
is
begin
	insert into attendance_managements(attendance_num, attendance_date, entering_time, student_id)
	values(sequence_atten_num.nextval, sysdate, sysdate, p_stuid);
	commit;
end attendance_insert;
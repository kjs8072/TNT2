create or replace procedure absent_check
is
cursor c_absent_cursor is
	select student_id from students
	where student_id not in(select student_id from attendance_managements 
	where to_char(attendance_date, 'YYYYMMDD')=to_char(sysdate,'YYYYMMDD'));
	
cursor c_out_cursor is
	select student_id from attendance_managements
	where entering_time is null
	and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
	
begin
	for absent_record in c_absent_cursor loop
		insert into attendance_managements(attendance_num, attendance_date, attendance_division, student_id)
		values (sequence_atten_num.nextval, sysdate, 'absent', absent_record.student_id);
	end loop;
	
	for out_record in c_out_cursor loop
		update attendance_managements
		set attendance_division='absent'
		where student_id=out_record.student_id
		and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
	end loop;
	commit;
end absent_check;
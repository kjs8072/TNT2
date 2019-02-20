create or replace procedure attendance_select(p_stuid attendance_managements.student_id%type,
	v_attend_count out number,
	v_late_count out number,
	v_early_count out number,
	v_out_count in out number,
	v_absent_count in out number,
	v_count in out number)
is
begin
	select sum(atd_cnt), sum(late_cnt), sum(ely_cnt), sum(out_cnt), sum(ab_cnt)
	into v_attend_count, v_late_count, v_early_count, v_out_count, v_absent_count
	from (select decode(attendance_division, 'attendance', 1,0) atd_cnt,
				 decode(attendance_division, 'late', 1,0) late_cnt,
				 decode(attendance_division, 'early', 1,0) ely_cnt,
				 decode(attendance_division, 'outing', 1,0) out_cnt,
				 decode(attendance_division, 'absent', 1,0) ab_cnt
		  from attendance_managements
		  where student_id = p_stuid);
	
	v_count := v_late_count + v_early_count + v_out_count;
	v_absent_count := v_absent_count + v_count/3;
	v_attend_count := v_attend_count - v_absent_count;
	
	if v_attend_count < 0 then v_attend_count := 0; end if;
end attendance_select;

create or replace procedure attendance_update(p_stuid attendance_managements.student_id%type)
is
	v_etime attendance_managements.entering_time%type;
	v_ltime attendance_managements.leaving_time%type;
	v_outtime attendance_managements.outgo_time%type;
	v_returntime attendance_managements.leaving_time%type;
	v_check number;
	v_minus number;
	v_time number;
begin
	select entering_time, leaving_time, outgo_time, return_time
	into v_etime, v_ltime, v_outtime, v_returntime
	from attendance_managements
	where student_id=p_stuid
	and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');

	v_time := (extract(hour from v_ltime)*60*60+extract(minute from v_ltime)*60+extract(second from v_ltime))
- (extract(hour from v_etime)*60*60+extract(minute from v_etime)*60+extract(second from v_etime));

	v_minus := (extract(hour from v_returntime)*60*60+extract(minute from v_returntime)*60+extract(second from v_returntime))
- (extract(hour from v_outtime)*60*60+extract(minute from v_outtime)*60+extract(second from v_outtime));

	if v_outtime is null then
		v_check := 0;
	else
		if v_returntime is null then
			v_check := 1;
		else
			if v_minus < 14400 then
				v_check := 2;
			else
				v_check := 3;
			end if;
		end if;
	end if;

	if v_etime < to_timestamp('9:11', 'HH24:MI') then
		if v_ltime >= to_timestamp('17:50', 'HH24:MI') then
			if v_check=0 then
				update attendance_managements
				set attendance_division='attendance'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			elsif v_check=1 then
				update attendance_managements
				set attendance_division='absent'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			elsif v_check=2 then
				update attendance_managements
				set attendance_division='outing'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			else
				update attendance_managements
				set attendance_division='absent'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			end if;

		elsif v_ltime < to_timestamp('12:50', 'HH24:MI') then
			update attendance_managements
			set attendance_division='absent'
			where student_id=p_stuid
			and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
		elsif v_ltime < to_timestamp('17:50', 'HH24:MI') then
			update attendance_managements
			set attendance_division='early'
			where student_id=p_stuid
			and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
		else
			update attendance_managements
			set attendance_division='absent'
			where student_id=p_stuid
			and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
		end if;


	elsif v_etime >= to_timestamp('9:11', 'HH24:MI') and v_etime < to_timestamp('14:00', 'HH24:MI') then
		if v_ltime >= to_timestamp('17:50', 'HH24:MI') then
			if v_check=0 then
				update attendance_managements
				set attendance_division='late'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			elsif v_check=1 then
				update attendance_managements
				set attendance_division='absent'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			elsif v_check=2 then
				update attendance_managements
				set attendance_division='outing'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			else
				update attendance_managements
				set attendance_division='absent'
				where student_id=p_stuid
				and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
			end if;

		elsif v_time < 14400 then
			update attendance_managements
			set attendance_division='absent'
			where student_id=p_stuid
			and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
		elsif v_ltime < to_timestamp('17:50', 'HH24:MI') then
			update attendance_managements
			set attendance_division='early'
			where student_id=p_stuid
			and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
		else
			update attendance_managements
			set attendance_division='absent'
			where student_id=p_stuid
			and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
		end if;
	elsif v_etime >= to_timestamp('14:00', 'HH24:MI') then
		update attendance_managements
		set attendance_division='absent'
		where student_id=p_stuid
		and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
	else
		update attendance_managements
		set attendance_division='absent'
		where student_id=p_stuid
		and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD');
	end if;
	commit;
end attendance_update;
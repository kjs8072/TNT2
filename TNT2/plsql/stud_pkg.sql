create or replace package stud_pkg
is
procedure stu_select 
(p_stuid students.student_id%type,
 p_rcursor out sys_refcursor);
 
procedure stu_insert(
p_stuid students.student_id%type,
p_pw students.student_pass%type,
p_name students.student_name%type,
p_birth students.student_birth%type,
p_gender students.student_gender%type,
p_phone students.student_phone%type,
p_addr students.student_address%type,
p_edu students.student_complete_edu%type,
p_univ students.student_univ_coll%type,
p_major students.student_major%type);
	
procedure stu_update
(p_stuid students.student_id%type,
 p_col varchar2,
 p_val varchar2);

procedure stud_delete
(p_stuid students.student_id%type);

end stud_pkg;

--package body

create or replace package body stud_pkg
is
procedure stu_select 
(p_stuid in students.student_id%type,
 p_rcursor out sys_refcursor)
is
begin
	open p_rcursor for
		select student_name, student_birth, student_gender, student_phone, student_address, student_univ_coll, student_major 
		from students
		where student_id=p_stuid;
END stu_select;

procedure stu_insert(
p_stuid students.student_id%type,
p_pw students.student_pass%type,
p_name students.student_name%type,
p_birth students.student_birth%type,
p_gender students.student_gender%type,
p_phone students.student_phone%type,
p_addr students.student_address%type,
p_edu students.student_complete_edu%type,
p_univ students.student_univ_coll%type,
p_major students.student_major%type)
is
	v_epw varchar2(50);
begin
	select PKG_ENCRYPT_DECRYPT.ENCRYPT(p_pw)
	into v_epw
	from dual;

	insert into students values (sequence_stu_num.nextval, p_stuid, p_name, p_birth, p_gender, p_phone,
								 p_addr, p_edu, p_univ, p_major, v_epw);
	commit;
end stu_insert;

procedure stu_update
(p_stuid students.student_id%type,
 p_col varchar2,
 p_val varchar2)
is
begin
	update students set p_col = p_val
	where student_id=p_stuid;
end stu_update;

procedure stud_delete(p_stuid students.student_id%type)
is
begin
	delete from students
	where student_id = p_stuid;
	commit;
end stud_delete;
end stud_pkg;
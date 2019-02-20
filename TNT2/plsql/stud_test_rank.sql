create or replace procedure stud_test_rank
(p_num course_details.subject_num%type, p_rc OUT sys_refcursor) as
begin
	open p_rc for
	select s.student_name, c.course_name, j.subject_name, g.score,g.test_date, g.test_division, g.test_result,
		   rank() over(partition by j.subject_num order by g.score desc) as student_rank
	from students s, courses c, course_details d, subjects j, grade_managements g
	where s.student_id = g.student_id and g.detail_num = d.detail_num and
		d.course_num = c.course_num and d.subject_num = j.subject_num
        and j.subject_num = p_num;
end stud_test_rank;



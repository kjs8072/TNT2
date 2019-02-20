 create or replace procedure stu_tsetcol (p_stu students.student_id%type, p_stu_tesl in out sys_refcursor)
   is
   begin
      open p_stu_tesl for select s.student_name,g.score,g.test_date,g.test_result,g.test_division,su.subject_name
               from students s
               join grade_managements g
               on s.student_id=g.student_id
               join course_details c
               on g.detail_num =c.detail_num
               join subjects su
               on c.subject_num = su.subject_num
               where s.student_id =p_stu;
 end stu_tsetcol;
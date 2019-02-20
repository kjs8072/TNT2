package TNT_Bean;

import java.sql.Date;

public class CourseListVuBean {
	private String course_name;
	private String course_contents;
	private String subject_name;
	private String subject_contents;
	private String detail_method;
	private String subject_division;
	private Date course_open;
	private Date course_finish;
	private int course_persons;
	private int course_max;
	private Date detail_date;
	
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_contents() {
		return course_contents;
	}
	public void setCourse_contents(String course_contents) {
		this.course_contents = course_contents;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	public String getSubject_contents() {
		return subject_contents;
	}
	public void setSubject_contents(String subject_contents) {
		this.subject_contents = subject_contents;
	}
	public String getDetail_method() {
		return detail_method;
	}
	public void setDetail_method(String detail_method) {
		this.detail_method = detail_method;
	}
	public String getSubject_division() {
		return subject_division;
	}
	public void setSubject_division(String subject_division) {
		this.subject_division = subject_division;
	}
	public Date getCourse_open() {
		return course_open;
	}
	public void setCourse_open(Date course_open) {
		this.course_open = course_open;
	}
	public Date getCourse_finish() {
		return course_finish;
	}
	public void setCourse_finish(Date course_finish) {
		this.course_finish = course_finish;
	}
	public int getCourse_persons() {
		return course_persons;
	}
	public void setCourse_persons(int course_persons) {
		this.course_persons = course_persons;
	}
	public int getCourse_max() {
		return course_max;
	}
	public void setCourse_max(int course_max) {
		this.course_max = course_max;
	}
	public Date getDetail_date() {
		return detail_date;
	}
	public void setDetail_date(Date detail_date) {
		this.detail_date = detail_date;
	}
}

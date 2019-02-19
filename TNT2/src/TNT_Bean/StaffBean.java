package TNT_Bean;

import java.sql.Date;

public class StaffBean {

	private int staff_num;
	private String staff_id;
	private String staff_pass;
	private String staff_name;
	private String gender;
	private String responsibility;
	private int Staff_salary;
	private String staff_address;
	private String staff_phone;
	private String staff_email;
	private String f_license_code;
	private int license_num;
	private Date f_license_start_date;
	private Date f_license_end_date;

	public int getStaff_num() {
		return staff_num;
	}

	public void setStaff_num(int staff_num) {
		this.staff_num = staff_num;
	}

	public String getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}

	public String getStaff_pass() {
		return staff_pass;
	}

	public void setStaff_pass(String staff_pass) {
		this.staff_pass = staff_pass;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getResponsibility() {
		return responsibility;
	}

	public void setResponsibility(String responsibility) {
		this.responsibility = responsibility;
	}

	public int getStaff_salary() {
		return Staff_salary;
	}

	public void setStaff_salary(int staff_salary) {
		Staff_salary = staff_salary;
	}

	public String getStaff_address() {
		return staff_address;
	}

	public void setStaff_address(String staff_address) {
		this.staff_address = staff_address;
	}

	public String getStaff_phone() {
		return staff_phone;
	}

	public void setStaff_phone(String staff_phone) {
		this.staff_phone = staff_phone;
	}

	public String getStaff_email() {
		return staff_email;
	}

	public void setStaff_email(String staff_email) {
		this.staff_email = staff_email;
	}

	public String getF_license_code() {
		return f_license_code;
	}

	public void setF_license_code(String f_license_code) {
		this.f_license_code = f_license_code;
	}

	public int getLicense_num() {
		return license_num;
	}

	public void setLicense_num(int license_num) {
		this.license_num = license_num;
	}

	public Date getF_license_start_date() {
		return f_license_start_date;
	}

	public void setF_license_start_date(Date f_license_start_date) {
		this.f_license_start_date = f_license_start_date;
	}

	public Date getF_license_end_date() {
		return f_license_end_date;
	}

	public void setF_license_end_date(Date f_license_end_date) {
		this.f_license_end_date = f_license_end_date;
	}

}
package TNT_Bean;

import java.sql.Date;

public class StudentLicenseVuBean {

	private String student_name;
	private String t_license_code;
	private String license_name;
	private String license_type;
	private String certificate_authority;
	private Date t_license_start_date;
	private Date t_license_end_date;
	
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getT_license_code() {
		return t_license_code;
	}
	public void setT_license_code(String t_license_code) {
		this.t_license_code = t_license_code;
	}
	public String getLicense_name() {
		return license_name;
	}
	public void setLicense_name(String license_name) {
		this.license_name = license_name;
	}
	public String getLicense_type() {
		return license_type;
	}
	public void setLicense_type(String license_type) {
		this.license_type = license_type;
	}
	public String getCertificate_authority() {
		return certificate_authority;
	}
	public void setCertificate_authority(String certificate_authority) {
		this.certificate_authority = certificate_authority;
	}
	public Date getT_license_start_date() {
		return t_license_start_date;
	}
	public void setT_license_start_date(Date t_license_start_date) {
		this.t_license_start_date = t_license_start_date;
	}
	public Date getT_license_end_date() {
		return t_license_end_date;
	}
	public void setT_license_end_date(Date t_license_end_date) {
		this.t_license_end_date = t_license_end_date;
	}
}

package TNT_Bean;

public class LicensesBean {

//학생,교직원 자격증과 같이 여기에 둬야되는지 생각 해 보기!
//일단은 따로 해놓겠슴다~~ 수정 필요하면 말씀 해 주thㅔ여~

	private int license_num;
	private String license_name;
	private String certificate_authority;
	private String license_type;

	public int getLicense_num() {
		return license_num;
	}

	public void setLicense_num(int license_num) {
		this.license_num = license_num;
	}

	public String getLicense_name() {
		return license_name;
	}

	public void setLicense_name(String license_name) {
		this.license_name = license_name;
	}

	public String getCertificate_authority() {
		return certificate_authority;
	}

	public void setCertificate_authority(String certificate_authority) {
		this.certificate_authority = certificate_authority;
	}

	public String getLicense_type() {
		return license_type;
	}

	public void setLicense_type(String license_type) {
		this.license_type = license_type;
	}

}

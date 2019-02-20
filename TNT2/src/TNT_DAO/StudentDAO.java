package TNT_DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import TNT_Bean.*;

public class StudentDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	CallableStatement cs = null;
	ResultSet rs = null;

	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";

	String jdbc_url = "jdbc:oracle:thin:@192.168.0.24:1521:TNT";

	void connect() {
		try {

			conn = DriverManager.getConnection(jdbc_url, "admin", "admin");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public ArrayList<StudentBean> getStudents() {
		connect();
		String sql = "select student_id, student_name, student_birth, student_gender, student_phone, "
				+ "student_address, student_complete_edu, student_univ_coll, student_major "
				+ "from students order by student_name";

		ArrayList<StudentBean> list = new ArrayList<>();
		StudentBean student = null;
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				student = new StudentBean();
				student.setStudent_id(rs.getString("student_id"));
				student.setStudent_name(rs.getString("student_name"));
				student.setStudent_birth(rs.getDate("student_birth"));
				student.setStudent_gender(rs.getString("student_gender"));
				student.setStudent_phone(rs.getString("student_phone"));
				student.setStudent_address(rs.getString("student_address"));
				student.setStudent_complete_edu(rs.getString("student_complete_edu"));
				student.setStudent_univ_coll(rs.getString("student_univ_coll"));
				student.setStudent_major(rs.getString("student_major"));

				list.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<StudentBean> getInfoList(String stdid) {
		connect();
		String sql = "select student_id, student_name, student_birth, student_gender, student_phone, student_address, student_univ_coll, student_major "
				+ " from students where student_id=?";

		ArrayList<StudentBean> list = new ArrayList<>();
		StudentBean bean = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stdid);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				bean = new StudentBean();
				bean.setStudent_name(rs.getString("student_name"));
				bean.setStudent_birth(rs.getDate("student_birth"));
				bean.setStudent_gender(rs.getString("student_gender"));
				bean.setStudent_phone(rs.getString("student_phone"));
				bean.setStudent_address(rs.getString("student_address"));
				bean.setStudent_univ_coll(rs.getString("student_univ_coll"));
				bean.setStudent_major(rs.getString("student_major"));
				bean.setStudent_id(rs.getString("student_id"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<RankBean> getScore(int subject_num) {
		connect();
		CallableStatement cs;

		String sql = "{call stud_test_rank(?, ?)}";
		ArrayList<RankBean> list = new ArrayList<>();
		RankBean bean = null;

		try {
			cs = conn.prepareCall(sql);
			cs.setInt(1, subject_num);
			// cs.registerOutParameter(2, java.sql.Types.REF_CURSOR);
			cs.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
			cs.execute();
			rs = (ResultSet) cs.getObject(2);

			while (rs.next()) {
				bean = new RankBean();
				bean.setStudent_name(rs.getString("student_name"));
				bean.setCourse_name(rs.getString("course_name"));
				bean.setSubject_name(rs.getString("subject_name"));
				bean.setScore(rs.getString("score"));
				bean.setTest_date(rs.getString("test_date"));
				bean.setTest_division(rs.getString("test_division"));
				bean.setTest_result(rs.getString("test_result"));
				bean.setStudent_rank(rs.getString("student_rank"));

				list.add(bean);
			}

			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


	public ArrayList<StudentLicenseVuBean> getTLicense() {
		connect();
		String sql = "select * from staff_licenses";
		ArrayList<StudentLicenseVuBean> select = new ArrayList<>();
		StudentLicenseVuBean bean = null;

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				bean = new StudentLicenseVuBean();
								
				bean.setStudent_name(rs.getString("student_name"));
				bean.setT_license_code(rs.getString("t_license_code"));
				bean.setLicense_name(rs.getString("license_name"));
				bean.setLicense_type(rs.getString("license_type"));
				bean.setCertificate_authority(rs.getString("certificate_authority"));
				bean.setT_license_start_date(rs.getDate("t_license_start_date"));
				bean.setT_license_end_date(rs.getDate("t_license_end_date"));

				select.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return select;
	}
	
	/*
	 * public ArrayList<TestvuBean> getScore() { connect();
	 * 
	 * String sql = "select * from test_vu";
	 * 
	 * ArrayList<TestvuBean> list = new ArrayList<>(); TestvuBean vu = null; try {
	 * pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery();
	 * while (rs.next()) { vu = new TestvuBean();
	 * vu.setStudent_name(rs.getString("student_name"));
	 * vu.setCourse_name(rs.getString("course_name"));
	 * vu.setSubject_name(rs.getString("subject_name"));
	 * vu.setScore(rs.getInt("score")); vu.setTest_date(rs.getDate("test_date"));
	 * vu.setTest_division(rs.getString("test_division"));
	 * vu.setTest_result(rs.getString("test_result"));
	 * 
	 * list.add(vu); } } catch (SQLException e) { e.printStackTrace(); } return
	 * list; }
	 */

	public int funcStudent_check(String id) {
		connect();
		CallableStatement cs;
		String sql = "{? = call studid_check(?)";
		int result = 0;

		try {
			cs = conn.prepareCall(sql);
			cs.registerOutParameter(1, java.sql.Types.INTEGER);
			cs.setString(2, id);
			cs.execute();
			result = cs.getInt(1);
			System.out.println("llllllllllllllllllllllll" + result);
//	         System.out.println(cs.getInt(1) + " => success ");
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}

	public boolean insertDB(StudentBean membership) { // ����
		connect();
		String sql = "insert into students (student_id,student_pw,student_name,sysdate,student_gender,student_phone,student_address,student_complete_edu,student_univ_coll,student_major)"
				+ " values (?,?,?,?,?,?,?,?,?) ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, membership.getStudent_id());
			pstmt.setString(2, membership.getStudent_pass()); // ex)
			pstmt.setString(3, membership.getStudent_name());
			pstmt.setString(4, membership.getStudent_gender());
			pstmt.setString(5, membership.getStudent_phone());
			pstmt.setString(6, membership.getStudent_address());
			pstmt.setString(7, membership.getStudent_complete_edu());
			pstmt.setString(8, membership.getStudent_univ_coll());
			pstmt.setString(9, membership.getStudent_major());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

}

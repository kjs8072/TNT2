package TNT_DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import TNT_Bean.StaffBean;
import TNT_Bean.StudentBean;

import TNT_Bean.StaffBean;

public class StaffDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;

	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@192.168.0.24:1521:TNT";

	void connect() { // DB¿¬°á
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "admin", "admin");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
<<<<<<< HEAD
		void disconnect() {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		public boolean insertDB(StaffBean membership) { //»ðÀÔ
			connect();
			String sql = "insert into staffs (staff_num,staff_id,staff_pass,staff_name,staff_gender,staff_responsibility,staff_address,staff_phone,staff_email)"
						+ " values (?,?,?,?,?,?,?,?,?) ";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, membership.getStaff_num()); //ex)
					pstmt.setString(2, membership.getStaff_id());
					pstmt.setString(3, membership.getStaff_pass());
					pstmt.setString(4, membership.getStaff_name());
					pstmt.setString(5, membership.getStaff_gender());
					pstmt.setString(6, membership.getResponsibility());
					pstmt.setString(7, membership.getStaff_address());
					pstmt.setString(8, membership.getStaff_phone());
					pstmt.setString(9, membership.getStaff_email());
					pstmt.executeUpdate();
					
				} catch (SQLException e) {
					e.printStackTrace();
					return false;
				} finally {
					disconnect();
				}
				return true;
		}
=======
>>>>>>> branch 'master' of https://github.com/kjs8072/TNT2.git

<<<<<<< HEAD
		public int funcstaff_check(String id) {
		      connect();
		      CallableStatement cs;
		      String sql = "{? = call staff_check(?)";
		      int result = 0;
=======
	public ArrayList<StaffBean> getInfoList(String staffid) {
		connect();
		String sql = "select staff_id, staff_name, staff_birth, staff_gender, staff_phone, staff_address, staff_responsibility"
				+ " from staffs where staff_id=?";
>>>>>>> branch 'master' of https://github.com/kjs8072/TNT2.git

<<<<<<< HEAD
		      try {
		         cs = conn.prepareCall(sql);
		         cs.registerOutParameter(1, java.sql.Types.INTEGER);
		         cs.setString(2, id);
		         cs.execute();
		         result = cs.getInt(1);
		         System.out.println("llllllllllllllllllllllll"+result);
=======
		ArrayList<StaffBean> list = new ArrayList<>();
		StaffBean bean = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, staffid);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				bean = new StaffBean();
				bean.setStaff_name(rs.getString("staff_name"));
				bean.setStaff_birth(rs.getDate("staff_birth"));
				bean.setStaff_gender(rs.getString("staff_gender"));
				bean.setStaff_phone(rs.getString("staff_phone"));
				bean.setStaff_address(rs.getString("staff_address"));
				bean.setStaff_id(rs.getString("staff_id"));
				bean.setStaff_responsibility(rs.getString("staff_responsibility"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<StaffBean> SelectDBstaffs() {
		connect();
		String sql = "select staff_id, staff_name, staff_address, staff_num, staff_phone, staff_salary "
				+ " from staffs";

		ArrayList<StaffBean> list = new ArrayList<>();
		StaffBean bean = null;

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				bean = new StaffBean();
				bean.setStaff_name(rs.getString("staff_name"));
				bean.setStaff_address(rs.getString("staff_address"));
				bean.setStaff_email(rs.getString("staff_email"));
				bean.setStaff_num(rs.getInt("staff_num"));
				bean.setStaff_phone(rs.getString("staff_phone"));
				bean.setStaff_salary(rs.getInt("staff_salary"));
				bean.setStaff_id(rs.getString("staff_id"));

				list.add(bean);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean insertDB(StaffBean bean) { // »ðÀÔ
		connect();
		String sql = "insert into staffs (staff_num,staff_id,staff_pass,staff_name,staff_gender,staff_responsibility,staff_address,staff_phone,staff_email)"
				+ " values (?,?,?,?,?,?,?,?,?) ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bean.getStaff_num()); // ex)
			pstmt.setString(2, bean.getStaff_id());
			pstmt.setString(3, bean.getStaff_pass());
			pstmt.setString(4, bean.getStaff_name());
			pstmt.setString(5, bean.getStaff_gender());
			pstmt.setString(6, bean.getStaff_responsibility());
			pstmt.setString(7, bean.getStaff_address());
			pstmt.setString(8, bean.getStaff_phone());
			pstmt.setString(9, bean.getStaff_email());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	public int funcstaff_check(int id) {
		connect();
		CallableStatement cs;
		String sql = "{? = call staff_check(?)";
		int result = 0;

		try {
			cs = conn.prepareCall(sql);
			cs.registerOutParameter(1, java.sql.Types.INTEGER);
			cs.setInt(2, id);
			cs.execute();
			result = cs.getInt(1);
			System.out.println("llllllllllllllllllllllll" + result);
>>>>>>> branch 'master' of https://github.com/kjs8072/TNT2.git
//		         System.out.println(cs.getInt(1) + " => success ");
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}

}

package TNT_DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import TNT_Bean.StaffLicenseBean;

public class StaffLicenseDAO {

	Connection conn;
	PreparedStatement pstmt;

	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@192.168.111.136:1521:TNT";

	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "admin", "oracle");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public ArrayList<StaffLicenseBean> staffDBselect() {
		connect();
		String sql = "select * from staff_licenses";
		ArrayList<StaffLicenseBean> select = new ArrayList<>();
		StaffLicenseBean bean = null;

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				bean = new StaffLicenseBean();
				bean.setF_license_code(rs.getString("f_license_code"));
				bean.setF_license_end_date(rs.getDate("f_license_end_date"));
				bean.setF_license_start_date(rs.getDate("f_license_start_date"));

				select.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return select;
	}

	public boolean staffDBinsert() {
		connect();
		String sql = "insert into staff_licenses(f_license_code, f_license_start_date, f_license_end_date, license_num, staff_num)"
				+ " values(?,?,?,?,?)";
	}
	
	
	
	
	
}

package TNT_DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import TNT_Bean.AttendBean;

public class AttendDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url="jdbc:oracle:thin:@192.168.0.24:1521:TNT";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "admin", "admin");	//url, user��, password
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
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
	
	public ArrayList<AttendBean> getAttendList(int student_num){
		connect();
		String sql="select * from ATTENDANCE_MANAGEMENTS  where student_num=?";
		ArrayList<AttendBean> list = new ArrayList<AttendBean>();
		AttendBean bean = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, student_num);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bean = new AttendBean();
				bean.setAttendance_date(rs.getString("attendance_date"));
				bean.setAttendance_division(rs.getString("attendance_division"));
				bean.setAttendance_num(rs.getInt("attendance_num"));
				bean.setEntering_time(rs.getString("entering_time"));
				bean.setLeaving_time(rs.getString("leaving_time"));
				bean.setOutgo_time(rs.getString("outgo_time"));
				bean.setReturn_time(rs.getString("return_time"));
				bean.setStudent_num(rs.getInt("student_num"));
				
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
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
//		         System.out.println(cs.getInt(1) + " => success ");
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}
}

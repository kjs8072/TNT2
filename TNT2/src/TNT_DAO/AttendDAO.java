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
			conn = DriverManager.getConnection(jdbc_url, "admin", "admin");	//url, user명, password
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
	
	public ArrayList<AttendBean> getAttendList(String stuid){	//출석리스트조회
		connect();
		String sql="select * from ATTENDANCE_MANAGEMENTS where student_id=?";
		ArrayList<AttendBean> list = new ArrayList<AttendBean>();
		AttendBean bean = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stuid);
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
				bean.setStudent_id(rs.getString("student_id"));
				
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public void attendInsert(String stuid) {
		connect();
		CallableStatement cs;
		try {
			cs = conn.prepareCall("{call attendance_insert(?)}");
			cs.setString(1,stuid);
			cs.execute();
			
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void attendOutUpdate(String stuid) {
		connect();
		CallableStatement cs;
		try {
			cs = conn.prepareCall("{call attendance_outgo(?)}");
			cs.setString(1,stuid);
			cs.execute();
			
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void attendReturnUpdate(String stuid) {
		connect();
		CallableStatement cs;
		try {
			cs = conn.prepareCall("{call attendance_return(?)}");
			cs.setString(1,stuid);
			cs.execute();
			
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void attendLeavingUpdate(String stuid) {
		connect();
		CallableStatement cs;
		try {
			cs = conn.prepareCall("{call leaving_update(?)}");
			cs.setString(1,stuid);
			cs.execute();
			
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void attendDivision(String stuid) {
		connect();
		CallableStatement cs;
		try {
			cs = conn.prepareCall("{call attendance_update(?)}");
			cs.setString(1,stuid);
			cs.execute();
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public String etimeSelect(String stuid) {
		connect();
		String sql="select entering_time from attendance_managements where student_id=? and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD')";
		String etime = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stuid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				etime = rs.getString("entering_time");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return etime;
	}
	
	public String outtimeSelect(String stuid) {
		connect();
		String sql="select outgo_time from attendance_managements where student_id=? and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD')";
		String outtime = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stuid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				outtime = rs.getString("outgo_time");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return outtime;
	}
	
	public String returntimeSelect(String stuid) {
		connect();
		String sql="select return_time from attendance_managements where student_id=? and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD')";
		String returntime = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stuid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				returntime = rs.getString("return_time");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return returntime;
	}
	
	public String leaveSelect(String stuid) {
		connect();
		String sql="select leaving_time from attendance_managements where student_id=? and to_char(attendance_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD')";
		String ltime = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stuid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ltime = rs.getString("leaving_time");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ltime;
	}
/*	public int funcstaff_check(int id) {
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
			cs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}*/
}

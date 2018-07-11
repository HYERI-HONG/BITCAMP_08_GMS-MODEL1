package dao;

import java.sql.*;

import java.util.List;

import domain.MemberBean;

public class MemberDAOImpl implements MemberDAO {

	private static MemberDAO  instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {}
	@Override
	public void insertMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberBean> selectAllMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberBean> selectMemberByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean selectMemberById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int memberCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public MemberBean login(MemberBean bean) {
		MemberBean mem = null;
		String sql = String.format("SELECT MEM_ID USERID,TEAM_ID TEAMID,NAME,"
				+ "AGE,ROLL,PASSWORD FROM MEMBER "
				+ "WHERE MEM_ID LIKE '%s'"
				+ "AND PASSWORD LIKE '%s'",
				bean.getUserId(),bean.getPassword());
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"HRHONG","HRHONG");
			Statement stmt =conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				 mem = new MemberBean();
				 mem.setUserId(rs.getString("USERID"));
				 mem.setPassword(rs.getString("PASSWORD"));
				 mem.setName(rs.getString("NAME"));
				 mem.setRoll(rs.getString("ROLL"));
				 mem.setTeamId(rs.getString("TEAMID"));
				 mem.setAge(rs.getString("AGE"));
			 }
		//Exception이 여러개일 경우는 Exception으로 처리, 상위 예외처리, 모든 예외를 한번에 처리
		}catch (Exception e) {
			e.printStackTrace();
		}
		return mem;
	}

}

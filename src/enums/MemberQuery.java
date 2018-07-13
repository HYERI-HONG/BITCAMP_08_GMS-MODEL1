package enums;

public enum MemberQuery {
	LOGIN,INSERT_MEMBER;
	
	@Override
	public String toString() {
		
		String query ="";
		switch(this) {
		case LOGIN :
			query="SELECT MEM_ID USERID,TEAM_ID TEAMID,NAME,"
					+ "SSN,ROLL,PASSWORD FROM MEMBER "
					+ "WHERE MEM_ID LIKE '%s'"
					+ "AND PASSWORD LIKE '%s'";
			break;
		case INSERT_MEMBER:
			query="INSERT INTO MEMBER(MEM_ID,NAME,PASSWORD,SSN,AGE)"
					+ "VALUES('%s','%s','%s','%s','%s')";
			break;
		}
		return query;
	}
	
}

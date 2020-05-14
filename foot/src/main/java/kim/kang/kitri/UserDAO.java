package kim.kang.kitri;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;



@Repository("userDAO")
public class UserDAO {

	private Connection conn =null;
	private PreparedStatement stmt = null;
	private ResultSet rs =null;
	
	
	
	//SQL
	
	private final String USER_GET ="select * from users where id=? and password=?";
	
	//회원등록 
	
	public UserVO getUser(UserVO vo)
	{
		UserVO user=null;
		
		
		try {
			
			
			System.out.println("User 객체 getUser 기능처리");
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET);
			
			stmt.setString(1, vo.getID());
			stmt.setString(2, vo.getPASSWORD());
			rs =stmt.executeQuery();
			if(rs.next())
			{
				user= new UserVO();
				user.setID(rs.getString("ID"));
				user.setPASSWORD(rs.getString("PASSWORD"));
				user.setGRADE(rs.getString("GRADE"));
				user.setNAME(rs.getString("NAME"));
				user.setEMAIL(rs.getString("EMAIL"));
				user.setPHONE(rs.getString("PHONE"));
				user.setADDRESS(rs.getString("ADDRESS"));
				
				
			}
			System.out.println(user.getID());
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{
			JDBCUtil.close(rs,stmt,conn);
		}
		return user;
	}
	
	
	
}

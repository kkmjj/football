package kim.kang.kitri;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
	public static Connection getConnection() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url ="jdbc:oracle:thin:@janedb2.cpuglwdnhpqg.ap-northeast-2.rds.amazonaws.com:1521:orcl"; 
			String user="admin";
			String password ="admin1234";
			System.out.println("연결 성공 ");
			return DriverManager.getConnection(url,user,password);
		} catch (Exception e) {
			System.out.println("연결 실패 ");
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public static void close(PreparedStatement stmt, Connection conn)
	{
		if(stmt!=null)
		{
			try {
				if(!stmt.isClosed()) stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				stmt= null;
			}
			
			
		}
		
		
		if(conn!=null)
		{
			try {
				if(!conn.isClosed()) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				conn= null;
			}
			
			
		}
		
	} 
	
	
	
	public static void close(ResultSet rs, PreparedStatement stmt, Connection conn)
	{
		
		
		if(rs!=null)
		{
			try {
				if(!rs.isClosed()) rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				rs= null;
			}
			
			
		}
		
		
		
		
		if(stmt!=null)
		{
			try {
				if(!stmt.isClosed()) stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				stmt= null;
			}
			
			
		}
		
		
		if(conn!=null)
		{
			try {
				if(!conn.isClosed()) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				conn= null;
			}
			
			
		}
		
	} 
	
	
	
	
}

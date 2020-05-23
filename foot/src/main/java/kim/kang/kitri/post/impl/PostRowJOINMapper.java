package kim.kang.kitri.post.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kim.kang.kitri.post.PostVO;
import kim.kang.kitri.user.UserVO;

public class PostRowJOINMapper implements RowMapper<PostVO> {
	

	public PostVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		PostVO post = new PostVO();
		post.setID(rs.getInt("ID"));
		post.setWRITER(rs.getString(("WRITER")));
		post.setDATETIME(rs.getDate(("DATETIME")));
		post.setPER(rs.getInt("PER"));
		post.setCONTENT(rs.getString("CONTENT"));
		post.setSTATUS(rs.getString("STATUS"));
		post.setZIP_CODE(rs.getString("ZIP_CODE"));
		post.setADDRESS(rs.getString("ADDRESS"));
		post.setADDRESS_DETAIL(rs.getString("ADDRESS_DETAIL"));
		post.setTITLE(rs.getString("TITLE"));
		post.setHOUR(rs.getInt("HOUR"));
		post.setMIN(rs.getInt("MIN"));
		
//		UserVO user = new UserVO();
		post.setNAME(rs.getString("NAME"));
		
		return post;
	}
}

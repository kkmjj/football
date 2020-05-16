package kim.kang.kitri.post.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kim.kang.kitri.post.PostVO;

public class PostRowMapper implements RowMapper<PostVO> {
	

	public PostVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		PostVO post = new PostVO();
		post.setID(rs.getInt("ID"));
		post.setWriter(rs.getString(("WRITER")));
		post.setDATETIME(rs.getDate(("DATETIME")));
		post.setPLACE((rs.getString("PLACE")));
		post.setPER(rs.getInt("PER"));
		post.setCONTENT(rs.getString("CONTENT"));
		post.setSTATUS(rs.getString("STATUS"));
		
		System.out.println("postMapper"+post.getWriter());
		return post;
	}
}

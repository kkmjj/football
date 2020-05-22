package kim.kang.kitri.apply.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kim.kang.kitri.apply.ApplyVO;

public class ApplyRowJoinMapper implements RowMapper<ApplyVO>{

	@Override
	public ApplyVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ApplyVO apply = new ApplyVO();
		apply.setAPPLICANT(rs.getString("APPLICANT"));
		apply.setCONTENT(rs.getString("CONTENT"));
		apply.setID(rs.getInt("ID"));
		apply.setPOST_ID(rs.getInt("POST_ID"));
		apply.setSTATUS(rs.getString("STATUS"));
		apply.setDATETIME(rs.getDate("DATETIME"));
		apply.setHOUR(rs.getInt("HOUR"));
		apply.setMIN(rs.getInt("MIN"));
		apply.setPOST_TITLE(rs.getString("TITLE"));
		return apply;
	}

}

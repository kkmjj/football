package kim.kang.kitri.user.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kim.kang.kitri.user.UserVO;

public class UserRowMapper implements RowMapper<UserVO>{

	@Override
	public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserVO user = new UserVO();
		user.setID(rs.getString("ID"));
		user.setNAME(rs.getString("NAME"));
		user.setPASSWORD(rs.getString("PASSWORD"));
		user.setPHONE(rs.getString("PHONE"));
		user.setGRADE(rs.getString("GRADE"));
		user.setGENDER(rs.getString("GENDER"));
		return user;
	}

}

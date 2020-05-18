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
		user.setGRADE(rs.getString("GRADE"));
		user.setGENDER(rs.getString("GENDER"));
		user.setADDRESS(rs.getString("ADDRESS"));
		user.setADDRESS_DETAIL(rs.getString("ADDRESS_DETAIL"));
		user.setTEL1(rs.getString("TEL1"));
		user.setTEL2(rs.getString("TEL2"));
		user.setTEL3(rs.getString("TEL3"));
		user.setZIP_CODE(rs.getString("ZIP_CODE"));
		return user;
	}

}

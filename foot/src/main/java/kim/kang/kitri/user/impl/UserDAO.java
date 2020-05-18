package kim.kang.kitri.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kim.kang.kitri.user.UserVO;

@Repository
public class UserDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public UserVO getUser(UserVO vo) {
		String getUser = "SELECT * FROM users WHERE ID =? AND PASSWORD = ?";
		Object[] args = { vo.getID(), vo.getPASSWORD() };
		return jdbcTemplate.queryForObject(getUser, args, new UserRowMapper());
	};

	public UserVO sessionUser(UserVO vo) {
		String getUser = "SELECT * FROM users WHERE ID =?";
		Object[] args = { vo.getID() };
		return jdbcTemplate.queryForObject(getUser, args, new UserRowMapper());
	};
	
	
	public void signupUser(UserVO vo) {
		String signupUser = "INSERT INTO users(ID, PASSWORD, GRADE, NAME,GENDER,TEL1, TEL2,TEL3,ZIP_CODE, ADDRESS, ADDRESS_DETAIL) VALUES(?, ?, ?, ?, ?, ?,?,?,?,?,?)";
		Object[] args = { vo.getID(), vo.getPASSWORD(), vo.getGRADE(), vo.getNAME(), vo.getGENDER(), vo.getTEL1(),vo.getTEL2(),vo.getTEL3(),vo.getZIP_CODE(),vo.getADDRESS(),vo.getADDRESS_DETAIL() };
		jdbcTemplate.update(signupUser, args);
	};

	public UserVO findUser(UserVO vo) {
		String findUser = "SELECT * FROM users WHERE TEL1 =? AND TEL2=? AND TEL3=?";
		Object[] args = { vo.getTEL1(),vo.getTEL2(),vo.getTEL3() };
		return jdbcTemplate.queryForObject(findUser, args, new UserRowMapper());
	};

	public void updateUser(UserVO vo) {
		String updateUser = "UPDATE users SET PASSWORD = ?, GRADE = ?, NAME = ?, GENDER = ?,TEL1 = ?, TEL2=? ,TEL3=?,ZIP_CODE=?, ADDRESS=?,ADDRESS_DETAIL=? WHERE ID = ?";
		Object[] args = { vo.getPASSWORD(), vo.getGRADE(), vo.getNAME(), vo.getGENDER(), vo.getTEL1(),vo.getTEL2(),vo.getTEL3(),vo.getZIP_CODE(),vo.getADDRESS(),vo.getADDRESS_DETAIL(), vo.getID() };
		jdbcTemplate.update(updateUser, args);
	};

	public void deleteUser(UserVO vo) {
		String deleteUser = "DELETE users WHERE ID = ?";
		Object[] args = { vo.getID() };
		jdbcTemplate.update(deleteUser, args);
	};
}

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
		Object[] args = {vo.getID(), vo.getPASSWORD()};
		return jdbcTemplate.queryForObject(getUser, args, new UserRowMapper());
	};

	public void signupUser(UserVO vo) {
		String signupUser = "INSERT INTO users(ID, PASSWORD, GRADE, NAME,GENDER,PHONE) VALUES(?, ?, ?, ?, ?, ?)";
		Object[] args = {vo.getID(),vo.getPASSWORD(), vo.getGRADE(), vo.getNAME(), vo.getGENDER(), vo.getPHONE()};
		jdbcTemplate.update(signupUser, args);
	};

	public UserVO findUser(UserVO vo) {
		String findUser = "SELECT * FROM users WHERE PHONE =?";
		Object[] args = {vo.getPHONE()};
		return jdbcTemplate.queryForObject(findUser, args, new UserRowMapper());
	};

	public void updateUser(UserVO vo) {
		String updateUser = "UPDATE users SET PASSWORD = ?, GRADE = ?, NAME = ?, GENDER = ?,PHONE = ? WHERE ID = ?";
		Object[] args = {vo.getPASSWORD(), vo.getGRADE(), vo.getNAME(), vo.getGENDER(), vo.getPHONE(), vo.getID()};
		jdbcTemplate.update(updateUser, args);
	};

	public void deleteUser(UserVO vo) {
		String deleteUser = "DELETE users WHERE ID = ?";
		Object[] args = {vo.getID()};
		jdbcTemplate.update(deleteUser, args);
	};
}

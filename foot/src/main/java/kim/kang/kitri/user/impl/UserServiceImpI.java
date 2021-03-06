package kim.kang.kitri.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kim.kang.kitri.user.UserService;
import kim.kang.kitri.user.UserVO;

@Service("userService")
public class UserServiceImpI implements UserService {
	@Autowired
	private UserDAO userDAO;
	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	@Override
	public void signupUser(UserVO vo) {
		userDAO.signupUser(vo);
	}
	@Override
	public List<UserVO> findUser(UserVO vo) {
		return userDAO.findUser(vo);
	}
	@Override
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}
	@Override
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}
	@Override
	public UserVO sessionUser(UserVO vo) {
		return userDAO.sessionUser(vo);
	}
	@Override
	public UserVO idGetUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.idGetUser(vo);
	}
	
	
	@Override
	public int UserCount() {
		// TODO Auto-generated method stub
		return userDAO.UserCount();
	}
	
	
}

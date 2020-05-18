package kim.kang.kitri.user.impl;

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
		
	}
	@Override
	public UserVO findUser(UserVO vo) {
		return null;
	}
	@Override
	public void updateUser(UserVO vo) {
		
	}
	@Override
	public void deleteUser(UserVO vo) {
		
	}
}

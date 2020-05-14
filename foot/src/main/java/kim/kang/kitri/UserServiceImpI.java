package kim.kang.kitri;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpI implements UserService {

	
	@Autowired
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO)
	{
		this.userDAO = userDAO;
	}
	
	@Override
	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.getUser(vo);
	}

}

package kim.kang.kitri.user;

public interface UserService {
	public UserVO getUser(UserVO vo);

	public UserVO sessionUser(UserVO vo);
	
	public void signupUser(UserVO vo);

	public UserVO findUser(UserVO vo);

	public void updateUser(UserVO vo);

	public void deleteUser(UserVO vo);
	
	public UserVO idGetUser(UserVO vo);
}

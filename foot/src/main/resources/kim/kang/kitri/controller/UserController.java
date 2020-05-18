package kim.kang.kitri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kim.kang.kitri.user.UserVO;
import kim.kang.kitri.user.impl.UserDAO;

@Controller
public class UserController {
	@Autowired
	UserDAO UserService;
	@RequestMapping(value = "/users/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, HttpSession session) {
		UserVO user = UserService.getUser(vo);
		if (user != null) {
			session.setAttribute("userGRADE", user.getGRADE());
			session.setAttribute("userID", user.getID());
			session.setAttribute("userNAME", user.getNAME());	
			return "/users/home.jsp";
		} else
			return "/users/login.jsp";
	}

	
	@RequestMapping(value = "/users/signupUser.do", method = RequestMethod.POST)
	public String signupUser(UserVO vo) {
		UserService.signupUser(vo);
		return "/users/login.jsp";
	}
	
	
	@RequestMapping(value = "/users/updateUser.do", method = RequestMethod.POST)
	public String updateUser(UserVO vo, HttpSession session) {
		UserVO loginUser = new UserVO();
		loginUser.setID((String)session.getAttribute("userID"));
		loginUser.setPASSWORD((String)session.getAttribute("userPASSWORD"));
		loginUser = UserService.getUser(loginUser); 
		loginUser.setGRADE(vo.getGRADE());
		loginUser.setPHONE(vo.getPHONE());
		UserService.updateUser(loginUser);
		session.setAttribute("userGRADE", loginUser.getGRADE());
		session.setAttribute("userPHONE", loginUser.getPHONE());	
		return "/users/mypage.jsp";
	}
	
	@RequestMapping(value = "/users/deleteUser.do", method = RequestMethod.POST)
	public String deleteUser(UserVO vo, HttpSession session) {
		vo.setID((String)session.getAttribute("userID"));
		session.invalidate();
		UserService.deleteUser(vo);
		return "/users/login.jsp";
	}
	
	@RequestMapping(value = "/users/logout.do", method = RequestMethod.POST)
	public String logout(HttpSession session) {
		session.invalidate();
		return "/users/login.jsp";
	}
	
	@RequestMapping(value = "/users/findidpw.do", method = RequestMethod.POST)
	public String findidpw(UserVO vo, HttpServletRequest request) {
		UserVO findUser = UserService.findUser(vo);
		if(findUser!=null) {
			request.setAttribute("userID", findUser.getID());
			request.setAttribute("userPASSWORD", findUser.getPASSWORD());
			request.setAttribute("findMessage", "가입하신 핸드폰 번호의 아이디와 비밀번호입니다");
		}  else {
			request.setAttribute("findMessage", "해당 핸드폰 번호로 가입 된 내역이 없습니다");
		}
		return "/users/findidpw2.jsp";
	}
}

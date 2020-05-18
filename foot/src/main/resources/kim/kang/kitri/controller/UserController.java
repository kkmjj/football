package kim.kang.kitri.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;
import kim.kang.kitri.post.impl.PostRowMapper;
import kim.kang.kitri.user.UserVO;
import kim.kang.kitri.user.impl.UserDAO;

@Controller
public class UserController {
	@Autowired
	UserDAO UserService;
	@Autowired
	private PostService postservice;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, HttpSession session, Model model) {
		//model.addAttribute("postlist", jdbcTemplate.query("select * from POST", new PostRowMapper()));
		UserVO user = UserService.getUser(vo);
		if (user != null) {
			session.setAttribute("userGRADE", user.getGRADE());
			session.setAttribute("userID", user.getID());
			session.setAttribute("userNAME", user.getNAME());	
			return "redirect:index2.jsp";
		} else
			return "/users/login.jsp";
	}

	
	@RequestMapping(value = "/signupUser.do", method = RequestMethod.POST)
	public String signupUser(UserVO vo) {
		UserService.signupUser(vo);
		return "redirect:/users/login.jsp";
	}
	
	
	@RequestMapping(value = "/users/updateUser.do", method = RequestMethod.POST)
	public String updateUser(UserVO vo, HttpSession session) {
		UserVO loginUser = new UserVO();
		loginUser.setID((String)session.getAttribute("userID"));
		loginUser.setPASSWORD((String)session.getAttribute("userPASSWORD"));
		loginUser = UserService.getUser(loginUser); 
		loginUser.setGRADE(vo.getGRADE());
		
		UserService.updateUser(loginUser);
		session.setAttribute("userGRADE", loginUser.getGRADE());
		
		return "/users/mypage.jsp";
	}
	
	@RequestMapping(value = "/users/deleteUser.do", method = RequestMethod.POST)
	public String deleteUser(UserVO vo, HttpSession session) {
		vo.setID((String)session.getAttribute("userID"));
		session.invalidate();
		UserService.deleteUser(vo);
		return "/users/login.jsp";
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.jsp";
	}
	
	@RequestMapping(value = "/findidpw.do", method = RequestMethod.POST)
	public String findidpw(UserVO vo, HttpSession session) {
		UserVO findUser = UserService.findUser(vo);
		if(findUser!=null) {
			session.setAttribute("userID", findUser.getID());
			session.setAttribute("userPASSWORD", findUser.getPASSWORD());
			session.setAttribute("findMessage", "이름과 번호로 가입 된 아이디와 비밀번호 입니다");
		}  else {
			session.setAttribute("findMessage", "해당 내역으로 가입 된 정보를 찾을 수 없습니다");
		}
		return "redirect:/users/findidpwResult.jsp";
	}
}

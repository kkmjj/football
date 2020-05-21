package kim.kang.kitri.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kim.kang.kitri.apply.ApplyService;
import kim.kang.kitri.apply.ApplyVO;
import kim.kang.kitri.evaluation.EvaluationService;
import kim.kang.kitri.evaluation.EvaluationVO;
import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;
import kim.kang.kitri.user.UserService;
import kim.kang.kitri.user.UserVO;

@Controller
public class UserController {
	@Autowired
	EvaluationService evaluationService;
	@Autowired
	UserService userService;
	@Autowired
	PostService postservice;
	@Autowired
	ApplyService applyService;
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, HttpSession session, Model model) {
		// model.addAttribute("postlist", jdbcTemplate.query("select * from POST", new
		// PostRowMapper()));
		UserVO user = userService.getUser(vo);
		if (user != null) {
			session.setAttribute("userGRADE", user.getGRADE());
			session.setAttribute("userID", user.getID());
			session.setAttribute("userNAME", user.getNAME());
			return "home.do";
		} else
			return "loginPage.do";
	}

	@RequestMapping(value = "/signupUser.do", method = RequestMethod.POST)
	public String signupUser(UserVO vo) {
		userService.signupUser(vo);
		return "loginPage.do";
	}

	@RequestMapping(value = "/signup.do", method = RequestMethod.GET)
	public String signup() {
		return "users/signup.jsp";
	}

	@RequestMapping(value = "/addressFind.do", method = RequestMethod.GET)
	public String addressFind() {
		return "users/jusoPopup.jsp";
	}

	@RequestMapping(value = "/updateUser.do", method = RequestMethod.POST)
	public String updateUser(UserVO vo, HttpSession session, HttpServletRequest request) {
		vo.setID((String) session.getAttribute("userID"));
		vo.setPASSWORD((String) request.getAttribute("PASSWORD"));
		vo.setNAME((String) request.getAttribute("NAME"));
		vo.setTEL1((String) request.getAttribute("TEL1"));
		vo.setTEL2((String) request.getAttribute("TEL2"));
		vo.setTEL3((String) request.getAttribute("TEL3"));
		vo.setADDRESS((String) request.getAttribute("ADDRESS"));
		vo.setADDRESS_DETAIL((String) request.getAttribute("ADDRESS_DETAIL"));
		userService.updateUser(vo);
		// session.setAttribute("userGRADE", loginUser.getGRADE());
		return "/users/mypage.jsp";
	}

//	@RequestMapping(value = "/users/deleteUser.do", method = RequestMethod.POST)
//	public String deleteUser(UserVO vo, HttpSession session) {
//		vo.setID((String) session.getAttribute("userID"));
//		session.invalidate();
//		userService.deleteUser(vo);
//		return "/users/login.jsp";
//	}

	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "home.do";
	}

	@RequestMapping(value = "/findidpw.do", method = RequestMethod.POST)
	public String findidpw(UserVO vo, HttpSession session) {
		UserVO findUser = userService.findUser(vo);
		if (findUser != null) {
			session.setAttribute("userID", findUser.getID());
			session.setAttribute("userPASSWORD", findUser.getPASSWORD());
			session.setAttribute("findMessage", "your id/pw");
		} else {
			session.setAttribute("findMessage", "not find");
		}
		return "/users/findidpwResult.jsp";
	}

	@RequestMapping(value = "/loginPage.do")
	public String loginPage() {
		return "/users/login.jsp";
	}

	@RequestMapping(value = "/myPage.do")
	public String myPage(UserVO userVO, PostVO postVO, ApplyVO applyVO, HttpSession session, Model model) {
		if (session.getAttribute("userID") != null) {
			userVO.setID((String) session.getAttribute("userID"));
			model.addAttribute("user", userService.idGetUser(userVO));
			postVO.setWRITER((String) session.getAttribute("userID"));
			List<PostVO> myPostList = postservice.myPostList(postVO);
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
			Date date = new Date();
			for (int i = 0; i < myPostList.size(); i++) {
				if (myPostList.get(i).getSTATUS().equals("N")) {
					if (date.compareTo(myPostList.get(i).getDATETIME())>0) {
						myPostList.get(i).setSTATUS("E");
						//postservice.evaluationOK(myPostList.get(i));
					}
				}
			}
			model.addAttribute("myPostList",myPostList);
			applyVO.setAPPLICANT((String) session.getAttribute("userID"));
			List<ApplyVO> applyList = applyService.myApplyList(applyVO);
			System.out.println(applyList);
			String applyPostIDList = "";
			for (int i = 0; i < applyList.size(); i++) {
				applyPostIDList += applyList.get(i).getPOST_ID() + ",";
			}
			if (applyPostIDList.length() != 0) {
				applyPostIDList = applyPostIDList.substring(0, applyPostIDList.length() - 1);
				List<PostVO> myApplyList = postservice.idFindPostList(applyPostIDList);
				for (int i = 0; i < myApplyList.size(); i++) {
					if (myApplyList.get(i).getSTATUS().equals("N")) {
						if (date.compareTo(myApplyList.get(i).getDATETIME())>0) {
							myApplyList.get(i).setSTATUS("E");
							//postservice.evaluationOK(myApplyList.get(i));
						}
					}
				}
				model.addAttribute("myApplyList", myApplyList);
			}
			return "/users/mypage.jsp";
		}
		return "redirect:/loginPage.do";
	}
	
	@RequestMapping(value = "/evaluPage.do")
	public String evaluPage(HttpSession session) {
		return "home.jsp";
	}
	@RequestMapping(value = "/logoutPage.do")
	public String logoutPage(HttpSession session) {
		session.invalidate();
		return "home.do";
	}

}

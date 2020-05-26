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
		UserVO user = userService.getUser(vo);
		if (user != null) {
			session.setAttribute("loginFlag", "Succ");
			session.setAttribute("userGRADE", user.getGRADE());
			session.setAttribute("userID", user.getID());
			session.setAttribute("userNAME", user.getNAME());
			return "redirect:home.do";
		} else
			session.setAttribute("loginFlag", "Fail");
		return "users/login.jsp";
	}

	@RequestMapping(value = "/signupUser.do", method = RequestMethod.POST)
	public String signupUser(UserVO vo) {
		
		userService.signupUser(vo);
		return "redirect:loginPage.do";
	}

	@RequestMapping(value = "/signup.do", method = RequestMethod.GET)
	public String signup() {
		return "users/signup.jsp";
	}

	@RequestMapping(value = "/addressFind.do", method = RequestMethod.GET)
	public String addressFind() {
		return "users/jusoPopup.jsp";
	}
	
	@RequestMapping(value = "/userUpdate.do", method = RequestMethod.POST)
	public String updateUser(UserVO vo, HttpSession session, HttpServletRequest request) {
		vo.setID((String) session.getAttribute("userID"));
		if((String) request.getAttribute("PASSWORD")!=null) {
			vo.setPASSWORD((String) request.getAttribute("PASSWORD"));
		}
		if((String) request.getAttribute("NAME")!=null) {
			vo.setNAME((String) request.getAttribute("NAME"));
		}
		if((String) request.getAttribute("TEL1")!=null) {
			vo.setTEL1((String) request.getAttribute("TEL1"));
		}
		if((String) request.getAttribute("TEL2")!=null) {
			vo.setTEL1((String) request.getAttribute("TEL1"));
		}
		if((String) request.getAttribute("TEL3")!=null) {
			vo.setTEL1((String) request.getAttribute("TEL1"));
		}
		if((String) request.getAttribute("ZIP_CODE")!=null) {
			vo.setZIP_CODE((String) request.getAttribute("ZIP_CODE"));
		}
		if((String) request.getAttribute("ADDRESS")!=null) {
			vo.setADDRESS((String) request.getAttribute("ADDRESS"));
		}
		if((String) request.getAttribute("ADDRESS_DETAIL")!=null) {
			vo.setADDRESS_DETAIL((String) request.getAttribute("ADDRESS_DETAIL"));
		}
		//vo.setGENDER((String) request.getAttribute("GENDER"));
		userService.updateUser(vo);
		// session.setAttribute("userGRADE", loginUser.getGRADE());
		return "redirect:myPage.do";
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

	@RequestMapping(value = "/findidpwPage.do", method = RequestMethod.GET)
	public String findidpw() {
		return "/users/findidpw.jsp";
	}
	
	@RequestMapping(value = "/findidpw.do", method = RequestMethod.POST)
	public String findidpw(UserVO vo, HttpSession session) {
		List<UserVO> findUser = userService.findUser(vo);
		if (findUser.size() != 0) {
			session.setAttribute("findUser", findUser);
			session.setAttribute("findMessage", "Y");
		} else {
			session.setAttribute("findMessage", "N");
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
			//
			postVO.setWRITER((String) session.getAttribute("userID"));
			List<PostVO> myPostList = postservice.myPostList(postVO);
			Date date = new Date();
			for (int i = 0; i < myPostList.size(); i++) {
				if (myPostList.get(i).getSTATUS().equals("N")) {
					if (date.compareTo(myPostList.get(i).getDATETIME()) > 0) {
						myPostList.get(i).setSTATUS("E");
					}
				}
			}
			model.addAttribute("myPostList", myPostList);
			
			applyVO.setAPPLICANT((String) session.getAttribute("userID"));
			String postIdSql = applyService.myApplyPostIdSql(applyVO);
			List<ApplyVO> myApplyList = applyService.myApplyPostList(applyVO, postIdSql);
			if(myApplyList!=null) {
				for(int i=0; i<myApplyList.size(); i++) {
					PostVO postVO2 = postservice.DetailPost(String.valueOf(myApplyList.get(i).getPOST_ID()));
					if ( (postVO2.getSTATUS().equals("N") || postVO2.getSTATUS().equals("O")) ) {
						if (myApplyList.get(i).getSTATUS().equals("N") && date.compareTo(postVO2.getDATETIME()) > 0) {
							myApplyList.get(i).setSTATUS("E");
						}
					}
				}
			}

			model.addAttribute("myApplyList", myApplyList);

			return "/users/mypage.jsp";
		}
		return "redirect:/loginPage.do";
	}



	@RequestMapping(value = "/logoutPage.do")
	public String logoutPage(HttpSession session) {
		session.invalidate();
		return "home.do";
	}
}

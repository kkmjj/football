package kim.kang.kitri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kim.kang.kitri.apply.ApplyService;
import kim.kang.kitri.evaluation.EvaluationService;
import kim.kang.kitri.evaluation.EvaluationVO;
import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;
import kim.kang.kitri.user.UserVO;

@Controller
public class EvaluationController {
	@Autowired
	EvaluationService evaluationService;
	@Autowired
	private PostService postservice;
	@Autowired
	ApplyService applyService;
	
	@RequestMapping(value = "/evaluPage.do")
	public String evaluPage(String postID, Model model, HttpServletRequest request) {
		model.addAttribute("postdetail", postservice.DetailPost(postID));
		request.setAttribute("postID", postID);
		return "evalu/evaluInsert.jsp";
	}
	
	@RequestMapping(value = "/evalu.do", method = RequestMethod.POST)
	public String updateUser(String postID, EvaluationVO vo, HttpSession session, HttpServletRequest request) {
		vo.setPOST_ID(Integer.parseInt(postID));
		vo.setRATER((String) session.getAttribute("userID"));
		vo.setSCORE(Integer.parseInt(request.getParameter("SCORE")));
		vo.setCONTENT(request.getParameter("CONTENT"));
		evaluationService.userEvaluation(vo);
		postservice.Post_Status_O(Integer.parseInt(postID));
		return "myPage.do";
	}
	
	
	@RequestMapping(value = "/evaluPage2.do")
	public String evaluPage2(String postID, Model model, HttpServletRequest request) {
		model.addAttribute("postdetail", postservice.DetailPost(postID));
		request.setAttribute("postID", postID);
		return "evalu/evaluInsert.jsp";
	}
	
	@RequestMapping(value = "/evalu2.do", method = RequestMethod.POST)
	public String updateUser2(String postID, String applyID, EvaluationVO vo, HttpSession session, HttpServletRequest request) {
		vo.setPOST_ID(Integer.parseInt(postID));
		vo.setRATER((String) session.getAttribute("userID"));
		vo.setSCORE(Integer.parseInt(request.getParameter("SCORE")));
		vo.setCONTENT(request.getParameter("CONTENT"));
		evaluationService.userEvaluation(vo);
		applyService.applyStatus_O(Integer.parseInt(applyID));
		return "myPage.do";
	}
}

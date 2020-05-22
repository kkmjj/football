package kim.kang.kitri.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kim.kang.kitri.apply.ApplyService;
import kim.kang.kitri.apply.ApplyVO;
import kim.kang.kitri.evaluation.EvaluationService;
import kim.kang.kitri.post.PostService;
import kim.kang.kitri.user.UserService;

@Controller
public class ApplyController {
	@Autowired
	EvaluationService evaluationService;
	@Autowired
	UserService userService;
	@Autowired
	PostService postservice;
	@Autowired
	ApplyService applyService;

	@RequestMapping(value = "/apply.do")
	public String evaluPage(HttpSession session, HttpServletRequest request, RedirectAttributes redirect) {
		ApplyVO applyVO = new ApplyVO();
		Date date = new Date();
		applyVO.setPOST_ID(Integer.parseInt(request.getParameter("postId")));
		applyVO.setCONTENT((String) request.getParameter("userComment"));
		applyVO.setAPPLICANT((String) session.getAttribute("userID"));
		applyVO.setDATETIME(date);
		applyVO.setHOUR(date.getHours());
		applyVO.setMIN(date.getMinutes());
		applyVO.setSTATUS("Y");
		applyService.applyUser(applyVO);
		
	
		return "PostDetail.do?id="+request.getParameter("postId");
	}

}

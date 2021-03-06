package kim.kang.kitri.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import kim.kang.kitri.apply.ApplyService;
import kim.kang.kitri.apply.ApplyVO;
import kim.kang.kitri.evaluation.EvaluationService;
import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;
import kim.kang.kitri.user.UserService;
import kim.kang.kitri.user.UserVO;

@Controller
public class PostController {
	@Autowired
	EvaluationService evaluationService;
	@Autowired
	private PostService postservice;

	@Autowired
	ApplyService applyService;

	@Autowired
	UserService userService;
	
	// home.do 먼저 실행하고 index 페이지로 넘어가기 
	@RequestMapping("/home.do")
	public String getPostList(Integer page,
			@RequestParam(value = "start", defaultValue = "1000/01/01", required = false) Date start,
			@RequestParam(value = "end", defaultValue = "3000/12/31", required = false) Date end, 
			@RequestParam(value = "region", defaultValue = "", required = false) String region,
			@RequestParam(value = "input_location", defaultValue = "", required = false) String input_location,
			PostVO vo, Model model ) {
		if(page == null) page = 1;

		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		
		
		model.addAttribute("PostCount",postservice.postCount());
		model.addAttribute("UserCount",userService.UserCount());
		model.addAttribute("page", page);
		model.addAttribute("start", format.format(start));
		model.addAttribute("end", format.format(end));
		model.addAttribute("region", region);
		model.addAttribute("input_location", input_location);
		model.addAttribute("postlist", postservice.getPostList(page, start, end, region, input_location));
		model.addAttribute("cnt", postservice.getPostListCnt(page, start, end, region, input_location)+1);

		return "index.jsp";
	}

	@RequestMapping("/PostStatusN.do")
	public String updateStatusN(int id) {

		postservice.PostStatusN(id);

		return "home.do";
	}

	@RequestMapping("/PostStatusD.do")
	public String updateStatusD(int id) {

		postservice.PostStatusD(id);

		return "home.do";
	}
	

	
	
	
	
	
	

	// index 페이지에서 등록을 누르게 되면 -> postInsert페이지로 넘어감
	@RequestMapping("/PostInsertPage.do")
	public String InsertListPage() {

		return "post/postInsert.jsp";
	}
	
	@RequestMapping("/InsertDetailPage.do")
	public String InserDetailPage() {

		return "post/postInsertDetail.jsp";
	}

	// postInsert 페이지에서 등록 완료하면 home.do로 가서 index 페이지로 넘어감
	@RequestMapping("/PostInsert.do")
	public String InsertList(HttpServletRequest request, PostVO vo) {

		HttpSession session = request.getSession();
		vo.setWRITER((String) session.getAttribute("userID"));

		postservice.InsertList(vo);

		return "home.do";
	}

	@RequestMapping("/PostDetail.do")
	public String DetailPost(String id, HttpSession session, Model model, HttpServletRequest request) {
		ApplyVO applyVO = new ApplyVO();
		applyVO.setPOST_ID(Integer.parseInt(id)); // 이미 공고 아이디를 넘김 
		PostVO postVO = postservice.DetailPost(id);
		model.addAttribute("postdetail", postservice.DetailPost(id));
		List<ApplyVO> postApplyUser = applyService.PostApplyUsers(applyVO);
		for(int i=0; i<postApplyUser.size(); i++) {
			postApplyUser.get(i).setAPPLY_SCORE(evaluationService.userEvaluScore(postApplyUser.get(i).getAPPLICANT()));
			UserVO userVO = new UserVO();
			userVO.setID(postApplyUser.get(i).getAPPLICANT());
			userVO = userService.idGetUser(userVO);
			postApplyUser.get(i).setTEL1(userVO.getTEL1());
			postApplyUser.get(i).setTEL2(userVO.getTEL2());
			postApplyUser.get(i).setTEL3(userVO.getTEL3());
		}
		model.addAttribute("postApplyUser",postApplyUser);
		model.addAttribute("flag", applyService.flag_apply((String) session.getAttribute("userID"),applyVO));
		request.setAttribute("userEvalu", String.valueOf(evaluationService.userEvaluScore(postVO.getWRITER())));

		return "post/postDetail.jsp";
	}

	// PostDetail 페이지에서 수정이 필요할시 나타나는 페이지
	@RequestMapping("/PostUpdatePage.do")
	public String UpdatePostPage() {

		return "post/postUpdate.jsp";
	}

}

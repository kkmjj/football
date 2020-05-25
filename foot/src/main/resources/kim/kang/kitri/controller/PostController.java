package kim.kang.kitri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kim.kang.kitri.apply.ApplyService;
import kim.kang.kitri.apply.ApplyVO;
import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;
import kim.kang.kitri.user.UserService;

@Controller
public class PostController {

	@Autowired
	private PostService postservice;

	@Autowired
	ApplyService applyService;
	
	@Autowired
	UserService userService;
	
	// home.do 먼저 실행하고 index 페이지로 넘어가기 
	@RequestMapping("/home.do")
	public String getPostList(Integer page,
			@RequestParam(value = "start", defaultValue = "1000/01/01", required = false) String start,
			@RequestParam(value = "end", defaultValue = "3000/12/31", required = false) String end, 
			@RequestParam(value = "region", defaultValue = "", required = false) String region,
			@RequestParam(value = "input_location", defaultValue = "", required = false) String input_location,
			PostVO vo, Model model ) {
		if(page == null) page = 1;

		
		
		
		model.addAttribute("PostCount",postservice.postCount());
		model.addAttribute("UserCount",userService.UserCount());
		model.addAttribute("page", page);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
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
	
	@RequestMapping("/ApplyStatusN.do")	// N이 수락 완료 
	public String ApplyStatusN(String id, Model model) {
		
		
		applyService.applyStatus_N(id);
		
		return "redirect:PostDetail.do?id="+id;
	}
	
	
	
	
	
	

	// index 페이지에서 등록을 누르게 되면 -> postInsert페이지로 넘어감
	@RequestMapping("/PostInsertPage.do")
	public String InsertListPage() {

		return "post/postInsert.jsp";
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
	public String DetailPost(HttpServletRequest request,String id, Model model) {
		ApplyVO applyVO = new ApplyVO();
		
		
		applyVO.setPOST_ID(Integer.parseInt(id)); // 이미 공고 아이디를 넘김 
		
		HttpSession session = request.getSession();

		
		model.addAttribute("flag", applyService.flag_apply((String) session.getAttribute("userID"),applyVO));
		model.addAttribute("postdetail", postservice.DetailPost(id));
		model.addAttribute("postApplyUser",applyService.PostApplyUsers(applyVO));
		
		
		return "post/postDetail.jsp";
	}

	// PostDetail 페이지에서 수정이 필요할시 나타나는 페이지
	@RequestMapping("/PostUpdatePage.do")
	public String UpdatePostPage() {

		return "post/postUpdate.jsp";
	}

}

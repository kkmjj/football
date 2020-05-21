package kim.kang.kitri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;


@Controller
public class PostController {


	@Autowired
	private PostService postservice;
	
	
	// home.do 먼저 실행하고 index 페이지로 넘어가기 
	@RequestMapping("/home.do")
	public String getPostList( Model model){ 
		PostVO vo = new PostVO();
	
		model.addAttribute("postlist", postservice.getPostList(vo));
		
		return "index.jsp";
	}
	
	
	// 검색 버튼을 누르면 index.jsp 에 적용 
	@RequestMapping("/PostDATESearchList.do")
	public String getPostSearchList(String contition,@RequestParam(value = "start", defaultValue = "", required = false)
	String start,@RequestParam(value = "end", defaultValue = "", required = false) String end, PostVO vo, Model model){
		
		
		model.addAttribute("postlist", postservice.getPostDATESearchList(vo));
		
		return "index.jsp";
	}	
	
	
	//index 페이지에서 등록을 누르게 되면 -> postInsert페이지로 넘어감 
	@RequestMapping("/PostInsertPage.do")
	public String InsertListPage() {
	
		return "post/postInsert.jsp";
	}
	
	
	
	//postInsert 페이지에서 등록 완료하면 home.do로 가서  index 페이지로 넘어감 
	@RequestMapping("/PostInsert.do")
	public String InsertList(HttpServletRequest request,PostVO vo) {
		
	
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("userID"));
		vo.setWRITER((String)session.getAttribute("userID"));
		
		postservice.InsertList(vo);
		
		return "home.do";
	}
	
	
	

//postInsert 페이지에서 등록 완료하면 home.do로 가서  index 페이지로 넘어감 
	@RequestMapping("/PostDetail.do")
	public String DetailPost(String id,Model model) {
	
		
		model.addAttribute("postdetail",postservice.DetailPost(id));
		System.out.println(id);
		
		return "post/postDetail.jsp";
	}
	
	// PostDetail 페이지에서 수정이 필요할시 나타나는 페이지
	@RequestMapping("/PostUpdatePage.do")
	public String UpdatePostPage() {
		
		
		return "post/postUpdate.jsp";
	}
	
	
	
	
}

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
	public String getPostList(PostVO vo, Model model){ 
		
	
		model.addAttribute("postlist", postservice.getPostList(vo));
		
		return "index.jsp";
	}
	
	
	// 검색 버튼을 누르면 index.jsp 에 적용 
	@RequestMapping("/PostSearchList.do")
	public String getPostSearchList(@RequestParam(value = "searchCondition", defaultValue = "writer", required = false)
	String contition,@RequestParam(value = "searchKeyword", defaultValue = "", required = false) String keyword, 
	PostVO vo, Model model){
		
		System.out.println("postlist.do");
		if(vo.getSearchCondition() ==null) vo.setSearchCondition("writer");
		if(vo.getSearchKeyword()==null) vo.setSearchKeyword("");
		
		System.out.println(keyword);
		System.out.println(contition);
		model.addAttribute("postlist", postservice.getPostSearchList(vo));
		
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
	
	
	
	
	
	
}

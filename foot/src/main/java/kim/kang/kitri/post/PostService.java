package kim.kang.kitri.post;

import java.util.List;

public interface PostService {

	
	//글 목록 조회 
	List<PostVO> getPostList(PostVO vo);

	List<PostVO> getPostSearchList(PostVO vo);
	
	
	
	
	
	
	
	
	
	
}

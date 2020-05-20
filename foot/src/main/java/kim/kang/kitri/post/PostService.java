package kim.kang.kitri.post;

import java.util.List;


public interface PostService {

	// 그냥 바로 조회 
	List<PostVO> getPostList(PostVO vo);
	
	//글 상세 조회 
	List<PostVO> getPostSearchList(PostVO vo);
	
	
	//글 등록 
	void InsertList(PostVO vo);
	
	
}

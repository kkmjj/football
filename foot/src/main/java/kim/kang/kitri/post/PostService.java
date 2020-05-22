package kim.kang.kitri.post;

import java.util.List;

public interface PostService {

	//전체 공고 
	List<PostVO> getPostList(PostVO vo);
	
	//날짜 검색 공고
	List<PostVO> getPostDATESearchList(PostVO vo);
	
	//위치 검색 
	List<PostVO> getPostlocationSearchList(PostVO vo);
	
	
	//공고 삽입
	void InsertList(PostVO vo);

	// 상세 공고 
	public PostVO DetailPost(String id);
	
	//모집마감 만들기
	void PostStatusN(int id);
	
	
	
	
	public List<PostVO> myPostList(PostVO vo);
	

	public List<PostVO> idFindPostList(String postIdList);
	


}

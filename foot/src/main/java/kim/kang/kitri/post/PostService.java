package kim.kang.kitri.post;

import java.util.List;

public interface PostService {

	//전체 공고 
	List<PostVO> getPostList(Integer page, String start, String end, String region, String input_location);

	int getPostListCnt(Integer page, String start, String end, String region, String input_location);
	
	
	//공고 삽입
	void InsertList(PostVO vo);

	// 상세 공고 
	public PostVO DetailPost(String id);
	
	//모집마감 만들기
	void PostStatusN(int id);
	
	void PostStatusD(int id);
	
	
	public List<PostVO> myPostList(PostVO vo);
	

	public List<PostVO> idFindPostList(String postIdList);
	
	public void Post_Status_O(int id);

}

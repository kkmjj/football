package kim.kang.kitri.post;

import java.util.List;

public interface PostService {

	// �׳� �ٷ� ��ȸ 
	List<PostVO> getPostList(PostVO vo);
	
	//�� �� ��ȸ 
	List<PostVO> getPostSearchList(PostVO vo);
	
	
	//�� ��� 
	void InsertList(PostVO vo);

	
	public List<PostVO> myPostList(PostVO vo);
	

	public List<PostVO> idFindPostList(String postIdList);

}

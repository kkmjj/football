package kim.kang.kitri.post;

import java.util.List;


public interface PostService {

	
	//�� ��� ��ȸ 
	List<PostVO> getPostList(PostVO vo);
	public List<PostVO> myPostList(PostVO vo);
}

package kim.kang.kitri.post;

import java.util.List;

public interface PostService {
	List<PostVO> getPostList(PostVO vo);
	public List<PostVO> myPostList(PostVO vo);
	List<PostVO> getPostSearchList(PostVO vo);
	public List<PostVO> idFindPostList(String postIdList);
}

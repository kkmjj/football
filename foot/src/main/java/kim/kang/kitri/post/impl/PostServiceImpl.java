package kim.kang.kitri.post.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kim.kang.kitri.post.PostService;
import kim.kang.kitri.post.PostVO;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	private PostDAO postDAO;

	@Override
	public List<PostVO> myPostList(PostVO vo) {
		return postDAO.myPostList(vo);
	}
	
	public List<PostVO> getPostList(Integer page, String start, String end, String region, String input_location) {

		return postDAO.getPostList(page, start, end, region, input_location);
	}

	public int getPostListCnt(Integer page, String start, String end, String region, String input_location) {

		return postDAO.getPostListCnt(page, start, end, region, input_location);
	}

	@Override
	public PostVO DetailPost(String id) {

		return postDAO.DetailPost(id);
	}

	public List<PostVO> idFindPostList(String postIdList) {
		// TODO Auto-generated method stub

		return postDAO.idFindPostList(postIdList);
	}

	public void InsertList(PostVO vo) {
		postDAO.PostInsertList(vo);
		// return postDAO.
	}

	// 모집마감
	public void PostStatusN(int id) {
		postDAO.Post_Status_N(id);
	}

	public void PostStatusD(int id) {
		postDAO.Post_Status_D(id);
	}

}

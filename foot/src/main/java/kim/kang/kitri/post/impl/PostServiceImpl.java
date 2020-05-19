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

	@Override
	public List<PostVO> getPostList(PostVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}

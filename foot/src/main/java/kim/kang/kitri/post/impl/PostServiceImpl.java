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
	
	public List<PostVO> getPostSearchList(PostVO vo) {
		
		return postDAO.getPostSearchList(vo);
	}
	
	
   public List<PostVO> getPostList(PostVO vo) {
		
		return postDAO.getPostList(vo);
	}

 
	public List<PostVO> idFindPostList(String postIdList) {
		// TODO Auto-generated method stub
		return postDAO.idFindPostList(postIdList);
	}
	   
  
   public void InsertList(PostVO vo)
   {
	   postDAO.PostInsertList(vo);
	  // return postDAO.
   }
   
	
}

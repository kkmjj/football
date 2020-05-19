package kim.kang.kitri.post.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kim.kang.kitri.post.PostVO;

@Repository
public class PostDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<PostVO> myPostList(PostVO vo) {
		String myPOST_List = "select * from POST where writer = ?";
		Object[] args = { vo.getWRITER()};
		return jdbcTemplate.query(myPOST_List, args, new PostRowMapper());
	}
	
	public List<PostVO> idFindPostList(PostVO vo, String postIdList) {
		String myPOST_List = "select * from POST where ID IN ("+postIdList+")";
		Object[] args = { vo.getWRITER()};
		return jdbcTemplate.query(myPOST_List, args, new PostRowMapper());
	}
}

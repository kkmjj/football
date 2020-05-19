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
	
	
	//그냥조회
	private final String POST_List ="select * from POST";
	
	//검색 조회
	private final String POST_Search_List = "select * from POST where writer like '%'||?||'%' order by id desc";
	
	
	
	public List<PostVO> getPostSearchList(PostVO vo)
	{
		System.out.println("springjdbc로 적용 -글 목록 조회 getSearchList 함수 적용");
		Object[] args = {vo.getSearchKeyword()};
		if(vo.getSearchCondition().equals("writer"))
		{
			return jdbcTemplate.query(POST_Search_List,args, new PostRowMapper());
			
		}
		
		return null;
	}
	
	
	public List<PostVO> getPostList(PostVO vo)
	{
		System.out.println("dfdfdfdfdfdfdf");

			return jdbcTemplate.query(POST_List, new PostRowMapper());
			
		
		 
	}
	
	
	

}

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
	
	public List<PostVO> idFindPostList(String postIdList) {
		String myPOST_List = "select * from POST where ID IN ("+postIdList+")";
		return jdbcTemplate.query(myPOST_List, new PostRowMapper());
	}
	
	
	//다 출력
	private final String POST_List ="select * from POST";
	
	//검색 찾기
	private final String POST_Search_List = "select * from POST where writer like '%'||?||'%' order by id desc";
	
	//삽입 
	private final String POST_Insert 
	="insert into POST(ID,TITLE,STATUS,WRITER,PER,DATETIME,HOUR,MIN,ZIP_CODE,ADDRESS,ADDRESS_DETAIL,CONTENT) "
			+ "values(POST_SEQ.NEXTVAL,?,'Y',?,?,?,?,?,?,?,?,?)";
	
	
	private final String POST_Detail ="select ";
	
	
	public List<PostVO> getPostSearchList(PostVO vo)
	{

		Object[] args = {vo.getSearchKeyword()};
		if(vo.getSearchCondition().equals("writer"))
		{
			return jdbcTemplate.query(POST_Search_List,args, new PostRowMapper());
			
		}
		
		return null;
	}
	
	
	public List<PostVO> getPostList(PostVO vo)
	{
		

			return jdbcTemplate.query(POST_List, new PostRowMapper());
			
			
	}
	
	
	
	public void PostInsertList(PostVO vo)
	{
	
			jdbcTemplate.update(POST_Insert,vo.getTITLE(),vo.getWRITER(),vo.getPER(),vo.getDATETIME(),
					vo.getHOUR(),vo.getMIN(),vo.getZIP_CODE(),vo.getADDRESS(),vo.getADDRESS_DETAIL(),vo.getCONTENT());
			
	}
	
	
//	public List<PostVO> DetailPost(PostVO vo)
//	{
//	
//			//return jdbcTemplate.query(psc, rse);
//			
//	}
//	
	
	
}

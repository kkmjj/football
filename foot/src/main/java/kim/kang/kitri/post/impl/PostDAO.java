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
		Object[] args = { vo.getWRITER() };
		return jdbcTemplate.query(myPOST_List, args, new PostRowMapper());
	}

	public List<PostVO> idFindPostList(String postIdList) {
		String myPOST_List = "select * from POST where ID IN (" + postIdList + ")";
		return jdbcTemplate.query(myPOST_List, new PostRowMapper());
	}

	// �떎 異쒕젰
	private final String POST_List = "select * from (select ROW_NUMBER() over(order by id desc) NUM, p.* from POST p where status = 'Y' order by id desc) where num BETWEEN ? AND ?";
	
	private final String POST_List_Cnt = "select * from POST where status = 'Y'";

	// 寃��깋 �궇吏� 李얘린
	private final String POST_Search_DATE_List = "select * from POST where DATETIME BETWEEN ? AND ? order by id desc";

	// 寃��깋 �궇吏� 李얘린
	private final String POST_Search_location_List = "select * from POST where address like '%'||?||'%' and address_detail like '%'||?||'%'  order by id desc";

	// �궫�엯
	private final String POST_Insert = "insert into POST(ID,TITLE,STATUS,WRITER,PER,DATETIME,HOUR,MIN,ZIP_CODE,ADDRESS,ADDRESS_DETAIL,CONTENT) "
			+ "values(POST_SEQ.NEXTVAL,?,'Y',?,?,?,?,?,?,?,?,?)";

	// �긽�꽭 sql
	private final String POST_Detail = "select * from POST join users on POST.WRITER=users.id where post.id=?";

	// 紐⑥쭛 留덇컧
	private final String POST_STATUS_N = "UPDATE POST SET STATUS='N' WHERE ID=?";
	// 怨듦퀬 �궘�젣 �떆 STATUS = n
	private final String POST_STATUS_D = "UPDATE POST SET STATUS='D' WHERE ID=?";

	public List<PostVO> getPostDATESearchList(PostVO vo) {

		Object[] args = { vo.getStart(), vo.getEnd() };

		return jdbcTemplate.query(POST_Search_DATE_List, args, new PostRowMapper());

	}

	public List<PostVO> getPostlocationSearchList(PostVO vo) {

		Object[] args = { vo.getRegion(), vo.getInput_location() };

		return jdbcTemplate.query(POST_Search_location_List, args, new PostRowMapper());

	}

	public List<PostVO> getPostList(Integer page) {
		
		Object[] args = { page*10-9, page*10 };

		return jdbcTemplate.query(POST_List, args, new PostRowMapper());

	}

	public int getPostListCnt() {
		List<PostVO> vo = jdbcTemplate.query(POST_List_Cnt, new PostRowMapper());
		
		return vo.size()/10;

	}

	public void PostInsertList(PostVO vo) {

		jdbcTemplate.update(POST_Insert, vo.getTITLE(), vo.getWRITER(), vo.getPER(), vo.getDATETIME(), vo.getHOUR(),
				vo.getMIN(), vo.getZIP_CODE(), vo.getADDRESS(), vo.getADDRESS_DETAIL(), vo.getCONTENT());

	}

	public PostVO DetailPost(String id) {

		Object[] args = { id };
		return jdbcTemplate.queryForObject(POST_Detail, args, new PostRowJOINMapper());

	}

	public void Post_Status_N(int id) {

		// Object[] args = {id};
		jdbcTemplate.update(POST_STATUS_N, id);
	}

	public void Post_Status_D(int id) {

		// Object[] args = {id};
		jdbcTemplate.update(POST_STATUS_D, id);
	}

}

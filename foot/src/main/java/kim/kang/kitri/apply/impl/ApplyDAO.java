package kim.kang.kitri.apply.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kim.kang.kitri.apply.ApplyVO;

@Repository
public class ApplyDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<ApplyVO> myApplyPostList(ApplyVO vo, String PostIdSql) {
		String myApplyList = "select apply.applicant, apply.content, apply.datetime, apply.hour, apply.id, apply.min, apply.post_id, apply.status, post.title "
				+ "from apply, post where APPLICANT = ? and post_id in (" + PostIdSql + ") and post.id in (" + PostIdSql
				+ ") and post_id = post.id";
		Object[] args = { vo.getAPPLICANT() };
		try {
			return jdbcTemplate.query(myApplyList, args, new ApplyRowJoinMapper());
		} catch(Exception e){
			return null;	
		}
	}

	public void applyUser(ApplyVO vo) {
		String myApplyList = "INSERT INTO APPLY(ID, POST_ID, APPLICANT, CONTENT, STATUS, DATETIME, HOUR, MIN)  values((SELECT NVL(MAX(ID), 0) + 1 FROM apply), ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(myApplyList, vo.getPOST_ID(), vo.getAPPLICANT(), vo.getCONTENT(), vo.getSTATUS(),
				vo.getDATETIME(), vo.getHOUR(), vo.getMIN());
	}

	public String myApplyPostIdSql(ApplyVO vo) {
		String myApplyPostId = "";
		String sql = "select * from apply where APPLICANT = ?";
		Object[] args = { vo.getAPPLICANT() };
		List<ApplyVO> list = jdbcTemplate.query(sql, args, new ApplyRowMapper());
		for (int i = 0; i < list.size(); i++) {
			myApplyPostId += (list.get(i).getPOST_ID() + ",");
		}
		if (myApplyPostId.length() != 0) {
			myApplyPostId = myApplyPostId.substring(0, myApplyPostId.length() - 1);
		}
		return myApplyPostId;
	}

	public List<ApplyVO> PostApplyUsers(ApplyVO vo) {
		String sql = "select * from apply where post_id = ?";
		Object[] args = { vo.getPOST_ID() };
		return jdbcTemplate.query(sql, args, new ApplyRowMapper());
	}

	public int flag_apply(String id, ApplyVO vo) {

		String sql = "select count(*) from apply where applicant = ? and post_id=?";
		Object[] args = { id, vo.getPOST_ID() };
		System.out.println(id + " " + vo.getPOST_ID());
		return jdbcTemplate.queryForObject(sql, args, Integer.class);
	}

	public void applyStatus_O(int id) {
		String POST_STATUS_O = "UPDATE POST SET STATUS='O' WHERE ID=?";
		jdbcTemplate.update(POST_STATUS_O, id);
	}
	
	public void applyStatus_D(int postID, String applyUserID) {
		String POST_STATUS_O = "UPDATE APPLY SET STATUS='D' WHERE POST_ID="+postID+"and APPLICANT='"+applyUserID+"'";
		jdbcTemplate.update(POST_STATUS_O);
	}
}

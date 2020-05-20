package kim.kang.kitri.applyimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kim.kang.kitri.apply.ApplyVO;

@Repository
public class ApplyDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public List<ApplyVO> myApplyList(ApplyVO vo) {
		String myApplyList = "select * from apply where APPLICANT = ?";
		Object[] args = { vo.getAPPLICANT()};
		return jdbcTemplate.query(myApplyList, args, new ApplyRowMapper() );
	}
}

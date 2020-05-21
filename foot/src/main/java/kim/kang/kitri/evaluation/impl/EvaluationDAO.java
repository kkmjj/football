package kim.kang.kitri.evaluation.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kim.kang.kitri.evaluation.EvaluationVO;
@Repository
public class EvaluationDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public EvaluationVO scan(EvaluationVO vo) {
		String evaluationScan = "select * from evaluation where POST_ID = ? AND RATER =?";
		Object[] args = { vo.getPOST_ID() ,vo.getRATER()};
		return jdbcTemplate.queryForObject(evaluationScan, args, new EvaluationRowMapper());
	}
}


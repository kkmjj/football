package kim.kang.kitri.evaluation.impl;

import java.awt.geom.Arc2D.Double;
import java.util.Locale;

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
	
	public void userEvaluation(EvaluationVO vo) {
		String userEvaluation = "insert into evaluation(ID, POST_ID, RATER, SCORE, CONTENT) values((SELECT NVL(MAX(ID), 0) + 1 FROM evaluation), ?, ?, ?, ?)";
		Object[] args = { vo.getPOST_ID() ,vo.getRATER(), vo.getSCORE(), vo.getCONTENT()};
		jdbcTemplate.update(userEvaluation, args);
	}
	
	public double userEvaluScore(String RATER) {
		String userEvaluationSUM = "SELECT SUM(SCORE) from evaluation where POST_ID in(SELECT POST_ID from evaluation where RATER = '"+RATER+ "')";
		String userEvaluationCOUNT = "SELECT COUNT(SCORE) from evaluation where POST_ID in(SELECT POST_ID from evaluation where RATER = '"+ RATER+ "')";
		try {
			int sum = jdbcTemplate.queryForObject(userEvaluationSUM, Integer.class);
			int count = jdbcTemplate.queryForObject(userEvaluationCOUNT, Integer.class);
			double userEval = (double)sum/count * 100;
			userEval = Math.floor(userEval);
			userEval = userEval/100.0;
			return userEval;
		}catch(Exception e) {
			return 0;
		}
	}
}


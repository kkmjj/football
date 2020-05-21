package kim.kang.kitri.evaluation.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kim.kang.kitri.evaluation.EvaluationVO;

public class EvaluationRowMapper implements RowMapper<EvaluationVO>{

	@Override
	public EvaluationVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		EvaluationVO evaluationVO = new EvaluationVO();
		evaluationVO.setCONTENT(rs.getString("CONTENT"));
		evaluationVO.setID(rs.getInt("ID"));
		evaluationVO.setPOST_ID(rs.getInt("POST_ID"));
		evaluationVO.setRATER(rs.getString("RATER"));
		evaluationVO.setSCORE(rs.getInt("SCORE"));
		return evaluationVO;
	}

}

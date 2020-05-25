package kim.kang.kitri.evaluation.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kim.kang.kitri.evaluation.EvaluationService;
import kim.kang.kitri.evaluation.EvaluationVO;

@Service
public class EvaluationServiceImpl implements EvaluationService{
	@Autowired
	EvaluationDAO evaluationDAO;
	@Override
	public EvaluationVO scan(EvaluationVO vo) {
		return evaluationDAO.scan(vo);
	}
	@Override
	public void userEvaluation(EvaluationVO vo) {
		evaluationDAO.userEvaluation(vo);
	}
	
	@Override
	public double userEvaluScore(String RATER) {
		// TODO Auto-generated method stub
		return evaluationDAO.userEvaluScore(RATER);
	}
	@Override
	public List<EvaluationVO> postEvaluList(String postID) {
		// TODO Auto-generated method stub
		return evaluationDAO.postEvaluList(postID);
	}

}

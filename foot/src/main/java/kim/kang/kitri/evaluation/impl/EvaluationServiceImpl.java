package kim.kang.kitri.evaluation.impl;

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

}

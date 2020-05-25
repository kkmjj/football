package kim.kang.kitri.evaluation;

import java.util.List;

public interface EvaluationService {
	public EvaluationVO scan(EvaluationVO vo);
	
	public void userEvaluation(EvaluationVO vo);
	
	public double userEvaluScore(String RATER);
	
	public List<EvaluationVO> postEvaluList(String postID);
}

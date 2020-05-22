package kim.kang.kitri.apply;

import java.util.List;

public interface ApplyService {
	public String myApplyPostIdSql(ApplyVO vo);
	public List<ApplyVO> myApplyPostList(ApplyVO vo, String PostIdSql);
	public void applyUser(ApplyVO vo);
	public List<ApplyVO> PostApplyUsers(ApplyVO vo);
}

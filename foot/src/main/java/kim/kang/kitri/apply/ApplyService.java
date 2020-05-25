package kim.kang.kitri.apply;

import java.util.List;

public interface ApplyService {
	public String myApplyPostIdSql(ApplyVO vo);
	public List<ApplyVO> myApplyPostList(ApplyVO vo, String PostIdSql);
	public void applyUser(ApplyVO vo);
	public List<ApplyVO> PostApplyUsers(ApplyVO vo);
	
	public int flag_apply(String id,ApplyVO vo);
	
	public void applyStatus_N(String id);
	
	
	public void applyStatus_O(int id);
	public void applyStatus_D(int postID, String applyUserID);
}

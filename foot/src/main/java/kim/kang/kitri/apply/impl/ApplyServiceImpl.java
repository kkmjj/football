package kim.kang.kitri.apply.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kim.kang.kitri.apply.ApplyService;
import kim.kang.kitri.apply.ApplyVO;

@Service
public class ApplyServiceImpl implements ApplyService{
	@Autowired
	ApplyDAO applyDAO;
	@Override
	public List<ApplyVO> myApplyPostList(ApplyVO vo, String PostIdSql) {
		return applyDAO.myApplyPostList(vo, PostIdSql);
	}
	@Override
	public void applyUser(ApplyVO vo) {
		applyDAO.applyUser(vo);
	}
	@Override
	public String myApplyPostIdSql(ApplyVO vo) {
		// TODO Auto-generated method stub
		return applyDAO.myApplyPostIdSql(vo);
	}
	@Override
	public List<ApplyVO> PostApplyUsers(ApplyVO vo) {
		
		return applyDAO.PostApplyUsers(vo);
	}
	
}

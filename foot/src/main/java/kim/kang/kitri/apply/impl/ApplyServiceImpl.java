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
	public List<ApplyVO> myApplyList(ApplyVO vo) {
		return applyDAO.myApplyList(vo);
	}
	
}

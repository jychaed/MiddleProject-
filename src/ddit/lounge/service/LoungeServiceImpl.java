package ddit.lounge.service;

import java.util.List;
import java.util.Map;

import ddit.lounge.dao.ILoungeDao;
import ddit.lounge.dao.LoungeDaoImpl;
import ddit.vo.LoungeVO;

public class LoungeServiceImpl implements ILoungeService {
	private ILoungeDao dao;
	private static LoungeServiceImpl service;
	private LoungeServiceImpl() {
		dao = LoungeDaoImpl.getInstance();	
	}
	public static LoungeServiceImpl getInstance() {
		if(service == null) service = new LoungeServiceImpl();
		return service;
	}
	@Override
	public int lounge_insert(LoungeVO vo) {
		return dao.lounge_insert(vo);
	}
	@Override
	public List<LoungeVO> lounge_selectList(Map<String, Object> map) {
		return dao.lounge_selectList(map);
	}
	@Override
	public int lounge_delete(int lounge_no) {
		return dao.lounge_delete(lounge_no);
	}
	@Override
	public int lounge_update(Map<String, Object> map) {
		return dao.lounge_update(map);
	}
	@Override
	public LoungeVO lounge_DetailOne(int lounge_no) {
		// TODO Auto-generated method stub
		return dao.lounge_DetailOne(lounge_no);
	}
}

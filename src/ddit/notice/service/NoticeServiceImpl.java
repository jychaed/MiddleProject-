package ddit.notice.service;

import java.util.List;
import java.util.Map;

import ddit.notice.dao.INoticeDao;
import ddit.notice.dao.NoticeDaoImpl;
import ddit.vo.NoticeVO;

public class NoticeServiceImpl implements INoticeService {
	
	private INoticeDao dao;
	private static NoticeServiceImpl service;
	
	private NoticeServiceImpl() {
		dao = NoticeDaoImpl.getInstance();
	}
	
	public static NoticeServiceImpl getService() {
		if(service == null) service = new NoticeServiceImpl();
		return service;
	}

	@Override
	public List<NoticeVO> noticeList() {
		return dao.noticeList();
	}

	@Override
	public int insertNotice(NoticeVO insertVo) {
		// TODO Auto-generated method stub
		return dao.insertNotice(insertVo);
	}

	@Override
	public NoticeVO getNotice(int notice_number) {
		// TODO Auto-generated method stub
		return dao.getNotice(notice_number);
	}

	@Override
	public int deleteNotice(int noticeNum) {
		// TODO Auto-generated method stub
		return dao.deleteNotice(noticeNum);
	}

	@Override
	public int updateNotice(NoticeVO updateVo) {
		// TODO Auto-generated method stub
		return dao.updateNotice(updateVo);
	}
	
	
}

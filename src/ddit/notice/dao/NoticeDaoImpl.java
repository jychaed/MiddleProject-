package ddit.notice.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.catalina.connector.ClientAbortException;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.NoticeVO;

public class NoticeDaoImpl implements INoticeDao{
	private SqlMapClient smc;
	private static NoticeDaoImpl dao;
	private NoticeDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static NoticeDaoImpl getInstance() {
		if(dao == null) dao = new NoticeDaoImpl();
		return dao;
	}
	
	@Override
	public List<NoticeVO> noticeList() {
		List<NoticeVO> list = null;
		
		try {
			list = smc.queryForList("notice.noticeList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public int insertNotice(NoticeVO insertVo) {
		int res = 0;
		
		try {
			res = (int) smc.update("notice.insertNotice",insertVo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		 
		return res;
	}
	@Override
	public NoticeVO getNotice(int notice_number) {
		NoticeVO vo = null;
		
		try {
			vo = (NoticeVO) smc.queryForObject("notice.getNotice", notice_number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	@Override
	public int deleteNotice(int noticeNum) {
		int res = 0;
		
		try {
			res = (int) smc.delete("notice.deleteNotice",noticeNum);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return res;
	}
	@Override
	public int updateNotice(NoticeVO updateVo) {
		int res = 0;
		
		try {
			res = (int) smc.update("notice.updateNotice",updateVo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return res;
	}
	
}

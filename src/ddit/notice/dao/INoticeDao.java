package ddit.notice.dao;

import java.util.List;
import java.util.Map;

import ddit.vo.NoticeVO;

public interface INoticeDao {

	// 공지사항 리스트 출력
	public List<NoticeVO> noticeList();
	
	// 선택한 공지사항 상세내용
	public NoticeVO getNotice (int notice_number);
	
	// 공지사항 추가
	public int insertNotice(NoticeVO insertVo);
	
	// 공지사항 삭제
	public int deleteNotice(int noticeNum);
	
	// 공지사항 수정
	public int updateNotice(NoticeVO updateVo);
	
}

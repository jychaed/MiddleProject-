package ddit.customercenter.dao;

import java.util.List;

import ddit.vo.CustomerCenterVO;

public interface ICustomerCenterDao {

	// 문의사항 리스트 출력
	public List<CustomerCenterVO> cc_list(String memid);
	
	// 문의사항 추가
	public int cc_insert(CustomerCenterVO ccinsertVo);
	
	// 문의사항 삭제
	public int cc_delete(int ccNum);	
	
	// 문의사항 수정	
	public int cc_update(CustomerCenterVO ccupdateVo);
	
	// 문의사항 관리자 답변 수정
	public int cc_comment_update(CustomerCenterVO cccommentupdateVo);
	
	// 문의사항 관리자 답변 삭제
	
	// 문의사항 관리자 조회용 전체 출력
	public List<CustomerCenterVO> cc_admin_allList();
	
	// 문의사항 관리자 문의종류별 출력
	public List<CustomerCenterVO> cc_admin_TypeList(String cc_type, String searchTxt);
	
}

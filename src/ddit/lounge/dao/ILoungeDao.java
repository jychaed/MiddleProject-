package ddit.lounge.dao;

import java.util.List;
import java.util.Map;

import ddit.vo.LoungeVO;

public interface ILoungeDao {
	/**
	 * 라운지 db에 값을 넣는 메소드 
	 * @param vo  db에 넣을 값을가지고 있는 vo 객체 
	 * @return  성공한 레코드 수 
	 */
	public int lounge_insert(LoungeVO vo);
	
	/**
	 * where 검색할 컬럼명 = 검색하고 싶은 단어를 포함한 모든 문자 반환함 
	 * @param map searchType에 검색하고 싶은 컬럼명과 searchText에 검색할 문자열을 넣는다.
	 * @return  해당 조건에 맞는 라운지 게시글 리스트 
	 */
	public List<LoungeVO> lounge_selectList(Map<String,Object> map);
	
	/**
	 * 선택한 게시글을 지우는 메소드 
	 * @param lounge_no 게시글 번호 
	 * @return 성공 갯
	 */
	public int lounge_delete(int lounge_no);
	
	/**
	 * 선택한 게시글을 수정하는 메소드 
	 * @param map 키 : updateCol(수정할 컬럼명) updateData(수정할 내용) lounge_no(수정할 글번호)
	 * @return 
	 */
	public int lounge_update(Map<String, Object> map);

	
	/**
	 * 라운지에서 선택한 상세 쿼리포오브젝트 한줄!!!
	 * @param lounge_no 게시글 번호는 int임! 주의해라
	 * @return
	 */
	public LoungeVO lounge_DetailOne(int lounge_no);
	
	
}

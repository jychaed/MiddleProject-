package ddit.customercenter.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.CustomerCenterVO;

public class CustomerCenterDaoImpl implements ICustomerCenterDao {
	
	private SqlMapClient smc;
	private static CustomerCenterDaoImpl dao;
	private CustomerCenterDaoImpl(){	
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static CustomerCenterDaoImpl getInstance(){
		if(dao==null) dao = new CustomerCenterDaoImpl();
		return dao;
	}
	@Override
	public List<CustomerCenterVO> cc_list(String memid) {
		
		System.out.println("dao=========" +  memid);
		List<CustomerCenterVO> list = null;
		
		try {
			list = smc.queryForList("customercenter.cclist", memid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("dao==List=======" +  list);
		return list;
	}
	
	@Override
	public int cc_insert(CustomerCenterVO ccinsertVo) {
		int res = 0;
		try {
			res = smc.update("customercenter.ccinsert", ccinsertVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public int cc_delete(int ccNum) {
		int res = 0;
		
		try {
			res = smc.delete("customercenter.ccdelete", ccNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public int cc_update(CustomerCenterVO ccupdateVo) {
		int res = 0;
		
		try {
			res = smc.update("customercenter.ccupdate", ccupdateVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public int cc_comment_update(CustomerCenterVO cccommentupdateVo) {
		int res = 0;
		try {
			res = smc.update("customercenter.cccommentupdate", cccommentupdateVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	@Override
	public List<CustomerCenterVO> cc_admin_allList( ) {
		List<CustomerCenterVO> list = null;
		try {
			list = smc.queryForList("customercenter.cc_admin_allList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<CustomerCenterVO> cc_admin_TypeList(String cc_type, String searchTxt) {
		List<CustomerCenterVO> list = null;
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("cc_type", cc_type);
			map.put("searchText", searchTxt);
			list = smc.queryForList("customercenter.cc_admin_TypeList", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}

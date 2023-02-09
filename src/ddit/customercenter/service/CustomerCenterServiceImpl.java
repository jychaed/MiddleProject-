package ddit.customercenter.service;

import java.util.List;

import ddit.customercenter.dao.CustomerCenterDaoImpl;
import ddit.customercenter.dao.ICustomerCenterDao;
import ddit.vo.CustomerCenterVO;

public class CustomerCenterServiceImpl implements ICustomerCenterService {

	private ICustomerCenterDao dao;
	private static CustomerCenterServiceImpl service;
	
	private CustomerCenterServiceImpl() {
		dao = CustomerCenterDaoImpl.getInstance();	
	}
	
	public static CustomerCenterServiceImpl getInstance() {
		if(service == null) service = new CustomerCenterServiceImpl();
		return service;
	}
	
	@Override
	public List<CustomerCenterVO> cc_list(String memid) {
		System.out.println("service===" + memid);
		// TODO Auto-generated method stub
		return dao.cc_list(memid);
	}
	@Override
	public int cc_insert(CustomerCenterVO ccinsertVo) {
		// TODO Auto-generated method stub
		return dao.cc_insert(ccinsertVo);
	}
	@Override
	public int cc_delete(int ccNum) {
		// TODO Auto-generated method stub
		return dao.cc_delete(ccNum);
	}
	@Override
	public int cc_update(CustomerCenterVO ccupdateVo) {
		// TODO Auto-generated method stub
		return dao.cc_update(ccupdateVo);
	}
	@Override
	public int cc_comment_update(CustomerCenterVO cccommentupdateVo) {
		// TODO Auto-generated method stub
		return dao.cc_comment_update(cccommentupdateVo);
	}

	@Override
	public List<CustomerCenterVO> cc_admin_allList() {
		return dao.cc_admin_allList();
	}

	@Override
	public List<CustomerCenterVO> cc_admin_TypeList(String cc_type, String searchTxt) {
		return dao.cc_admin_TypeList(cc_type,searchTxt);
	}
}

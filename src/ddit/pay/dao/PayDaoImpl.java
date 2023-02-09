package ddit.pay.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;

public class PayDaoImpl implements IPayDao {
	private SqlMapClient smc;
	private static PayDaoImpl dao;
	private PayDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static PayDaoImpl getInstance() {
		if(dao == null) dao = new PayDaoImpl();
		return dao;
	}
}

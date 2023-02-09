package ddit.config;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlMapClientFactory {
	private static SqlMapClient smc;
	
	static {
		try {
			// 인코딩 방식 설정
			Charset charset = Charset.forName("utf-8");
			Resources.setCharset(charset);
			
			// 읽어올 스트림 객체 생성 -- 환경설정 파일
			Reader rd = Resources.getResourceAsReader("ddit/config/sqlMapConfig.xml");
			
			// ibatis사용할 객체 생성
			smc = SqlMapClientBuilder.buildSqlMapClient(rd);
			
			// 스트림 닫기
			rd.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlMapClient getSqlMapClient() {
		return smc;
	}
}

package common;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisManager {
	//싱글톤 패턴으로 SqlSessionFactory 생성
// SqlSessoinFactoryBuilder => SqlSessionFactory
// => SqlSession 
//( sql 실행 객체 : JDBC의 Statement+Result객체 )	
	private static SqlSessionFactory instance;
	private MybatisManager() {	} // private 생성자
	public static SqlSessionFactory getInstance() {
		Reader reader=null;
		try {
			//mybatis 설정파일 정보를 읽음
			reader=Resources.getResourceAsReader(
					"common/sqlMapConfig.xml");
			instance = 
					new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(reader != null) reader.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return instance;
	}
}



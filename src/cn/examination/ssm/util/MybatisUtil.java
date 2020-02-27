package cn.examination.ssm.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	
	private static SqlSessionFactory sqlSessionFactory = null;
	
	static {
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("config/mybatis-config2.xml");
			//创建会话工厂
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
	
	public static SqlSession openSession(boolean autoCommit) {
		return getSqlSessionFactory().openSession(autoCommit);
	}
}

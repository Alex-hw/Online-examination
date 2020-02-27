package cn.examination.ssm.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtil {
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private Connection conn;

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}
	
	public JdbcUtil() {
		System.out.println("---------	public JdbcUtil()---------------");
	}
	
	/**
	 * 初始化数据库的连�?
	 */
	public void init() {
		
		try {
			System.out.println("public void init()");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/mysql?characterEncoding=utf8&serverTimezone=UTC", 
					"root",
					"root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 释放数据库资�?
	 */
	public void free() {
		System.out.println("public void free() ");
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}

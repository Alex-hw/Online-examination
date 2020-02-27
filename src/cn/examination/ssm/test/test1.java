package cn.examination.ssm.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.UserService;

public class test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		UserService userService = context.getBean(UserService.class);
//		User user = userService.Check("hw", "");
//		System.out.println(user);
	}

}

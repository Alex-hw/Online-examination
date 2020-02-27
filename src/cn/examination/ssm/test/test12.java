package cn.examination.ssm.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.UserService;

public class test12 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		UserService userService = context.getBean(UserService.class);
		User u = userService.getUserById("hw");
		System.out.print(u);
	}

}

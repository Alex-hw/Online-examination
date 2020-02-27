package cn.examination.ssm.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.UserService;

public class test3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		QuestService questService = context.getBean(QuestService.class);
		List<QuestStem> qlist =questService.getQuestAll();
		System.out.println(qlist);
	}

}

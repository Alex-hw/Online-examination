package cn.examination.ssm.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.UserService;

public class test13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		QuestService questService = context.getBean(QuestService.class);
		QuestStem q = questService.getQuestByID("56");
		System.out.print(q);
	}

}

package cn.examination.ssm.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;

public class test11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		QuestService questService = context.getBean(QuestService.class);
		questService.saveQuestOption("1", "A", "fdg", "grfd","2","ff");
		
	}

}

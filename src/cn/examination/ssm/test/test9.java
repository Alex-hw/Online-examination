package cn.examination.ssm.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.dao.PaperDao;
import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;

public class test9 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		QuestService questService = context.getBean(QuestService.class);
		questService.deleteQuest("4343");
	}

}

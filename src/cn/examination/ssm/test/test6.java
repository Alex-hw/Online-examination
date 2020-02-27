package cn.examination.ssm.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.dao.PaperDao;
import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;

public class test6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		PaperService paperService = context.getBean(PaperService.class);
		List<Paper> plist = paperService.getPaperAll();
		System.out.println(plist);
	}

}

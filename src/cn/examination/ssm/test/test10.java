package cn.examination.ssm.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import cn.examination.ssm.service.PaperService;

public class test10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		PaperService paperService = context.getBean(PaperService.class);
		paperService.addPaper("4", "3", "2", "1", "0");
	}

}

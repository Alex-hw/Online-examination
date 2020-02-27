package cn.examination.ssm.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.Report;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.ReportService;
import cn.examination.ssm.service.UserService;

public class test18 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		ReportService reportService = context.getBean(ReportService.class);
		List<Report> rl = reportService.findReportAll();
		System.out.println(rl);
		
		System.out.println(reportService.getReportByAccount("3"));
		
		reportService.saveReport("tID", "tName", "userAccount", "score");
	}

}

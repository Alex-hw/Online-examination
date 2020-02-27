package cn.examination.ssm.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.UserService;

public class test14 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		PaperService paperService = context.getBean(PaperService.class);
		QuestService questService = context.getBean(QuestService.class);
		
//		List<QuestStem> pq =new ArrayList<>();
//		List<String> sss= new ArrayList<>();
//		Paper paper = paperService.getPaperByID("22");
//		String[] strs=paper.getStems().split(",");
//		for(int i=0,len=strs.length;i<len;i++){
//			sss.add(strs[i].toString());
//		}
//		System.out.println(sss);
//		for(int i=0;i<sss.size();i++) {
//			pq.add(questService.getQuestByID(sss.get(i)));
//		}
//		
//		System.out.println(pq);
	}

}

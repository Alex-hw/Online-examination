package cn.examination.ssm.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.examination.ssm.dao.QuestOpDao;
import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.UserService;
import cn.examination.ssm.test.NewRan;

public class test17 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		QuestService questService = context.getBean(QuestService.class);
		PaperService paperService = context.getBean(PaperService.class);
		List<QuestStem> ql = questService.getQuestAll();
		
		List<QuestStem> find = new ArrayList<>();
		List<Integer> s = new ArrayList<>();
		NewRan nr = new NewRan();
		s=nr.NewRan(0, ql.size(), 5);
		
		String stems="";
		String rightKeys="";
		for(int i=0;i<s.size();i++) {
			if(i<s.size()-1) {
				stems+=s.get(i).toString()+",";
				find.add(questService.getQuestByID(s.get(i).toString()));
				rightKeys+=questService.getQuestByID(s.get(i).toString()).getRightKey()+",";
			}
			else {
				stems+=s.get(i).toString();
				find.add(questService.getQuestByID(s.get(i).toString()));
				rightKeys+=questService.getQuestByID(s.get(i).toString()).getRightKey();
			}
		}
		System.out.println(stems);				//输入stems
		System.out.println(find);				//找到的相应卷子里的题列表
		System.out.println(rightKeys);			//正确答案字符串
		
		
//		paperService.addPaper("tID", "tName", "stems", "rightKeys", "userAccount");
		
	}


}

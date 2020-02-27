package cn.examination.ssm.test;

import java.util.ArrayList;
import java.util.List;

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

public class test16 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("beans.xml");
		QuestService questService = context.getBean(QuestService.class);
		PaperService paperService = context.getBean(PaperService.class);
		
		List<QuestOption> qo = questService.findQuestResult("3","t1");
		int count=0;
		QuestStem questStem;
		List<String> sss= new ArrayList<>();
		String[] anb=paperService.getRightByID("3").split(",");
		for(int i=0,len=anb.length;i<len;i++){
			sss.add(anb[i].toString());
		}
		for(int i=0;i<qo.size();i++) {
			if(qo.get(i).getOptionContent().equals(sss.get(i))) {
				questStem = questService.getQuestByID(qo.get(i).getsID());
				count+=Integer.parseInt(questStem.getScore());
			}
		}
		System.out.println(count);
	}

}

package cn.examination.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;

@Controller
@RequestMapping("/quest")
public class QuestController {
	@Autowired
	private QuestService questService;
	
	@Autowired
	private PaperService paperService;
	
	@RequestMapping("/find")
	public String find(HttpServletRequest request) {
		List<QuestStem> qlist = questService.getQuestAll();
		request.getSession().setAttribute("questlist", qlist);
		return "question";
    }
	
	@RequestMapping("/save")
	public String saveQuest(HttpServletRequest request,HttpServletResponse response) {
		String sID = request.getParameter("sID");
		String questionsName = request.getParameter("questionsName");
		String rightKey = request.getParameter("rightKey");
		String wrongKeyA = request.getParameter("wrongKeyA");
		String wrongKeyB = request.getParameter("wrongKeyB");
		String wrongKeyC = request.getParameter("wrongKeyC");
		String wrongKeyD = request.getParameter("wrongKeyD");
		String score = request.getParameter("score");
		questService.saveQuest(sID, questionsName, rightKey, wrongKeyA, wrongKeyB, wrongKeyC,wrongKeyD, score);
		List<QuestStem> qlist = questService.getQuestAll();
		request.getSession().setAttribute("questlist", qlist);
		System.out.println("����ɹ�");
		return "question";
    }
	
	@RequestMapping("/update")
	public String updateQuest(HttpServletRequest request,HttpServletResponse response) {
		String sID = request.getParameter("sID");
		String questionsName = request.getParameter("questionsName");
		String rightKey = request.getParameter("rightKey");
		String wrongKeyA = request.getParameter("wrongKeyA");
		String wrongKeyB = request.getParameter("wrongKeyB");
		String wrongKeyC = request.getParameter("wrongKeyC");
		String wrongKeyD = request.getParameter("wrongKeyD");
		String score = request.getParameter("score");
		questService.updateQuest(sID, questionsName, rightKey, wrongKeyA, wrongKeyB, wrongKeyC,wrongKeyD, score);
		List<QuestStem> qlist = questService.getQuestAll();
		request.getSession().setAttribute("questlist", qlist);
		System.out.println("�޸ĳɹ�");
		return "question";
    }
	
	@RequestMapping("/deleteQuest")
	public String deleteQuest(HttpServletRequest request) {
		String sID = request.getParameter("sID");
		questService.deleteQuest(sID);
		List<QuestStem> qlist = questService.getQuestAll();
		request.getSession().setAttribute("questlist", qlist);
		return "question";
    }
	
	@RequestMapping("/showQuest")
	public String showQuest(HttpServletRequest request) {
		List<QuestStem> qlist = questService.getQuestAll();
		request.getSession().setAttribute("questlist", qlist);
		return "mainframe";
    }
	
	@RequestMapping("/saveOp")
	public String saveOption(HttpServletRequest request) {
		String oID = request.getParameter("oID");
		String sID = request.getParameter("sID");
		String optionContent = request.getParameter("optionContent");
		String optionIdentify = request.getParameter("optionIdentify");
		String tID = request.getParameter("tID");
		String participant = request.getParameter("participant");
		questService.saveQuestOption(oID,sID,optionContent,optionIdentify,tID,participant);
		return "mainframe";
    }
//	
//	@RequestMapping("/findOpByID")
//	public String findQuestOptionByID(HttpServletRequest request) {
//		String sID = request.getParameter("sID");
//		List<QuestOption> oplist = questService.findQuestOptionByID(sID);
//		request.getSession().setAttribute("oplist", oplist);
//		return "Questoplist";
//	}
	
	@RequestMapping("/getQuestByStr")
	public String getQuestByStr(HttpServletRequest request) {
		
		return "mainframe";
    }
	
	@RequestMapping("/findQuestResult")
	public String findQuestResult(HttpServletRequest request) {
		String tID = request.getParameter("tID");
		String participant = request.getParameter("participant");
		List<QuestOption> qo = questService.findQuestResult(tID,participant);//qo����ѡ��
		int count=0;
		QuestStem questStem;
		List<String> sss= new ArrayList<>();
		List<String> str= new ArrayList<>();
		String[] anb=paperService.getRightByID(tID).split(",");			//anb��ȷ���ַ���
		for(int i=0,len=anb.length;i<len;i++){
			sss.add(anb[i].toString());									//sss��ȷѡ���б�
		}
		for(int i=0;i<qo.size();i++) {									//���ѡ����ȷ����ɼ�
			if(qo.get(i).getOptionContent().equals(sss.get(i))) {
				questStem = questService.getQuestByID(qo.get(i).getsID());
				count+=Integer.parseInt(questStem.getScore());
			}
		}
		for(int i=0;i<qo.size();i++) {									//���ѡ����ȷ����ɼ�
			str.add(qo.get(i).getOptionContent());
		}
		String c = String.valueOf(count);
		request.getSession().setAttribute("count", c);

		
		String[] strs= paperService.getPaperByID(tID).split(",");
		List<QuestStem> pq =new ArrayList<>();
		for(int i=0;i<strs.length;i++) {
			pq.add(questService.getQuestByID(strs[i].toString()));
		}
		for(int i=0;i<pq.size();i++) {
			System.out.println(pq.get(i).getQuestionsName());
		}
		request.getSession().setAttribute("pqlist1", pq);
		
		Paper paper = paperService.getpaperByID(tID);
		request.getSession().setAttribute("papernow", paper);		//ͨ��tID��ȡ�Ծ����
		
		request.getSession().setAttribute("fenlist", str);
		System.out.print("�����ѡ��"+str);
		System.out.print("�����Ŀ"+pq);
		return "record";
	}
} 

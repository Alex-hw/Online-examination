package cn.examination.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.Report;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.PaperService;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.ReportService;
import cn.examination.ssm.test.NewRan;

@Controller
@RequestMapping("/paper")
public class PaperController {
	@Autowired
    private	PaperService paperService;
	
	@Autowired
	private QuestService questService;
	
	@Autowired
	private ReportService reportService;
	
	@RequestMapping("/find")
	public String find(HttpServletRequest request) {
		List<Paper> plist = paperService.getPaperAll();
		request.getSession().setAttribute("paperlist", plist);
		return "paperlist";
    }
	
	@RequestMapping("/addPaper")
	public String addPaper(HttpServletRequest request) {
		String tID = request.getParameter("tID");
		String tName = request.getParameter("tName");
		String stems = request.getParameter("stems");
		String rightKeys = request.getParameter("rightKeys");
		String userAccount = request.getParameter("userAccount");
		paperService.addPaper(tID, tName, stems, rightKeys, userAccount);
		List<Paper> plist = paperService.getPaperAll();
		request.getSession().setAttribute("paperlist", plist);
		return "paperlist";
	}
	
	@RequestMapping("/addRanPaper")
	public String addRanPaper(HttpServletRequest request) {
		String tID = request.getParameter("tID");
		String tName = request.getParameter("tName");
		String num = request.getParameter("num");
		String userAccount = request.getParameter("userAccount");
		
		System.out.println(tID);
		System.out.println(tName);
		System.out.println(num);
		System.out.println(userAccount);
		//获取随机题目
		List<QuestStem> ql = questService.getQuestAll();
		List<QuestStem> find = new ArrayList<>();
		List<Integer> s = new ArrayList<>();
		NewRan nr = new NewRan();
		s=nr.NewRan(0, ql.size(), Integer.parseInt(num));
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
		
		paperService.addPaper(tID, tName, stems, rightKeys, userAccount);
		
		List<Paper> plist = paperService.getPaperAll();
		request.getSession().setAttribute("paperlist", plist);
		return "paperlist";
	}
	
	@RequestMapping("/getQuestByStr")
	public String getQuestByStr(HttpServletRequest request) {
		String tID = request.getParameter("tID");
		String[] strs= paperService.getPaperByID(tID).split(",");
		List<QuestStem> pq =new ArrayList<>();
		for(int i=0;i<strs.length;i++) {
			pq.add(questService.getQuestByID(strs[i].toString()));
		}
		
		for(int i=0;i<pq.size();i++) {
			System.out.println(pq.get(i).getQuestionsName());
		}
		request.getSession().setAttribute("pqlist", pq);
		return "mainframe";
    }
	
	@RequestMapping("/findMypaper")
	public String findMypaper(HttpServletRequest request) {
		String username = request.getParameter("username");
		List<Paper> plist = paperService.getPaperAll();
		
		List<Report> myrlist = reportService.getReportByAccount(username);
		request.getSession().setAttribute("myreport", myrlist);
		if(plist!=null){
	 		for(int i=0;i<plist.size();i++){
	 			for(int j=0;j<myrlist.size();j++) {
	 				if(myrlist.get(j).gettID().contains(plist.get(i).gettID())) {
//	 					System.out.println("has"+plist.get(i).gettName());
	 					plist.remove(i);
	 			}
	 				}
	 			}
	 		}
		request.getSession().setAttribute("paperlist", plist);
		return "myexam";
    }
	
	@RequestMapping("/deletePaper")
	public String deletePaper(HttpServletRequest request) {
		String tID = request.getParameter("tID");
		paperService.deleteUser(tID);
		List<Paper> plist = paperService.getPaperAll();
		request.getSession().setAttribute("paperlist", plist);
		return "paperlist";
    }
}

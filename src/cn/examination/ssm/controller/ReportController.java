package cn.examination.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.examination.ssm.domain.Report;
import cn.examination.ssm.domain.User;
import cn.examination.ssm.service.QuestService;
import cn.examination.ssm.service.ReportService;

@Controller
@RequestMapping("/report")
public class ReportController {
	@Autowired
	private ReportService reportService;
	
	@Autowired
	private QuestService questService;
	
	@RequestMapping("/findReportAll")
	public String findReportAll(HttpServletRequest request) {
		List<Report> rlist = reportService.findReportAll();
		request.getSession().setAttribute("reportlist", rlist);
		return "report";
    }
	
	@RequestMapping("/saveReport")
	public String saveReport(HttpServletRequest request) {
		String tID = request.getParameter("tID");
		String tName = request.getParameter("tName");
		String userAccount = request.getParameter("userAccount");
		String score = request.getParameter("score");
		reportService.saveReport(tID, tName, userAccount, score);
		return "homepage";
    }
	
	@RequestMapping("/getReportByAccount")
	public String getReportByAccount(HttpServletRequest request) {
		String userAccount = request.getParameter("userAccount");
		List<Report> myrlist = reportService.getReportByAccount(userAccount);
		request.getSession().setAttribute("myreport", myrlist);
		return "myreport";
	}
	
	@RequestMapping("/deleteReport")
	public String deleteReport(HttpServletRequest request) {
		String rID = request.getParameter("rID");
		String tID = request.getParameter("tID");
		String userAccount = request.getParameter("userAccount");
		reportService.deleteReport(rID);
		questService.deleteQuestOp(tID, userAccount);
		List<Report> rlist = reportService.findReportAll();
		request.getSession().setAttribute("reportlist", rlist);
		return "report";
    }
	
}

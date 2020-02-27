package cn.examination.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.examination.ssm.dao.ReportDao;
import cn.examination.ssm.domain.Report;

@Service
public class ReportService {
	@Autowired
	private ReportDao reportDao;
	
	public List<Report> findReportAll(){
		return reportDao.findReportAll();
	}
	
	public List<Report> getReportByAccount(String userAccount) {
		return reportDao.getReportByAccount(userAccount);
	}
	
	public void saveReport(String tID,String tName,String userAccount,String score) {
		Report report = new Report();
		report.settID(tID);
		report.settName(tName);
		report.setUserAccount(userAccount);
		report.setScore(score);
		reportDao.saveReport(report);
	}
	
	public void deleteReport(String rID) {
		reportDao.deleteReport(rID);
	}
}

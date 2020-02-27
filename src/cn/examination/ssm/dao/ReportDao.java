package cn.examination.ssm.dao;

import java.util.List;

import cn.examination.ssm.domain.Report;

public interface ReportDao {
	public List<Report> findReportAll();
	public List<Report> getReportByAccount(String userAccount);
	public void saveReport(Report report);
	public void deleteReport(String rID);
}

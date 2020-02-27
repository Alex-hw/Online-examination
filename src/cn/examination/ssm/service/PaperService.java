package cn.examination.ssm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.examination.ssm.dao.PaperDao;
import cn.examination.ssm.domain.Paper;
import cn.examination.ssm.domain.User;

@Service
public class PaperService {
	@Autowired
	private PaperDao paperDao;
	
	public List<Paper> getPaperAll(){ 
		return paperDao.findpaperAll();
	}
	
	public void addPaper(String tID,String tName,String stems,String rightKeys,String userAccount) {
		Paper paper = new Paper();
		paper.settID(tID);
		paper.settName(tName);
		paper.setStems(stems);
		paper.setRightKeys(rightKeys);
		paper.setUserAccount(userAccount);
		paperDao.addPaper(paper);
	}

	public String getPaperByID(String tID) {
		Paper paper = paperDao.getPaperByID(tID);
		return paper.getStems();
	}
	
	public String getRightByID(String tID) {
		Paper paper = paperDao.getPaperByID(tID);
		return paper.getRightKeys();
	}
	
	public Paper getpaperByID(String tID) {
		Paper paper = paperDao.getPaperByID(tID);
		return paper;
	}
	
	public void deleteUser(String tID) {
		paperDao.deletePaper(tID);
	}
	
}

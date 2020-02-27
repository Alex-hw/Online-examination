package cn.examination.ssm.dao;

import java.util.List;
import cn.examination.ssm.domain.Paper;

public interface PaperDao {
	public List<Paper>findpaperAll();
	public void addPaper(Paper paper);
	public Paper getPaperByID(String tID);
	public void deletePaper(String tID);
}

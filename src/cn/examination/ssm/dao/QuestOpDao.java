package cn.examination.ssm.dao;

import java.util.List;

import cn.examination.ssm.domain.QuestOption;

public interface QuestOpDao {
	public List<QuestOption> findQuestResult(String tID,String participant);
	public void deleteQuestOp(String tID,String participant);
}

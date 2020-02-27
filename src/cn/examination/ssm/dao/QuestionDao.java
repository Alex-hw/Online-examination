package cn.examination.ssm.dao;

import java.util.List;

import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.QuestStem;
import cn.examination.ssm.domain.User;

public interface QuestionDao {
	public List<QuestStem> findQuestionAll();
	public void saveQuestion(QuestStem questStem);
	public void updateQuest(QuestStem questStem);
	public void deleteQuest(String sID);
	public void saveQuestOption(QuestOption questOption);
//	public List<QuestOption> findQuestOptionByID(String sID);
	public QuestStem getQuestByID(String sID);
}

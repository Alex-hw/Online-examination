package cn.examination.ssm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.examination.ssm.dao.QuestOpDao;
import cn.examination.ssm.dao.QuestionDao;
import cn.examination.ssm.domain.QuestOption;
import cn.examination.ssm.domain.QuestStem;

@Service
public class QuestService {
	@Autowired
	private QuestionDao questionDao;
	@Autowired
	private QuestOpDao questOpDao;
	
	public List<QuestStem> getQuestAll(){ 
		return questionDao.findQuestionAll();
	}
	
	public void saveQuest(String sID,String questionsName,String rightKey,String wrongKeyA,String wrongKeyB,String wrongKeyC,String wrongKeyD,String score) {
		QuestStem questStem = new QuestStem();
		questStem.setsID(sID);
		questStem.setQuestionsName(questionsName);
		questStem.setRightKey(rightKey);
		questStem.setWrongKeyA(wrongKeyA);
		questStem.setWrongKeyB(wrongKeyB);
		questStem.setWrongKeyC(wrongKeyC);
		questStem.setWrongKeyD(wrongKeyD);
		questStem.setScore(score);
		questionDao.saveQuestion(questStem);
	}
	
	public void updateQuest(String sID,String questionsName,String rightKey,String wrongKeyA,String wrongKeyB,String wrongKeyC,String wrongKeyD,String score) {
		QuestStem questStem = new QuestStem();
		questStem.setsID(sID);
		questStem.setQuestionsName(questionsName);
		questStem.setRightKey(rightKey);
		questStem.setWrongKeyA(wrongKeyA);
		questStem.setWrongKeyB(wrongKeyB);
		questStem.setWrongKeyC(wrongKeyC);
		questStem.setWrongKeyD(wrongKeyD);
		questStem.setScore(score);
		questionDao.updateQuest(questStem);
	}
	
	public void deleteQuest(String sID) {
		questionDao.deleteQuest(sID);
	}
	
	public void saveQuestOption(String oID,String sID,String optionIdentify,String optionContent,String tID,String participant) {
		QuestOption questOption = new QuestOption();
		questOption.setoID(oID);
		questOption.setsID(sID);
		questOption.setOptionIdentify(optionIdentify);
		questOption.setOptionContent(optionContent);
		questOption.settID(tID);
		questOption.setParticipant(participant);
		questionDao.saveQuestOption(questOption);
	}
	
	public QuestStem getQuestByID(String sID) {
		QuestStem questStem = questionDao.getQuestByID(sID);
		return questStem;
	}
	
	public List<QuestOption> findQuestResult(String tID,String participant){
		return questOpDao.findQuestResult(tID,participant);
	}
	
	public void deleteQuestOp(String tID,String participant) {
		questOpDao.deleteQuestOp(tID, participant);
	}
}

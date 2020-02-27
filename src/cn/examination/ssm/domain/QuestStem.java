package cn.examination.ssm.domain;

public class QuestStem {
	private String sID;//试题ID
	private String questionsName;//试题名称
	private String rightKey;//正确答案
	private String wrongKeyA;
	private String wrongKeyB;
	private String wrongKeyC;
	private String wrongKeyD;
	private String score;//分值
	public String getsID() {
		return sID;
	}
	public void setsID(String sID) {
		this.sID = sID;
	}
	public String getQuestionsName() {
		return questionsName;
	}
	public void setQuestionsName(String questionsName) {
		this.questionsName = questionsName;
	}
	public String getRightKey() {
		return rightKey;
	}
	public void setRightKey(String rightKey) {
		this.rightKey = rightKey;
	}
	public String getWrongKeyA() {
		return wrongKeyA;
	}
	public void setWrongKeyA(String wrongKeyA) {
		this.wrongKeyA = wrongKeyA;
	}
	public String getWrongKeyB() {
		return wrongKeyB;
	}
	public void setWrongKeyB(String wrongKeyB) {
		this.wrongKeyB = wrongKeyB;
	}
	public String getWrongKeyC() {
		return wrongKeyC;
	}
	public void setWrongKeyC(String wrongKeyC) {
		this.wrongKeyC = wrongKeyC;
	}
	public String getWrongKeyD() {
		return wrongKeyD;
	}
	public void setWrongKeyD(String wrongKeyD) {
		this.wrongKeyD = wrongKeyD;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "QuestStem [sID=" + sID + ", questionsName=" + questionsName + ", rightKey=" + rightKey + ", wrongKeyA="
				+ wrongKeyA + ", wrongKeyB=" + wrongKeyB + ", wrongKeyC=" + wrongKeyC + ", wrongKeyD=" + wrongKeyD
				+ ", score=" + score + "]";
	}
	
	
	
	
	
	
}

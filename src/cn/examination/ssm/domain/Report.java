package cn.examination.ssm.domain;

public class Report {
	private String rID;//�ɼ�ID
	private String  tID;//�Ծ�ID
	private String tName;//�Ծ�����
	private String userAccount;//�����˺�
	private String score;//�����ɼ�
	public String getrID() {
		return rID;
	}
	public void setrID(String rID) {
		this.rID = rID;
	}
	public String gettID() {
		return tID;
	}
	public void settID(String tID) {
		this.tID = tID;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "Report [rID=" + rID + ", tID=" + tID + ", tName=" + tName + ", userAccount=" + userAccount + ", score="
				+ score + "]";
	}
	
	
	
	
}

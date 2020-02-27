package cn.examination.ssm.domain;

public class Paper {
	private String tID;//试卷ID
	private String tName;//试卷名称
	private String stems;//试题ID字符串
	private String rightKeys;//试题正确答案字符串
	private String userAccount;//出题人
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
	public String getStems() {
		return stems;
	}
	public void setStems(String stems) {
		this.stems = stems;
	}
	public String getRightKeys() {
		return rightKeys;
	}
	public void setRightKeys(String rightKeys) {
		this.rightKeys = rightKeys;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	@Override
	public String toString() {
		return "Paper [tID=" + tID + ", tName=" + tName + ", stems=" + stems + ", rightKeys=" + rightKeys
				+ ", userAccount=" + userAccount + "]";
	}


	
	
}

package cn.examination.ssm.domain;

public class Paper {
	private String tID;//�Ծ�ID
	private String tName;//�Ծ�����
	private String stems;//����ID�ַ���
	private String rightKeys;//������ȷ���ַ���
	private String userAccount;//������
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

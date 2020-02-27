package cn.examination.ssm.domain;

public class QuestOption {
	private String oID;//选题ID
	private String sID;//试题ID
	private String optionIdentify;//选项标识
	private String optionContent;//选项内容
	private String tID;
	private String participant;
	public String getoID() {
		return oID;
	}
	public void setoID(String oID) {
		this.oID = oID;
	}
	public String getsID() {
		return sID;
	}
	public void setsID(String sID) {
		this.sID = sID;
	}
	public String getOptionIdentify() {
		return optionIdentify;
	}
	public void setOptionIdentify(String optionIdentify) {
		this.optionIdentify = optionIdentify;
	}
	public String getOptionContent() {
		return optionContent;
	}
	public void setOptionContent(String optionContent) {
		this.optionContent = optionContent;
	}
	public String gettID() {
		return tID;
	}
	public void settID(String tID) {
		this.tID = tID;
	}
	public String getParticipant() {
		return participant;
	}
	public void setParticipant(String participant) {
		this.participant = participant;
	}
	@Override
	public String toString() {
		return "QuestOption [oID=" + oID + ", sID=" + sID + ", optionIdentify=" + optionIdentify + ", optionContent="
				+ optionContent + ", tID=" + tID + ", participant=" + participant + "]";
	}
	
	
	
	
	
	
}

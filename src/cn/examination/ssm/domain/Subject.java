package cn.examination.ssm.domain;

public class Subject {
	private String sID;//��ĿID 
	private String subjectName;//��Ŀ��
	public String getsID() {
		return sID;
	}
	public void setsID(String sID) {
		this.sID = sID;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	@Override
	public String toString() {
		return "Subject [sID=" + sID + ", subjectName=" + subjectName + "]";
	}

}

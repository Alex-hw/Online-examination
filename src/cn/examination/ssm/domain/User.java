package cn.examination.ssm.domain;

public class User {
	private String account;//�û��˺�
	private String password;//��¼����
	private String scale;//��¼����1/2/3��1:��ʾ��������Ա��2:��ʾ��ͨ����Ա����ʦ����3����ʾ������Ա��ѧ����
	private String loginStatus;//��¼״̬ 0����ʾδ��¼��1����ʾ��¼
	private String unitName;//��λ����
	private String tel;//��ϵ�绰
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(String loginStatus) {
		this.loginStatus = loginStatus;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "User [account=" + account + ", password=" + password + ", scale=" + scale + ", loginStatus="
				+ loginStatus + ", unitName=" + unitName + ", tel=" + tel + "]";
	}
	
	

}

package cn.examination.ssm.domain;

public class User {
	private String account;//用户账号
	private String password;//登录密码
	private String scale;//登录级别（1/2/3）1:表示超级管理员；2:表示普通管理员（老师）；3：表示考试人员（学生）
	private String loginStatus;//登录状态 0：表示未登录；1：表示登录
	private String unitName;//单位名称
	private String tel;//联系电话
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

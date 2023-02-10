package com.myweb.home.account;

public class AccountDTO {
	
	private int jd_number;
	private String jd_email;
	private String jd_name;
	private String jd_pw;
	private String jd_nickname;
	
	public int getJd_number() {
		return jd_number;
	}
	public void setJd_number(int jd_number) {
		this.jd_number = jd_number;
	}
	public String getJd_email() {
		return jd_email;
	}
	public void setJd_email(String jd_email) {
		this.jd_email = jd_email;
	}
	public String getJd_name() {
		return jd_name;
	}
	public void setJd_name(String jd_name) {
		this.jd_name = jd_name;
	}
	public String getJd_pw() {
		return jd_pw;
	}
	public void setJd_pw(String jd_pw) {
		this.jd_pw = jd_pw;
	}
	public String getJd_nickname() {
		return jd_nickname;
	}
	public void setJd_nickname(String jd_nickname) {
		this.jd_nickname = jd_nickname;
	}
	@Override
	public String toString() {
		return "AccountDTO [jd_number=" + jd_number + ", jd_email=" + jd_email + ", jd_name=" + jd_name + ", jd_pw="
				+ jd_pw + ", jd_nickname=" + jd_nickname + "]";
	}
	
	

}

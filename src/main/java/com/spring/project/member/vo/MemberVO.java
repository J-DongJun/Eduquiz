package com.spring.project.member.vo;

import org.springframework.stereotype.Component;

@Component("memberVO")
public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String email;
	private boolean isUseCookie;
	
	public MemberVO() {
		
	}
	
	public MemberVO(String id,String pw, String name, String email,boolean isUseCookie) {
		this.id=id;
		this.pw=pw;
		this.name=name;
		this.email=email;
		this.isUseCookie = isUseCookie;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isUseCookie() {
		return isUseCookie;
	}

	public void setUseCookie(boolean isUseCookie) {
		this.isUseCookie = isUseCookie;
	}

}

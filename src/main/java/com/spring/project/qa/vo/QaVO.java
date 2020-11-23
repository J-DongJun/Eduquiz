package com.spring.project.qa.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("qaVO")
public class QaVO {
	private int level;
	private int qaNUM;
	private String qaHead;
	private String qaTitle;
	private String id;
	private Date qaDate;
	private int qaParentNUM;
	private String qaContent;

	
	
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getQaNUM() {
		return qaNUM;
	}
	public void setQaNUM(int qaNUM) {
		this.qaNUM = qaNUM;
	}
	public int getQaParentNUM() {
		return qaParentNUM;
	}
	public void setQaParentNUM(int qaParentNUM) {
		this.qaParentNUM = qaParentNUM;
	}
	public String getQaHead() {
		return qaHead;
	}
	public void setQaHead(String qaHead) {
		this.qaHead = qaHead;
	}
	public String getQaTitle() {
		return qaTitle;
	}
	public void setQaTitle(String qaTitle) {
		this.qaTitle = qaTitle;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getQaDate() {
		return qaDate;
	}
	public void setQaDate(Date qaDate) {
		this.qaDate = qaDate;
	}

	public String getQaContent() {
		return qaContent;
	}
	public void setQaContent(String qaContent) {
		this.qaContent = qaContent;
	}
	
	
	
	
	
	
	
}

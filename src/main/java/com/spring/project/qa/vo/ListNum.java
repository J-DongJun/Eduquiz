package com.spring.project.qa.vo;

import org.springframework.stereotype.Component;

@Component("listNum")
public class ListNum {
	
	//페이지 아래 번호 
	private int page;//현재 페이지 번호
	private int perPageNum;//한페이지당 보여줄 게시글 갯수
	private int rowStart;//페이지 첫번째 게시물
	private int rowEnd;//페이지 마지막 게시물
	
	public ListNum() {
		this.page = 1;//페이지 1개부터
		this.perPageNum = 10;//페이지당 10개까지 
	}
	
	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum) {//페이지
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	public int getRowStart() {
		rowStart = ((page - 1) * perPageNum) + 1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}

	@Override
	public String toString() {
		return "ListNum [page=" + page + ", perPageNum=" + perPageNum + ", rowStart=" + rowStart + ", rowEnd=" + rowEnd
				+ "]";
	}
	

}

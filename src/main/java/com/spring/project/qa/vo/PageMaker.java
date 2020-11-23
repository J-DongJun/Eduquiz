package com.spring.project.qa.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;


@Component("pageMaker")
public class PageMaker {
	
	
	private ListNum listNum;
	//페이지 번호
	private int totalCount;
	//전체번호
	private int startPage;
	//페이지 첫번호
	private int endPage;
	//페이지 끝번호
	private boolean prev;
	//이전으로
	private boolean next;
	//다음으로
	private int displayPageNum = 4;
	//페이지 번호 보여줄 갯수
	private int listTotal;
	
	public ListNum getListNum() {
		return listNum;
	}
	public void setListNum(ListNum listNum) {
		this.listNum = listNum;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		clacData();
	}
	
	public int getListTotal() {
		return listTotal;
	}
	public void setListTotal(int listTotal) {
		this.listTotal = listTotal;
	}
	private void clacData() {
		// TODO Auto-generated method stub
		
		endPage = (int) (Math.ceil(listNum.getPage() / (double) displayPageNum)*displayPageNum);
		startPage =(endPage - displayPageNum) + 1;
		if(startPage <= 0) startPage = 1;
		
		int tempEndPage = (int) (Math.ceil(totalCount / (double) listNum.getPerPageNum()));
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;
		next = endPage * listNum.getPerPageNum() < totalCount ? true : false;
		
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents =
		UriComponentsBuilder.newInstance()
						    .queryParam("page", page)
							.queryParam("perPageNum", listNum.getPerPageNum())

							.build();
		   
		return uriComponents.toUriString();
	}
	
	

}

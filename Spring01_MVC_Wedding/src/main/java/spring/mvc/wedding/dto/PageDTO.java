package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("pageDto")
public class PageDTO {

	private int nowPage;	// 선택된 페이지
	
	private int startPage;
	private int endPage;
	private int recordDegree;
	
	private int countAllRecord;
	
	private int startNum;	// 하나의 페이지에서 보일 시작글의 번호
	private int endNum;		// 하나의 페이지에서 보일 끝글의 번호
	
	private int showPageNumberDegree;
//	=> 페이지 당 보여줄 글 수
	private int showPageNumberBegin;
//	=> 노출할 페이지 숫자의 시작 번호
	private int showPageNumberEnd;
//	=> 노출할 페이지 숫자의 끝 번호
	
	public PageDTO() {
		// TODO Auto-generated constructor stub
		this.nowPage = 1;	// 현재 페이지 기본값 => 선택에 따라 변경됨
		this.recordDegree = 5; // 한 페이지 당 보여줄 글 수
		this.showPageNumberDegree = 3; //노출할 페이지 숫자 갯수
	}
	
//	페이지 당 보여줄 글 수(recordDegree) 설정
//	- 5개로 설정한 경우
//		현재 1페이지(nowPage) => 1번글 ~ 5번글
//		현재 2페이지(nowPage) => 6번글 ~ 10번글
//		현재 3페이지(nowPage) => 11번글 ~ 15번글
//	- 선택된 페이지 당 시작 글번호 :
//		startNum = (pageNum*recordDegree) - (recordDegree-1)
//	- 선택된 페이지 당 끝 글번호 :
//		endNum = (pageNum*recordDegree)
//		=> 단, 전체 글의 갯수가 끝 글번호보다 작은 경우,
//			endNum=전체글갯수
	
//	전체 페이지 설정
//	- 전체 글에 대한 첫 페이지(startPage) : 1
//	- 전체 글에 대한 마지막 페이지(endPage) :
//		전체글 갯수 / 페이지당 보여줄 글 수(recordDegree)
//		=> 단, 전체글 갯수 % 페이지당 보여줄 글 수의 결과가 0이 아니면,
//			결과값에 1을 증가
	
	public void pageWorks(int cntAllRecord){
		
		this.countAllRecord = cntAllRecord;	// DB에 저장된 글 갯수
		
//		보여줄 글의 시작번호/끝번호 계산(1~5/6~10/11~12)
		startNum = (nowPage*recordDegree) - (recordDegree-1);
		endNum = nowPage * recordDegree;
		if(endNum > countAllRecord) {
			endNum = countAllRecord;
		}
		
//		전체 레코드에 대한 페이지
		startPage = 1;
		endPage = countAllRecord / recordDegree;
		if(countAllRecord % recordDegree != 0) {
			endPage++;
		}
		
//		노출할 페이지 숫자 계산
		showPageNumberBegin = nowPage - (showPageNumberDegree-1)/2;
		showPageNumberEnd = nowPage + (showPageNumberDegree-1)/2;
		
		if(showPageNumberEnd > endPage) {
			showPageNumberEnd = endPage;
			showPageNumberBegin = 
					showPageNumberEnd - showPageNumberDegree + 1;
		}
		
		if(showPageNumberBegin < 1) {
			showPageNumberBegin = 1;
			showPageNumberEnd = showPageNumberDegree;
			
			if(recordDegree*showPageNumberDegree > countAllRecord) {
				showPageNumberEnd = endPage;
			}
		}
	}
	
	@Override
	public String toString() {
		return "PageDTO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", recordDegree="
				+ recordDegree + ", countAllRecord=" + countAllRecord + ", startNum=" + startNum + ", endNum=" + endNum
				+ ", showPageNumberDegree=" + showPageNumberDegree + ", showPageNumberBegin=" + showPageNumberBegin
				+ ", showPageNumberEnd=" + showPageNumberEnd + "]";
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
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

	public int getRecordDegree() {
		return recordDegree;
	}

	public void setRecordDegree(int recordDegree) {
		this.recordDegree = recordDegree;
	}

	public int getCountAllRecord() {
		return countAllRecord;
	}

	public void setCountAllRecord(int countAllRecord) {
		this.countAllRecord = countAllRecord;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getShowPageNumberDegree() {
		return showPageNumberDegree;
	}

	public void setShowPageNumberDegree(int showPageNumberDegree) {
		this.showPageNumberDegree = showPageNumberDegree;
	}

	public int getShowPageNumberBegin() {
		return showPageNumberBegin;
	}

	public void setShowPageNumberBegin(int showPageNumberBegin) {
		this.showPageNumberBegin = showPageNumberBegin;
	}

	public int getShowPageNumberEnd() {
		return showPageNumberEnd;
	}

	public void setShowPageNumberEnd(int showPageNumberEnd) {
		this.showPageNumberEnd = showPageNumberEnd;
	}
	
}

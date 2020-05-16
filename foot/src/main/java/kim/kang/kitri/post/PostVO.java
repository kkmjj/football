package kim.kang.kitri.post;

import java.util.Date;

public class PostVO {

	private int ID;
	private String WRITER;
	private Date DATETIME;
	private String PLACE;
	private int PER;
	private String CONTENT;
	private String STATUS;
	private String searchCondition;
	private String searchKeyword;
	
	public String getWRITER() {
		return WRITER;
	}
	public void setWRITER(String wRITER) {
		WRITER = wRITER;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getWriter() {
		return WRITER;
	}
	public void setWriter(String writer) {
		this.WRITER = writer;
	}
	public Date getDATETIME() {
		return DATETIME;
	}
	public void setDATETIME(Date dATETIME) {
		DATETIME = dATETIME;
	}
	public String getPLACE() {
		return PLACE;
	}
	public void setPLACE(String pLACE) {
		PLACE = pLACE;
	}
	public int getPER() {
		return PER;
	}
	public void setPER(int pER) {
		PER = pER;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	
	
	
	
}

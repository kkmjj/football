package kim.kang.kitri.apply;

import java.util.Date;

public class ApplyVO {
	private int ID;
	private int POST_ID;
	private String APPLICANT;
	private String CONTENT;
	private String STATUS;
	private Date DATETIME;
	private int HOUR;
	private int MIN;
	private String POST_TITLE;
	private double APPLY_SCORE;
	private String TEL1;
	private String TEL2;
	private String TEL3; 

	public String getTEL1() {
		return TEL1;
	}
	public void setTEL1(String tEL1) {
		TEL1 = tEL1;
	}
	public String getTEL2() {
		return TEL2;
	}
	public void setTEL2(String tEL2) {
		TEL2 = tEL2;
	}
	public String getTEL3() {
		return TEL3;
	}
	public void setTEL3(String tEL3) {
		TEL3 = tEL3;
	}
	public double getAPPLY_SCORE() {
		return APPLY_SCORE;
	}
	public void setAPPLY_SCORE(double aPPLY_SCORE) {
		APPLY_SCORE = aPPLY_SCORE;
	}
	public String getPOST_TITLE() {
		return POST_TITLE;
	}
	public void setPOST_TITLE(String pOST_TITLE) {
		POST_TITLE = pOST_TITLE;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public Date getDATETIME() {
		return DATETIME;
	}
	public void setDATETIME(Date dATETIME) {
		DATETIME = dATETIME;
	}
	public int getHOUR() {
		return HOUR;
	}
	public void setHOUR(int hOUR) {
		HOUR = hOUR;
	}
	public int getMIN() {
		return MIN;
	}
	public void setMIN(int mIN) {
		MIN = mIN;
	}
	public int getPOST_ID() {
		return POST_ID;
	}
	public void setPOST_ID(int pOST_ID) {
		POST_ID = pOST_ID;
	}
	public String getAPPLICANT() {
		return APPLICANT;
	}
	public void setAPPLICANT(String aPPLICANT) {
		APPLICANT = aPPLICANT;
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

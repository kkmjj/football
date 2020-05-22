package kim.kang.kitri.post;

import java.sql.Date;

public class PostVO {
	private int ID;
	private String WRITER;
	private Date DATETIME;
	private int PER;
	private String CONTENT;
	private String STATUS;

	private String ZIP_CODE;
	private String ADDRESS;
	private String ADDRESS_DETAIL;
	
	private String TITLE;
	private int HOUR;
	private int MIN;
	
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
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
	//날짜 검색시 사용 
	private Date start;
	private Date end;
	
	//위치 검색시
	private String region;
	private String input_location;
	
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getInput_location() {
		return input_location;
	}
	public void setInput_location(String input_location) {
		this.input_location = input_location;
	}
	
	//상세시 등록자 정보 불러오기 
	
	private String NAME;
	
	

	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getWRITER() {
		return WRITER;
	}
	public void setWRITER(String wRITER) {
		WRITER = wRITER;
	}
	public Date getDATETIME() {
		return DATETIME;
	}
	public void setDATETIME(Date dATETIME) {
		DATETIME = dATETIME;
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

	public String getZIP_CODE() {
		return ZIP_CODE;
	}
	public void setZIP_CODE(String zIP_CODE) {
		ZIP_CODE = zIP_CODE;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public String getADDRESS_DETAIL() {
		return ADDRESS_DETAIL;
	}
	public void setADDRESS_DETAIL(String aDDRESS_DETAIL) {
		ADDRESS_DETAIL = aDDRESS_DETAIL;
	}
	
}

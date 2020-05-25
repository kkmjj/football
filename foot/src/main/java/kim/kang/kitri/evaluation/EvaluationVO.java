package kim.kang.kitri.evaluation;


public class EvaluationVO {
	int ID;
	int POST_ID;
	String RATER;
	int SCORE;
	String CONTENT;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getPOST_ID() {
		return POST_ID;
	}
	public void setPOST_ID(int pOST_ID) {
		POST_ID = pOST_ID;
	}
	public String getRATER() {
		return RATER;
	}
	public void setRATER(String rATER) {
		RATER = rATER;
	}
	public int getSCORE() {
		return SCORE;
	}
	public void setSCORE(int sCORE) {
		SCORE = sCORE;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
}

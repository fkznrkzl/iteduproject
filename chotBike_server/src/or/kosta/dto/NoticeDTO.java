package or.kosta.dto;

public class NoticeDTO {
	private int rnum;//rownum�� �Ӽ������� �ޱ� ����
	private int pageSize;//�����̴� ������ �� ��
	private int pageCnt;//��ü ��������
	private int tot;//��ü �� ��
	private int curPageNum;//���� ������ ��ȣ
	private int startNum;//������ �� ���� ��ȣ
	private int endNum;//������ �� �� ��ȣ
	
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	public int getCurPageNum() {
		return curPageNum;
	}
	public void setCurPageNum(int curPageNum) {
		this.curPageNum = curPageNum;
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
	
	
}

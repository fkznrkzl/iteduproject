package or.kosta.vo;

import or.kosta.dto.PageDTO;

public class PageVO{

	private int curPage;
	private int startRow;
	private int endRow;
	private int pageSize;
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
		this.startRow = (curPage - 1) * pageSize + 1;
		this.endRow = (curPage) * pageSize;
    
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	
	public void setPageInfo(PageDTO pageDTO) {
		this.pageSize = pageDTO.getPageSize();
		setCurPage(pageDTO.getPageNo());
	}
	
}

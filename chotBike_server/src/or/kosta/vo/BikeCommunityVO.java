package or.kosta.vo;

import java.util.Date;

public class BikeCommunityVO  extends PageVO{
	private int community_num;
	private int reboard_num;
	private int comment_num;
	private String user_id;
	private String comminuty_title;
	private String comminuty_content;
	private String field1;
	private String field2;
	private String field3;
	private int comminuty_hits;
	private Date comminuty_enter_date;
	private Date comminuty_identify_date;
	private char comminuty_delete_yn;
	
	public int getCommunity_num() {
		return community_num;
	}
	public void setCommunity_num(int community_num) {
		this.community_num = community_num;
	}
	public int getReboard_num() {
		return reboard_num;
	}
	public void setReboard_num(int reboard_num) {
		this.reboard_num = reboard_num;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getComminuty_title() {
		return comminuty_title;
	}
	public void setComminuty_title(String comminuty_title) {
		this.comminuty_title = comminuty_title;
	}
	public String getComminuty_content() {
		return comminuty_content;
	}
	public void setComminuty_content(String comminuty_content) {
		this.comminuty_content = comminuty_content;
	}
	public String getField1() {
		return field1;
	}
	public void setField1(String field1) {
		this.field1 = field1;
	}
	public String getField2() {
		return field2;
	}
	public void setField2(String field2) {
		this.field2 = field2;
	}
	public String getField3() {
		return field3;
	}
	public void setField3(String field3) {
		this.field3 = field3;
	}
	public int getComminuty_hits() {
		return comminuty_hits;
	}
	public void setComminuty_hits(int comminuty_hits) {
		this.comminuty_hits = comminuty_hits;
	}
	public Date getComminuty_enter_date() {
		return comminuty_enter_date;
	}
	public void setComminuty_enter_date(Date comminuty_enter_date) {
		this.comminuty_enter_date = comminuty_enter_date;
	}
	public Date getComminuty_identify_date() {
		return comminuty_identify_date;
	}
	public void setComminuty_identify_date(Date comminuty_identify_date) {
		this.comminuty_identify_date = comminuty_identify_date;
	}
	public char getComminuty_delete_yn() {
		return comminuty_delete_yn;
	}
	public void setComminuty_delete_yn(char comminuty_delete_yn) {
		this.comminuty_delete_yn = comminuty_delete_yn;
	}
}

package or.kosta.vo;

public class NoticeVO extends PageVO{
	private int notice_num; // NUMBER NOT NULL, -- �������� ��ȣ PRIMARY KEY
	private int reboard_num; // NUMBER NOT NULL, -- �Խñ� �ٽôޱ� �Ϸù�ȣ FOREIGN KEY
	private int comment_num; // NUMBER, -- ��� �Ϸù�ȣ FOREIGN KEY
	private String user_id; // VARCHAR2(30) NOT NULL, -- ����� ���̵� FOREIGN KEY
	private String notice_title; // VARCHAR2(100) NOT NULL, -- �������� ����
	private String notice_content; // VARCHAR2(2000), -- �������� ����
	private String notice_enter_date; //_date DATE, -- �������� �������
	private String notice_identify; //_date DATE, -- �������� ��������
	private int notice_re_count; // NUMBER, -- �������� �ٽôޱ� ��ȸ��
	private int notice_hits; // NUMBER, -- �������� ��ȸ��
	private String field1; // VARCHAR2(300), -- �������� �ʵ�1
	private String field2; // VARCHAR2(300), -- �������� �ʵ�2
	private String field3; // VARCHAR2(300), -- �������� �ʵ�3
	private String notice_coment_yn; // VARCHAR2(2), -- �������� ��ۿ���
	private String notice_picture_yn; // VARCHAR2(2), -- ���� ����
	private String notice_delete_yn; // VARCHAR2(2) -- ���� ����
	
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
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
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_enter_date() {
		return notice_enter_date;
	}
	public void setNotice_enter_date(String notice_enter_date) {
		this.notice_enter_date = notice_enter_date;
	}
	public String getNotice_identify() {
		return notice_identify;
	}
	public void setNotice_identify(String notice_identify) {
		this.notice_identify = notice_identify;
	}
	public int getNotice_re_count() {
		return notice_re_count;
	}
	public void setNotice_re_count(int notice_re_count) {
		this.notice_re_count = notice_re_count;
	}
	public int getNotice_hits() {
		return notice_hits;
	}
	public void setNotice_hits(int notice_hits) {
		this.notice_hits = notice_hits;
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
	public String getNotice_coment_yn() {
		return notice_coment_yn;
	}
	public void setNotice_coment_yn(String notice_coment_yn) {
		this.notice_coment_yn = notice_coment_yn;
	}
	public String getNotice_picture_yn() {
		return notice_picture_yn;
	}
	public void setNotice_picture_yn(String notice_picture_yn) {
		this.notice_picture_yn = notice_picture_yn;
	}
	public String getNotice_delete_yn() {
		return notice_delete_yn;
	}
	public void setNotice_delete_yn(String notice_delete_yn) {
		this.notice_delete_yn = notice_delete_yn;
	}
	
	
}

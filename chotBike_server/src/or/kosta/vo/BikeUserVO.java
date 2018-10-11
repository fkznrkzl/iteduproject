package or.kosta.vo;

import java.util.Date;

public class BikeUserVO {
	private int user_num;
	private int bike_num;
	private String user_id;
	private String user_pwd;
	private String user_name;
	private int user_height;
	private int user_weight;
	private String user_birth;
	private Date user_enter_date;
	private String user_bike_buy_date;
	
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public int getBike_num() {
		return bike_num;
	}
	public void setBike_num(int bike_num) {
		this.bike_num = bike_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_height() {
		return user_height;
	}
	public void setUser_height(int user_height) {
		this.user_height = user_height;
	}
	public int getUser_weight() {
		return user_weight;
	}
	public void setUser_weight(int user_weight) {
		this.user_weight = user_weight;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public Date getUser_enter_date() {
		return user_enter_date;
	}
	public void setUser_enter_date(Date user_enter_date) {
		this.user_enter_date = user_enter_date;
	}
	public String getUser_bike_buy_date() {
		return user_bike_buy_date;
	}
	public void setUser_bike_buy_date(String user_bike_buy_date) {
		this.user_bike_buy_date = user_bike_buy_date;
	}
}

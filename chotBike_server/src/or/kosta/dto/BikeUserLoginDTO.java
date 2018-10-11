package or.kosta.dto;

import org.springframework.context.annotation.Scope;

@Scope(value="session")
public class BikeUserLoginDTO {
	private String user_id;
	private String user_pwd;
	
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
	@Override
	public String toString() {
		return "BikeUserLoginDTO [user_id=" + user_id + ", user_pwd=" + user_pwd + "]";
	}
	
}

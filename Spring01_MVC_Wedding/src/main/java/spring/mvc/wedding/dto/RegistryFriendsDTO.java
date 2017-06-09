package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("regFriends")
public class RegistryFriendsDTO {
	private int num; //현종 합친 후 넘버 추가 됨
	private String email;
	private String fName;
	private String fEmail;
	private String fPhone;
	public RegistryFriendsDTO() {
	}
	public RegistryFriendsDTO(String email, String fName, String fEmail, String fPhone) {
		this.email = email;
		this.fName = fName;
		this.fEmail = fEmail;
		this.fPhone = fPhone;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getfEmail() {
		return fEmail;
	}
	public void setfEmail(String fEmail) {
		this.fEmail = fEmail;
	}
	public String getfPhone() {
		return fPhone;
	}
	public void setfPhone(String fPhone) {
		this.fPhone = fPhone;
	}
	@Override
	public String toString() {
		return "RegistryFriendsDTO [fName=" + fName + ", fEmail=" + fEmail + ", fPhone=" + fPhone + "]";
	}
}
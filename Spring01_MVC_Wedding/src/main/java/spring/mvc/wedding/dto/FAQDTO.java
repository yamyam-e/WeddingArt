package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("FAQDto")
public class FAQDTO {

	private int num;
	private String name;
	private String email;
	private String pNum;
	private String message;
	
	public FAQDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public FAQDTO(String name, String email, String pNum, String message) {
		super();
		this.name = name;
		this.email = email;
		this.pNum = pNum;
		this.message = message;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getpNum() {
		return pNum;
	}

	public void setpNum(String pNum) {
		this.pNum = pNum;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}

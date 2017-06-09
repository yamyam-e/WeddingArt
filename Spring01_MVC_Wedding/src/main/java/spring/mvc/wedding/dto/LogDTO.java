package spring.mvc.wedding.dto;


import org.apache.ibatis.type.Alias;

@Alias("log")
public class LogDTO {

	private int num;
	private String email;
	private String pw;
	private String name;
	private String cName;
	private String address;
	private String pNum;
	private String weddingDay;
	private String pName;
	private String dDay;
	private String sysName;
	private String orgName;
	
	@Override
	public String toString() {
		return "LogDTO [num=" + num + ", email=" + email + ", pw=" + pw + ", name=" + name + ", cName=" + cName
				+ ", address=" + address + ", pNum=" + pNum + ", weddingDay=" + weddingDay + ", pName="
				+ pName + "]";
	}
	
	public LogDTO() {
		// TODO Auto-generated constructor stub
	}
	
	// 커플찾기용
	public LogDTO(String cName, String weddingDay) {
		super();
		this.cName = cName;
		this.weddingDay = weddingDay;
	}

	// 회원가입용1
	public LogDTO(int num, String email, String pw) {
		super();
		this.num = num;
		this.email = email;
		this.pw = pw;
	}

	// 회원가입용2
	public LogDTO(int num, String name, String cName, String address, String pNum, String weddingDay, String pName) {
		super();
		this.num = num;
		this.name = name;
		this.cName = cName;
		this.address = address;
		this.pNum = pNum;
		this.weddingDay = weddingDay;
		this.pName = pName;
	}
	
	// myInfo용
	public LogDTO(String name, String address, String pNum, String weddingDay, String pName) {
		super();
		this.name = name;
		this.address = address;
		this.pNum = pNum;
		this.weddingDay = weddingDay;
		this.pName = pName;
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

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getpNum() {
		return pNum;
	}

	public void setpNum(String pNum) {
		this.pNum = pNum;
	}

	public String getWeddingDay() {
		return weddingDay;
	}

	public void setWeddingDay(String weddingDay) {
		this.weddingDay = weddingDay;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}
	
	public String getdDay() {
		return dDay;
	}
	
	public void setdDay(String dDay) {
		this.dDay = dDay;
	}

	public String getSysName() {
		return sysName;
	}

	public void setSysName(String sysName) {
		this.sysName = sysName;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
}

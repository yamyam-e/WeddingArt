package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("friendPaid")
public class FriendPaidDTO {
	private Integer num;
	private String email;
	private String name;
	private Integer payment;
	public FriendPaidDTO(String email, String name, Integer payment) {
		this.email = email;
		this.name = name;
		this.payment = payment;
	}
	public FriendPaidDTO(Integer num, String email, String name, Integer payment) {
		this.num = num;
		this.email = email;
		this.name = name;
		this.payment = payment;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPayment() {
		return payment;
	}
	public void setPayment(Integer payment) {
		this.payment = payment;
	}
	@Override
	public String toString() {
		return "FriendPaidDTO [num=" + num + ", email=" + email + ", name=" + name + ", payment=" + payment + "]";
	}
}

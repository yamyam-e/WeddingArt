package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("regCart")
public class RegistryCartDTO {
	
	private Integer num;
	private String name;
	private String email;
	private String category;
	private Integer buyquantity;
	private Integer price;
	private Integer total;
	private String paycheck;
	
	public RegistryCartDTO() {
	}
	public RegistryCartDTO(String name, String email, String category, Integer buyquantity, Integer price, Integer total) {
		this.name = name;
		this.email = email;
		this.category = category;
		this.buyquantity = buyquantity;
		this.price = price;
		this.total = total;
	}
	public RegistryCartDTO(String name, String email, String category, Integer buyquantity, Integer price, Integer total,
			String paycheck) {
		this.name = name;
		this.email = email;
		this.category = category;
		this.buyquantity = buyquantity;
		this.price = price;
		this.total = total;
		this.paycheck = paycheck;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Integer getBuyquantity() {
		return buyquantity;
	}
	public void setBuyquantity(Integer buyquantity) {
		this.buyquantity = buyquantity;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public String getPaycheck() {
		return paycheck;
	}
	public void setPaycheck(String paycheck) {
		this.paycheck = paycheck;
	}
	@Override
	public String toString() {
		return "RegistryCartDTO [num=" + num + ", name=" + name + ", email=" + email + ", category=" + category
				+ ", buyquantity=" + buyquantity + ", price=" + price + ", total=" + total + ", paycheck=" + paycheck
				+ "]";
	}
}
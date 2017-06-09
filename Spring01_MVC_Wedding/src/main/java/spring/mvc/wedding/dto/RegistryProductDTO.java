package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("regProduct")
public class RegistryProductDTO {

	private Integer num;
	private String name;
	private Integer price;
	private String content;
	private String orgname;
	private String sysname;
	private String category;
	private Integer quantity;
	private String search;
	public RegistryProductDTO() {
	}
	public RegistryProductDTO(Integer num, String name, Integer price, String content, String orgname, String sysname,
			String category, Integer quantity) {
		this.num = num;
		this.name = name;
		this.price = price;
		this.content = content;
		this.orgname = orgname;
		this.sysname = sysname;
		this.category = category;
		this.quantity = quantity;
	}
	public RegistryProductDTO(Integer num, String name, Integer price, String content,
			String category, Integer quantity) {
		this.num = num;
		this.name = name;
		this.price = price;
		this.content = content;
		this.category = category;
		this.quantity = quantity;
	}
	public RegistryProductDTO(String name, Integer price, String content, String orgname, String sysname, String category,
			Integer quantity) {
		this.name = name;
		this.price = price;
		this.content = content;
		this.orgname = orgname;
		this.sysname = sysname;
		this.category = category;
		this.quantity = quantity;
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
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOrgname() {
		return orgname;
	}
	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}
	public String getSysname() {
		return sysname;
	}
	public void setSysname(String sysname) {
		this.sysname = sysname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	@Override
	public String toString() {
		return "RegistryProductDTO [num=" + num + ", name=" + name + ", price=" + price + ", content=" + content
				+ ", orgname=" + orgname + ", sysname=" + sysname + ", category=" + category + ", quantity=" + quantity
				+ ", search=" + search + "]";
	}
}
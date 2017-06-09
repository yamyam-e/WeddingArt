package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("gDto")
public class giftDTO {

   private Integer num;
   private String name;
   private Integer price;
   private String content;
   private String orgname;
   private String sysname;
   private String type;
   private Integer quantity;
   
   private String search;
   
   
   public giftDTO() {
      // TODO Auto-generated constructor stub
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


   public String getType() {
      return type;
   }


   public void setType(String type) {
      this.type = type;
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


   public giftDTO(Integer num, String name, Integer price, String content, String type, Integer quantity) {
      super();
      this.num = num;
      this.name = name;
      this.price = price;
      this.content = content;
      this.type = type;
      this.quantity = quantity;
   }
}
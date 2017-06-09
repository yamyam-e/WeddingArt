package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("vfDto")
public class Vender_floristsDTO {

   private Integer num;
   private String name;
   private Integer price;
   private String orgname;
   private String sysname;
   private String buyurl;
   private String homeurl;
   private String type;
   
   private String address;
   private String phone;
   private String bname;
   
   public Vender_floristsDTO() {
      // TODO Auto-generated constructor stub
   }
   
   public Vender_floristsDTO(Integer num, String name, Integer price, String homeurl, String type, String address,
         String phone, String bname) {
      super();
      this.num = num;
      this.name = name;
      this.price = price;
      this.homeurl = homeurl;
      this.type = type;
      this.address = address;
      this.phone = phone;
      this.bname = bname;
   }

   public Vender_floristsDTO(String name, Integer price) {
      super();
      this.name = name;
      this.price = price;
   }

   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }

   public Integer getNum() {
      return num;
   }

   public void setNum(Integer num) {
      this.num = num;
   }

   public Integer getPrice() {
      return price;
   }

   public void setPrice(Integer price) {
      this.price = price;
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

   public String getBuyurl() {
      return buyurl;
   }

   public void setBuyurl(String buyurl) {
      this.buyurl = buyurl;
   }

   public String getHomeurl() {
      return homeurl;
   }

   public void setHomeurl(String homeurl) {
      this.homeurl = homeurl;
   }

   public String getType() {
      return type;
   }

   public void setType(String type) {
      this.type = type;
   }

   public String getAddress() {
      return address;
   }

   public void setAddress(String address) {
      this.address = address;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public String getBname() {
      return bname;
   }

   public void setBname(String bname) {
      this.bname = bname;
   }
   
}
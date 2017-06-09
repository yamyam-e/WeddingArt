package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("vcDto")
public class Vender_cartDTO {
   
   private Integer num;
   private String name;
   private String email;
   private Integer judge;
   private String address;
   private String phone;
   private String homeurl;
   private String logo;
   private String type;
   
   private String pname;   //상품명
   
   public Vender_cartDTO() {
      // TODO Auto-generated constructor stub
   }

   
   public String getPname() {
      return pname;
   }


   public void setPname(String pname) {
      this.pname = pname;
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

   public Integer getJudge() {
      return judge;
   }

   public void setJudge(Integer judge) {
      this.judge = judge;
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

   public String getHomeurl() {
      return homeurl;
   }

   public void setHomeurl(String homeurl) {
      this.homeurl = homeurl;
   }

   public String getLogo() {
      return logo;
   }

   public void setLogo(String logo) {
      this.logo = logo;
   }

   public String getType() {
      return type;
   }

   public void setType(String type) {
      this.type = type;
   }

//   스튜디오, 메이크업일때
   public Vender_cartDTO(String name, String email, Integer judge, String address, String phone, String homeurl,
         String logo, String type) {
      super();
      this.name = name;
      this.email = email;
      this.judge = judge;
      this.address = address;
      this.phone = phone;
      this.homeurl = homeurl;
      this.logo = logo;
      this.type = type;
   }

//   스드메일때
   public Vender_cartDTO(String name, String email, String address, String phone, String homeurl, String logo, String type,
         String pname) {
      super();
      this.name = name;
      this.email = email;
      this.address = address;
      this.phone = phone;
      this.homeurl = homeurl;
      this.logo = logo;
      this.type = type;
      this.pname = pname;
   }
}
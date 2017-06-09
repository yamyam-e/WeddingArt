package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("vsDto")
public class Vender_studioDTO {

   private Integer num;
   private String name;
   private String content;
   private String homeurl;
   private String phone;
   private String address;
   private String logo;
   private String image01, image02, image03, image04;
   private Integer judge;
   
   public Vender_studioDTO() {
      // TODO Auto-generated constructor stub
   }

   
   @Override
   public String toString() {
      return "Vender_studioDTO [num=" + num + ", name=" + name + ", content=" + content + ", homeurl=" + homeurl
            + ", phone=" + phone + ", address=" + address + ", logo=" + logo + ", image01=" + image01 + ", image02="
            + image02 + ", image03=" + image03 + ", image04=" + image04 + ", judge=" + judge + "]";
   }


   public Vender_studioDTO(Integer num, String name, String content, String homeurl, String phone, String address,
         Integer judge) {
      super();
      this.num = num;
      this.name = name;
      this.content = content;
      this.homeurl = homeurl;
      this.phone = phone;
      this.address = address;
      this.judge = judge;
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

   public String getContent() {
      return content;
   }

   public void setContent(String content) {
      this.content = content;
   }

   public String getHomeurl() {
      return homeurl;
   }

   public void setHomeurl(String homeurl) {
      this.homeurl = homeurl;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public String getAddress() {
      return address;
   }

   public void setAddress(String address) {
      this.address = address;
   }

   public String getLogo() {
      return logo;
   }

   public void setLogo(String logo) {
      this.logo = logo;
   }

   public String getImage01() {
      return image01;
   }

   public void setImage01(String image01) {
      this.image01 = image01;
   }

   public String getImage02() {
      return image02;
   }

   public void setImage02(String image02) {
      this.image02 = image02;
   }

   public String getImage03() {
      return image03;
   }

   public void setImage03(String image03) {
      this.image03 = image03;
   }

   public String getImage04() {
      return image04;
   }

   public void setImage04(String image04) {
      this.image04 = image04;
   }

   public Integer getJudge() {
      return judge;
   }

   public void setJudge(Integer judge) {
      this.judge = judge;
   }
   
}
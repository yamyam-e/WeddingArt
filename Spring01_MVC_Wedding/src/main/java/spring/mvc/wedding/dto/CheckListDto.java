package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("checkDto")
public class CheckListDto {

   private Integer num;
   private String email;
   private String listData;
   
   public CheckListDto() {
      // TODO Auto-generated constructor stub
   }

   
   @Override
   public String toString() {
      return "CheckListDto [num=" + num + ", email=" + email + ", listData=" + listData + "]";
   }


   public CheckListDto(String email, String listData) {
      super();
      this.email = email;
      this.listData = listData;
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

   public String getListData() {
      return listData;
   }

   public void setListData(String listData) {
      this.listData = listData;
   }
}
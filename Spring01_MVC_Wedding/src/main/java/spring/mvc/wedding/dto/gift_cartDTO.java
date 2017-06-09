package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("gcDto")
public class gift_cartDTO {
   
   private Integer num;
   private String name;
   private String email;
   private String type;
   private Integer buyquantity;
   private Integer price;
   private Integer total;
   
   private String paycheck;
   
   public gift_cartDTO() {
      // TODO Auto-generated constructor stub
   }

   
   public String getPaycheck() {
      return paycheck;
   }


   public void setPaycheck(String paycheck) {
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

   public String getType() {
      return type;
   }

   public void setType(String type) {
      this.type = type;
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

   public gift_cartDTO(String name, String email, String type, Integer buyquantity, Integer price, Integer total) {
      super();
      this.name = name;
      this.email = email;
      this.type = type;
      this.buyquantity = buyquantity;
      this.price = price;
      this.total = total;
   }

   
   public gift_cartDTO(String name, String email, String type, Integer buyquantity, Integer price, Integer total,
         String paycheck) {
      super();
      this.name = name;
      this.email = email;
      this.type = type;
      this.buyquantity = buyquantity;
      this.price = price;
      this.total = total;
      this.paycheck = paycheck;
   }


   @Override
   public String toString() {
      return "gift_cartDTO [num=" + num + ", name=" + name + ", email=" + email + ", type=" + type + ", buyquantity="
            + buyquantity + ", price=" + price + ", total=" + total + "]";
   }

}
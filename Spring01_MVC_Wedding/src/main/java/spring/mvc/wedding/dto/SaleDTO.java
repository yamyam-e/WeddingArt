package spring.mvc.wedding.dto;

import org.apache.ibatis.type.Alias;

@Alias("sDto")
public class SaleDTO {

   private Integer num;
   private String name;
   private String email;
   private Integer payment;
   private Integer quantity;
   private String category;
   
   public SaleDTO() {
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

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public Integer getPayment() {
      return payment;
   }

   public void setPayment(Integer payment) {
      this.payment = payment;
   }

   public Integer getQuantity() {
      return quantity;
   }

   public void setQuantity(Integer quantity) {
      this.quantity = quantity;
   }

   public String getCategory() {
      return category;
   }

   public void setCategory(String category) {
      this.category = category;
   }

   public SaleDTO(String name, String email, Integer payment, Integer quantity, String category) {
      super();
      this.name = name;
      this.email = email;
      this.payment = payment;
      this.quantity = quantity;
      this.category = category;
   }
   
}
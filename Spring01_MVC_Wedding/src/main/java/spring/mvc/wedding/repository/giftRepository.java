package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.SaleDTO;
import spring.mvc.wedding.dto.giftDTO;
import spring.mvc.wedding.dto.gift_cartDTO;

@Repository
public class giftRepository {
   
   @Autowired
   private SqlSession sqlSessionTemplate;

   public List<giftDTO> selectList(String type) {

      return sqlSessionTemplate.selectList("logMapper.giftSelectList", type);
   }

   public giftDTO selectOne(Integer num) {
      
      return sqlSessionTemplate.selectOne("logMapper.giftSelectOne", num);
   }

//   가격 오름차순 보기
   public List<Object> selectListP01(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.giftSelectListP01", type);
   }

//   가격 내림차순 보기
   public List<Object> selectListP02(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.giftSelectListP02", type);
   }
   
//   이름 오름차순 보기
   public List<Object> selectListN01(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.giftSelectListN01", type);
   }

//   이름 내림차순 보기
   public List<Object> selectListN02(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.giftSelectListN02", type);
   }

//   상품 검색
   public List<giftDTO> gift_Search(giftDTO gDto) {
      
      return sqlSessionTemplate.selectList("logMapper.gift_Search", gDto);
   }

//   상품 구매
   public int insert_giftCart(gift_cartDTO gcDto) {
      
      return sqlSessionTemplate.insert("logMapper.insert_giftCart", gcDto);
   }

//   구매후 수량 update
   public int updateGift_quantity(giftDTO gDto) {
      
      return sqlSessionTemplate.update("logMapper.update_giftCart01", gDto);
   }

//   장바구니 selectList
   public List<Object> selectListCart(String email) {
      
      return sqlSessionTemplate.selectList("logMapper.selectListCart", email);
   }

//   장바구니 목록삭제
   public int delete_giftCart(Integer num) {
      
      return sqlSessionTemplate.delete("logMapper.delete_giftCart", num);
   }

   public int delete_giftCart02(String string) {
      // TODO Auto-generated method stub
      return 0;
   }

   public gift_cartDTO selectOne_giftCart(Integer num) {
      
      return sqlSessionTemplate.selectOne("logMapper.selectOnegiftCart", num);
   }

   public int insert_sale(SaleDTO sDto) {
      
      return sqlSessionTemplate.insert("logMapper.insert_sale", sDto);
   }

//   gift 데이터 갯수
   public int GiftselectListcnt() {
      
      return sqlSessionTemplate.selectOne("logMapper.GiftselectListcnt");
   }

//   gift리스트
   public List<giftDTO> GiftSelectPageView(PageDTO pDto) {
      
      return sqlSessionTemplate.selectList("logMapper.GiftSelectPageView", pDto);
   }

//   결제후 paycheck true변환
   public int updateGift_Cart(gift_cartDTO gcDto) {
      
      return sqlSessionTemplate.update("logMapper.updateGift_Cart", gcDto);
   }

//   gift_system update01(사진수정X)
   public int updateGift_System01(giftDTO gDto) {
      
      return sqlSessionTemplate.update("logMapper.updateGift_System01", gDto);
   }
   
//   gift_system update02(사진을 수정하는경우)
   public int updateGift_System02(giftDTO gDto) {
      
      return sqlSessionTemplate.update("logMapper.updateGift_System02", gDto);
   }

//   gift_system 상품검색
   public List<giftDTO> gift_Search02(giftDTO gDto) {
      
      return sqlSessionTemplate.selectList("logMapper.gift_Search02", gDto);
   }




   
   

}
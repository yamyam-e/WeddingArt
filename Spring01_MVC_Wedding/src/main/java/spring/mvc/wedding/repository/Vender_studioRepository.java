package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.Vender_studioDTO;
import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.Vender_cartDTO;

@Repository
public class Vender_studioRepository {

   @Autowired
   private SqlSession sqlSessionTemplate;

//   SelectList
   public List<Object> selectList01() {
      
      return sqlSessionTemplate.selectList("logMapper.studioSelectList01");
   }

//   모달
   public Vender_studioDTO selectOne(Integer num) {
      
      return sqlSessionTemplate.selectOne("logMapper.studioSelectOne", num);
   }

//   이름순 SelectList
   public List<Object> selectList02() {
      
      return sqlSessionTemplate.selectList("logMapper.studioSelectList02");
   }

//   별점순 SelectList
   public List<Object> selectList03() {
      
      return sqlSessionTemplate.selectList("logMapper.studioSelectList03");
   }

//   등록하기
   public int insert_venderCart(Vender_cartDTO vcDto) {
      
      if(vcDto.getPname() == null){
         return sqlSessionTemplate.insert("logMapper.insert_venderCart01", vcDto);
      }else{
         return sqlSessionTemplate.insert("logMapper.insert_venderCart02", vcDto);
      }
      
   }

//   등록리스트 selectList
   public List<Object> venderCart_SelectList(String email) {
      
      return sqlSessionTemplate.selectList("logMapper.selectList_venderCart", email);
   }

//   등록리스트 삭제
   public int delete_venderCart(Integer num) {
      
      return sqlSessionTemplate.delete("logMapper.delete_venderCart", num);
   }
   
//   venderStudio 데이터 갯수
   public int VenderSSelectListcnt() {
      
      return sqlSessionTemplate.selectOne("logMapper.VenderSSelectListcnt");
   }

//   vender_studio 리스트
   public List<Object> VenderSSelectPageView(PageDTO pDto) {
      
      return sqlSessionTemplate.selectList("logMapper.VenderSSelectPageView", pDto);
   }

//   vender_system(studio 수정, 사진X)
   public int updateStudio_System01(Vender_studioDTO vsDto) {
      
      return sqlSessionTemplate.update("logMapper.updateStudio_System01", vsDto);
   }

//   vender_system(studio 수정, 사진O)
   public int updateStudio_System02(Vender_studioDTO vsDto) {
      
      return sqlSessionTemplate.update("logMapper.updateStudio_System02", vsDto);
   }
   
}
package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.Vender_makeupDTO;

@Repository
public class Vender_makeupRepository {

   @Autowired
   private SqlSession sqlSessionTemplate;

//   SelectList
   public List<Object> selectList01() {
      
      return sqlSessionTemplate.selectList("logMapper.makeupSelectList01");
   }

//   이름순 SelectList
   public List<Object> selectList02() {
      
      return sqlSessionTemplate.selectList("logMapper.makeupSelectList02");
   }

//   별점순 SelectList
   public List<Object> selectList03() {
      
      return sqlSessionTemplate.selectList("logMapper.makeupSelectList03");
   }

//   모달
   public Vender_makeupDTO selectOne(Integer num) {
      
      return sqlSessionTemplate.selectOne("logMapper.makeupSelectOne", num);
   }
   
//   venderMakeup 데이터 갯수
   public int VenderMSelectListcnt() {
      
      return sqlSessionTemplate.selectOne("logMapper.VenderMSelectListcnt");
   }

//   vender_makeup 리스트
   public List<Object> VenderMSelectPageView(PageDTO pDto) {
      
      return sqlSessionTemplate.selectList("logMapper.VenderMSelectPageView", pDto);
   }

//   vender_system makeup수정(사진X)
   public int updateMakeup_System01(Vender_makeupDTO vmDto) {
      
      return sqlSessionTemplate.update("logMapper.updateMakeup_System01", vmDto);
   }

//   vender_system makeup수정(사진O)
   public int updateMakeup_System02(Vender_makeupDTO vmDto) {
      
      return sqlSessionTemplate.update("logMapper.updateMakeup_System02", vmDto);
   }
   
   
}


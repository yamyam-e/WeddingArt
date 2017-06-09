package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.Vender_floristsDTO;

@Repository
public class Vender_floristsRepository {
   
   @Autowired
   private SqlSession sqlSessionTemplate;

   public List<Object> selectList01(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.selectList_florists01", type);
   }

   public Vender_floristsDTO selectOne(int num) {
      
      return sqlSessionTemplate.selectOne("logMapper.selectOne_bouqeut01", num);
   }

//   이름순 보기
   public List<Object> selectList02(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.selectList_florists02", type);
   }

//   가격순 보기
   public List<Object> selectList03(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.selectList_florists03", type);
   }
   
//   vendeFlorists 데이터 갯수
   public int VenderFselectListcnt() {
      
      return sqlSessionTemplate.selectOne("logMapper.VenderFselectListcnt");
   }

//   vender_florists 리스트
   public List<Object> VenderFSelectPageView(PageDTO pDto) {
      
      return sqlSessionTemplate.selectList("logMapper.VenderFSelectPageView", pDto);
   }

//   vender_system(florists 수정, 사진X)
   public int updateFlorists_System01(Vender_floristsDTO vfDto) {
      
      return sqlSessionTemplate.update("logMapper.updateFlorists_System01", vfDto);
   }

//   vender_system(florists 수정, 사진O)
   public int updateFlorists_System02(Vender_floristsDTO vfDto) {
      return sqlSessionTemplate.update("logMapper.updateFlorists_System02", vfDto);
   }


   

}
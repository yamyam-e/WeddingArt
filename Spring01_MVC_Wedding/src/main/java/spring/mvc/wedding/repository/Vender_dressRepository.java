package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.Vender_dressDTO;
import spring.mvc.wedding.dto.Vender_floristsDTO;
import spring.mvc.wedding.dto.Vender_makeupDTO;
import spring.mvc.wedding.dto.Vender_studioDTO;

@Repository
public class Vender_dressRepository {
   
   @Autowired
   private SqlSession sqlSessionTemplate;

   public List<Object> selectList_weddingdress(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.venderSelectList01", type);
   }

   public Vender_dressDTO selectOne(Integer num) {
      
      return sqlSessionTemplate.selectOne("logMapper.venderSelectOne", num);
   }
//   이름순
   public List<Object> selectList02(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.venderSelectList02", type);
   }

//   가격순
   public List<Object> selectList03(String type) {
      
      return sqlSessionTemplate.selectList("logMapper.venderSelectList03", type);
   }

//   venderDress 데이터 갯수
   public int VenderDselectListcnt() {
      
      return sqlSessionTemplate.selectOne("logMapper.VenderDselectListcnt");
   }

//   venderDress 리스트
   public List<Object> VenderDSelectPageView(PageDTO pDto) {
      
      return sqlSessionTemplate.selectList("logMapper.VenderDSelectPageView", pDto);
   }

//   dress_system01(사진수정x)
   public int updateDress_System01(Vender_dressDTO vdDto) {
      
      return sqlSessionTemplate.update("logMapper.updateDress_System01", vdDto);
   }

//   dress_system02(사진수정O)
   public int updateDress_System02(Vender_dressDTO vdDto) {
      
      return sqlSessionTemplate.update("logMapper.updateDress_System02", vdDto);
   }
   
//	vender_system(검색)_dress
	public List<Object> selectlist_venderSearch01(Vender_dressDTO vdDto) {
		
		return sqlSessionTemplate.selectList("logMapper.selectlist_venderSearch01", vdDto);
	}

//	vender_system(검색)_florists
	public List<Object> selectlist_venderSearch02(Vender_floristsDTO vfDto) {
		
		return sqlSessionTemplate.selectList("logMapper.selectlist_venderSearch02", vfDto);
	}

//	vender_system(검색)_studio
	public List<Object> selectlist_venderSearch03(Vender_studioDTO vsDto) {
		
		return sqlSessionTemplate.selectList("logMapper.selectlist_venderSearch03", vsDto);
	}

//	vender_system(검색)_makeup
	public List<Object> selectlist_venderSearch04(Vender_makeupDTO vmDto) {
		
		return sqlSessionTemplate.selectList("logMapper.selectlist_venderSearch04", vmDto);
	}






}
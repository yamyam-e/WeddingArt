package spring.mvc.wedding.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.CheckListDto;

@Repository
public class CheckListRepository {
   
   @Autowired
   private SqlSession sqlSessionTemplate;

//   checkList 중복확인
   public CheckListDto selectOne_CheckList(String email) {

	   return sqlSessionTemplate.selectOne("logMapper.selectOne_CheckList", email);
   }
   
//   checkList 추가
   public int insert_CheckList(CheckListDto checkDto02) {
      
      return sqlSessionTemplate.insert("logMapper.insertOne_CheckList", checkDto02);
   }

//   checkList 재저장(update)
   public int update_CheckList(CheckListDto checkDto02) {
      
      return sqlSessionTemplate.update("logMapper.update_CheckList", checkDto02);
   }


}
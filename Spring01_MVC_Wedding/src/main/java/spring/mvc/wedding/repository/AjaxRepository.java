package spring.mvc.wedding.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.LogDTO;

@Repository
public class AjaxRepository {

	@Autowired
	private SqlSession sqlSessionTemplate;

	public LogDTO idCheck(String eValue) {

		return sqlSessionTemplate.selectOne("logMapper.idCheck", eValue);
	}
	
	
}

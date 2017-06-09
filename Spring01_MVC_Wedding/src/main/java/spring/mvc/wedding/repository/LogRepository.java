package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.FAQDTO;
import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.SaleDTO;

@Repository
public class LogRepository {
	
	@Autowired
	private SqlSession sqlSessionTemplate;

	public int insertOne(LogDTO dto) {

		return sqlSessionTemplate.insert("logMapper.insertOne", dto);
	}

	public LogDTO selectOne(LogDTO dto) {

		return sqlSessionTemplate.selectOne("logMapper.selectOne", dto);
	}

	public int update(LogDTO dto) {
		
		return sqlSessionTemplate.update("logMapper.update", dto);
	}

	public List<LogDTO> selectCouple(LogDTO dto) {

		return sqlSessionTemplate.selectList("logMapper.selectCouple",dto);
	}

	public List<LogDTO> selectList(int num) {

		return sqlSessionTemplate.selectList("logMapper.selectMyInfo", num);
	}

	public int LogPageCnt() {

		return sqlSessionTemplate.selectOne("logMapper.MasterLogPageCnt");
	}

	public List<LogDTO> LogPageView(PageDTO pageDto) {

		return sqlSessionTemplate.selectList("logMapper.MasterLogPageView", pageDto);
	}

	public int insertFAQMessage(FAQDTO dto) {

		return sqlSessionTemplate.insert("logMapper.insertFAQMessage", dto);
	}

	public List<SaleDTO> masterSaleList() {

		return sqlSessionTemplate.selectList("logMapper.masterSaleList");
	}

	public String findEmail(LogDTO dto) {

		return sqlSessionTemplate.selectOne("logMapper.findEmail", dto);
	}

	public String findPw(LogDTO dto) {

		return sqlSessionTemplate.selectOne("logMapper.findPw", dto);
	}

	public List<FAQDTO> selectFAQ() {

		return sqlSessionTemplate.selectList("logMapper.selectFAQ");
	}

	public List<LogDTO> selectList(Integer num) {
		return sqlSessionTemplate.selectList("logMapper.selectOneForFriend", num);
	}


}

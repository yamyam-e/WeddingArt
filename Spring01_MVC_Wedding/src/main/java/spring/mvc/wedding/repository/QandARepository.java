package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.QandADTO;

@Repository
public class QandARepository {

	@Autowired
	private SqlSession sqlSessionTemplate;

	public int QandASelectPageCnt() {

		return sqlSessionTemplate.selectOne("logMapper.QandAPageCnt");
	}

	public List<QandADTO> QandASelectPageView(PageDTO pageDto) {

		return sqlSessionTemplate.selectList("logMapper.QandASelectPageView", pageDto);
	}

	public int QandAInsertOne(QandADTO dto) {

		return sqlSessionTemplate.insert("logMapper.QandAInsertOne", dto);
	}

	public void QandAGroupNumUpdate(QandADTO dto) {

		sqlSessionTemplate.update("logMapper.QandAGroupNumUpdate", dto);
	}

	public QandADTO QandASelectOne(int num) {

		return sqlSessionTemplate.selectOne("logMapper.QandASelectOne", num);
	}

	public void QandAReplySeqUpdate(int groupNum) {

		sqlSessionTemplate.update("logMapper.QandAReplySeqUpdate", groupNum);
	}

	public int QandAInsertReply(QandADTO repDto) {

		return sqlSessionTemplate.insert("logMapper.QandAInsertReply", repDto);
	}

	
	
}

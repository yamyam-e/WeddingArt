package spring.mvc.wedding.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.wedding.dto.FriendPaidDTO;
import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.RegistryCartDTO;
import spring.mvc.wedding.dto.RegistryProductDTO;
import spring.mvc.wedding.dto.SaleDTO;
import spring.mvc.wedding.dto.SavedPointDTO;

@Repository
public class RegistryProductRepository {
	
	@Autowired
	private SqlSession sqlSessionTemplate;

	public int regInsertOneProduct(RegistryProductDTO dto) {
		return sqlSessionTemplate.insert("logMapper.regInsertOneProduct", dto);
	}
	
	public int regDeleteOneProduct(Integer num) {
		return sqlSessionTemplate.delete("logMapper.regDeleteOneProduct", num);
	}

	public int regSelectListProductCnt() {
		return sqlSessionTemplate.selectOne("logMapper.regSelectListProductCnt");
	}
	
	public List<RegistryProductDTO> regProductPageView(PageDTO pDTO) {
		return sqlSessionTemplate.selectList("logMapper.regProductPageView", pDTO);
	}
	
	public List<RegistryProductDTO> regSelectProductByCategory(String category) {
		return sqlSessionTemplate.selectList("logMapper.regSelectProductByCategory", category);
	}
	
	public List<Object> regProductOrderByPriceASC(String category) {
		return sqlSessionTemplate.selectList("logMapper.regProductOrderByPriceASC", category);
	}
	
	public List<Object> regProductOrderByPriceDESC(String category) {
		return sqlSessionTemplate.selectList("logMapper.regProductOrderByPriceDESC", category);
	}

	public List<Object> regProductOrderByNameASC(String category) {
		return sqlSessionTemplate.selectList("logMapper.regProductOrderByNameASC", category);
	}
	
	public List<Object> regProductOrderByNameDESC(String category) {
		return sqlSessionTemplate.selectList("logMapper.regProductOrderByNameDESC", category);
	}
	
	public List<RegistryProductDTO> regProductSearch(RegistryProductDTO dto) {
		return sqlSessionTemplate.selectList("logMapper.regProductSearch", dto);
	}
	
	public List<RegistryProductDTO> regProductSearchManager(RegistryProductDTO dto) {
		return sqlSessionTemplate.selectList("logMapper.regProductSearchManager", dto);
	}
	
	public int regInsertOneCart(RegistryCartDTO dto) {
		return sqlSessionTemplate.insert("logMapper.regInsertOneCart", dto);
	}
	
	public List<RegistryCartDTO> regSelectListCart(String email) {
		return sqlSessionTemplate.selectList("logMapper.regSelectListCart", email);
	}
	
	public int regSelectListCartCnt(String email) {
		return sqlSessionTemplate.selectOne("regSelectListCartCnt", email);
	}
	
	public int regDeleteCart(Integer num) {
		return sqlSessionTemplate.delete("logMapper.regDeleteCart", num);
	}
	
	public RegistryCartDTO regSelectOneCart(Integer num) {
		return sqlSessionTemplate.selectOne("logMapper.regSelectOneCart", num);
	}

	public int regUpdateQuantity(RegistryProductDTO dto) {
		return sqlSessionTemplate.update("logMapper.regUpdateQuantity", dto);
	}
	
	public int regInsertSale(SaleDTO dto) {
		return sqlSessionTemplate.insert("logMapper.regInsertSale", dto);
	}
	
	public int regUpdateCart(RegistryCartDTO dto) {
		return sqlSessionTemplate.update("logMapper.regUpdateCart", dto);
	}

	public int regUpdateProduct(RegistryProductDTO dto) {
		return sqlSessionTemplate.update("logMapper.regUpdateProduct", dto);
	}

	public int regUpdateProductWithPhoto(RegistryProductDTO dto) {
		return sqlSessionTemplate.update("logMapper.regUpdateProductWithPhoto", dto);
	}

	public RegistryProductDTO regSelectOneProduct(int num) {
		return sqlSessionTemplate.selectOne("logMapper.regSelectOneProduct", num);
	}
	
	// savedPoint
	public int insertSavedPoint(SavedPointDTO dto) {
		return sqlSessionTemplate.insert("logMapper.insertSavedPoint", dto);
	}
	public int updateSavePoint(SavedPointDTO dto) {
		return sqlSessionTemplate.update("logMapper.updateSavePoint", dto);
	}
	public SavedPointDTO selectOneSavedPoint(String email) {
		return sqlSessionTemplate.selectOne("logMapper.selectOneSavedPoint", email);
	}
	
	// friendPaid
	public int insertFriendPaid(FriendPaidDTO dto){
		return sqlSessionTemplate.insert("logMapper.insertFriendPaid", dto);
	}
	public List<FriendPaidDTO> selectListFriendPaidAll(String email){
		return sqlSessionTemplate.selectList("logMapper.selectListFriendPaid", email);
	}


}
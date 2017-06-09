package spring.mvc.wedding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.repository.LogRepository;

@Service
public class LogService extends DefaultTransactionDefinition{

	@Autowired
	private LogRepository repository;
	
	@Autowired
	private PlatformTransactionManager tx;
	
	private TransactionStatus status;
	
	public int update(LogDTO dto) {

		status = tx.getTransaction(this);
		
		int res = repository.update(dto);
		
		if(res > 0){
			tx.commit(status);
		}else{
			tx.rollback(status);
		}
		
		return res;
	}

}

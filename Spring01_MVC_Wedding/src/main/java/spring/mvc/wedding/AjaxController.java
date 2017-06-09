package spring.mvc.wedding;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.repository.AjaxRepository;

@Controller
public class AjaxController {

	@Autowired
	private AjaxRepository repository;
	
	@RequestMapping(value="ajax", produces="text/plain; charset=UTF-8")
	@ResponseBody
	public Object ajax(@RequestParam("value") String value) {
		
		String msg = null;
		
		boolean idCheck = Pattern.matches("^[_a-zA-Z0-9-\\.]+@[\\.a-zA-Z0-9-]+\\.[a-zA-Z]{3}+$", value); 
		
		LogDTO dto = repository.idCheck(value);
		
		if(dto != null){
			msg = "이미 등록되어있는 아이디입니다.";
		}else if(idCheck == false){
			msg = "이메일 형식에 맞지 않습니다.";
		}else{
			msg = "등록 가능한 아이디입니다.";
		}
		
		return msg;
	}
	
}

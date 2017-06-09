package spring.mvc.wedding;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.dto.RegistryCartDTO;
import spring.mvc.wedding.repository.LogRepository;
import spring.mvc.wedding.repository.RegistryProductRepository;

@Controller
public class findCoupleController {
	
	@Autowired
	private LogRepository logRepository;
	
	@Autowired
	private RegistryProductRepository regProductRepository;
	
	@RequestMapping(value="findCouple", method=RequestMethod.POST)
	public ModelAndView findCname(HttpServletRequest request, LogDTO logDto, ModelMap mmap){
		
		String cName = request.getParameter("cName");
		String weddingDay = request.getParameter("weddingDay");
		String email = null;
		Integer num = null;
		logDto = new LogDTO(cName, weddingDay);
		
		List<LogDTO> logListc = logRepository.selectCouple(logDto);
		
		for (LogDTO each : logListc) {
			email = each.getEmail();
			num = each.getNum();
		}
		
//		int cntRecord = regProductRepository.regSelectListCartCnt(email);
		
		List<RegistryCartDTO> listc = regProductRepository.regSelectListCart(email);
//		int total = regTotal(listc);
		
		ModelAndView mav = new ModelAndView();
//		mmap.addAttribute("regTotal", total);
		mmap.addAttribute("findRegSelectAllCart", listc);
		mmap.addAttribute("findCoupleSign", "findCoupleSign");
//		mmap.addAttribute("findCoupleRegCartCnt", cntRecord);
		mmap.addAttribute("friendEmail", email);
		mmap.addAttribute("friendNum", num);
		mav.addObject("findCouple", logListc);
		mav.setViewName("home");
		return mav;
	}
	
	public int regTotal(List<RegistryCartDTO> listc){
		int total = 0;
		for(RegistryCartDTO each : listc){
			if(each.getPaycheck() == null){
				total += each.getTotal();
			}
		}
		return total;
	}
	
}

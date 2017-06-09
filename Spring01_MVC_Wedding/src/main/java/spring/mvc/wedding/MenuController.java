package spring.mvc.wedding;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.CheckListDto;
import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.repository.CheckListRepository;

@Controller
public class MenuController {
	
	@Autowired
	private CheckListRepository repository;

	@RequestMapping("registry")
	public ModelAndView registryGo() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("registry", "registry");
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping("checkList")
	   public ModelAndView checkListGo(
	         HttpSession session,
	         ModelMap mmap
	      ) {
	      
		ModelAndView mav = new ModelAndView();
		
	      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
	      if(dto != null){
	    	  String email = dto.getEmail();
		      String name = dto.getName();
		      mmap.addAttribute("name", name);
		      
		      
		      CheckListDto checkDto = repository.selectOne_CheckList(email);
		      
		      if(checkDto==null){
		         mav.addObject("checkList", "checkList");
		      }else{
		         String[] data = checkDto.getListData().split(",");
		         double checkTemp = Math.round((double)(data.length*4.55)*100d)/100d;
		         
		         mmap.addAttribute("checkTemp", checkTemp);
		         mmap.addAttribute("data", data);
		         
		         mav.addObject("checkList", checkDto);
		      }
	      }else{
	    	  mav.addObject("checkList", "checkList");
	      }
	      
	      mav.setViewName("home");
	      return mav;
	   }
	
//  체크리스트 저장
  @RequestMapping("CheckList_Update")
  public ModelAndView CheckList_Update(
        @RequestParam(value="cklist")String cklist,
        HttpSession session,
        ModelMap mmap
     ){
     
     LogDTO dto = (LogDTO) session.getAttribute("nowLogin");
     String email = dto.getEmail();
     String name = dto.getName();
     mmap.addAttribute("name", name);
     
     CheckListDto checkDto02 = new CheckListDto(email, cklist);
     
     CheckListDto checkDto = repository.selectOne_CheckList(email);
     
     int res = 0;
     if(checkDto == null){
        System.out.println("insert해야됨");
        res = repository.insert_CheckList(checkDto02);
        mmap.addAttribute("msg", "저장이 완료되었습니다.");
        
     }else{
        System.out.println("업데이트해야됨");
        res = repository.update_CheckList(checkDto02);
        mmap.addAttribute("msg", "수정이 완료되었습니다.");
     }
     
     checkDto = repository.selectOne_CheckList(email);
     String[] data = checkDto.getListData().split(",");
     double checkTemp = Math.round((double)(data.length*4.55)*100d)/100d;
     
     mmap.addAttribute("checkTemp", checkTemp);
     
     mmap.addAttribute("data", data);
     
     ModelAndView mav = new ModelAndView();
     
     mav.addObject("checkList", checkDto);
     mav.setViewName("home");
     return mav;
  }
	
	@RequestMapping("vender_weddingHall")
	public ModelAndView venderWeddingGo() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("vender_weddingHall", "vender_weddingHall");
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping("findCouple")
	public ModelAndView findCoupleGo() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("findCouple", "findCouple");
		mav.setViewName("home");
		return mav;
	}
}

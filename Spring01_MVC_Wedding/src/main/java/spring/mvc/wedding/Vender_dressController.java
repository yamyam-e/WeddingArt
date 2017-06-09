package spring.mvc.wedding;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.Vender_dressDTO;
import spring.mvc.wedding.dto.Vender_floristsDTO;
import spring.mvc.wedding.dto.Vender_makeupDTO;
import spring.mvc.wedding.dto.Vender_studioDTO;
import spring.mvc.wedding.module.FileWorks;
import spring.mvc.wedding.repository.Vender_dressRepository;

@Controller
public class Vender_dressController {
   
   @Autowired
   private Vender_dressRepository repository;
   
   @Autowired
   private FileWorks fileWorks;
   
   @RequestMapping("vender_dress")
   public ModelAndView vender_dress(){
      String type = "weddingdress";
      List<Object>listc = repository.selectList_weddingdress(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
   @RequestMapping("vender_dress_upFile")
   public void vender_dress_upFile(){}

   @RequestMapping("vender_modal")
   public ModelAndView vender_dress_modal(
         @RequestParam(value="num", required=false) Integer num,
         @RequestParam(value="type", required=false) String type,
         ModelMap mmap){
      
      List<Object>listc = repository.selectList_weddingdress(type);
      System.out.println(type);
      if(type.equals("weddingdress")){
         mmap.addAttribute("vender_dress", listc);
      }else if(type.equals("minidress")){
         mmap.addAttribute("vender_dress_miniDress", listc);
      }else if(type.equals("tuxedo")){
         mmap.addAttribute("vender_dress_tuxedo", listc);
      }else if(type.equals("shoes")){
         mmap.addAttribute("vender_dress_shoes", listc);
      }
      
      ModelAndView mav = new ModelAndView();
      
      Vender_dressDTO vdDto = repository.selectOne(num);
      mav.addObject("vdDto", vdDto);
      mav.setViewName("home");
      
      return mav;
   }
   
   @RequestMapping("vender_dress_weddingDress")
   public ModelAndView vender_dress_weddingDress(HttpServletRequest request){
      
      String servletPath = request.getServletPath();
      System.out.println(servletPath);
      
      String type = "weddingdress";
      List<Object>listc = repository.selectList_weddingdress(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_weddingDress", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
   @RequestMapping("vender_dress_miniDress")
   public ModelAndView vender_dress_miniDress(HttpServletRequest request){
      
      String servletPath = request.getServletPath();
      System.out.println(servletPath);
      
      String type = "minidress";
      List<Object> listc = repository.selectList_weddingdress(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_miniDress", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
   @RequestMapping("vender_dress_tuxedo")
   public ModelAndView vender_dress_tuxedo(HttpServletRequest request){
      
      String servletPath = request.getServletPath();
      System.out.println(servletPath);
      
      String type = "tuxedo";
      List<Object> listc = repository.selectList_weddingdress(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_tuxedo", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
   @RequestMapping("vender_dress_shoes")
   public ModelAndView vender_dress_shoes(HttpServletRequest request){
      
      String servletPath = request.getServletPath();
      System.out.println(servletPath);
      
      String type = "shoes";
      List<Object> listc = repository.selectList_weddingdress(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_shoes", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   웨딩드레스 이름순보기
   @RequestMapping("vender_dress_weddingDress_selectName")
   public ModelAndView vender_dress_weddingDress_selectName(){
      
      String type = "weddingdress";
      List<Object> listc = repository.selectList02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_weddingDress", listc);
      mav.setViewName("home");
      
      return mav;
   }

//   웨딩드레스 가격순보기
   @RequestMapping("vender_dress_weddingDress_selectPrice")
   public ModelAndView vender_dress_weddingDress_selectPrice(){
      
      String type = "weddingdress";
      List<Object> listc = repository.selectList03(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_weddingDress", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   미니드레스 이름순보기
   @RequestMapping("vender_dress_miniDress_selectName")
   public ModelAndView vender_dress_miniDress_selectName(){
      
      String type = "minidress";
      List<Object> listc = repository.selectList02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_miniDress", listc);
      mav.setViewName("home");
      
      return mav;
   }

//   미니드레스 가격순보기
   @RequestMapping("vender_dress_miniDress_selectPrice")
   public ModelAndView vender_dress_miniDress_selectPrice(){
      
      String type = "minidress";
      List<Object> listc = repository.selectList03(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_miniDress", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   턱시도 이름순보기
   @RequestMapping("vender_dress_shoes_selectName")
   public ModelAndView vender_dress_shoes_selectName(){
      
      String type = "shoes";
      List<Object> listc = repository.selectList02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_shoes", listc);
      mav.setViewName("home");
      
      return mav;
   }

//   턱시도 가격순보기
   @RequestMapping("vender_dress_shoes_selectPrice")
   public ModelAndView vender_dress_shoes_selectPrice(){
      
      String type = "shoes";
      List<Object> listc = repository.selectList03(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_shoes", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   신발 이름순보기
   @RequestMapping("vender_dress_tuxedo_selectName")
   public ModelAndView vender_dress_tuxedo_selectName(){
      
      String type = "tuxedo";
      List<Object> listc = repository.selectList02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_tuxedo", listc);
      mav.setViewName("home");
      
      return mav;
   }

//   신발 가격순보기
   @RequestMapping("vender_dress_tuxedo_selectPrice")
   public ModelAndView vender_dress_tuxedo_selectPrice(){
      
      String type = "tuxedo";
      List<Object> listc = repository.selectList03(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_dress_tuxedo", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender 관리(dress)
   @RequestMapping("vender_System")
   public ModelAndView vender_System(
         PageDTO pDto,
         ModelMap mmap
      ){
      
      int cntRecord = repository.VenderDselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderDSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//	vender_system 검색
	@RequestMapping("vender_system_search")
	public ModelAndView vender_system_search(
			@RequestParam(value="search", required=false) String search,
			ModelMap mmap
		){
		Vender_dressDTO vdDto = new Vender_dressDTO();
		vdDto.setBname(search);
		
		List<Object>listc = repository.selectlist_venderSearch01(vdDto);
		if(listc.size() != 0){
			mmap.addAttribute("vender_system", listc);
			
		}else if(listc.size() == 0 ){
			Vender_floristsDTO vfDto = new Vender_floristsDTO();
			vfDto.setBname(search);
			
			listc = repository.selectlist_venderSearch02(vfDto);
			mmap.addAttribute("vender_system_florists", listc);
			
			if(listc.size() == 0){
				Vender_studioDTO vsDto = new Vender_studioDTO();
				vsDto.setName(search);
				
				listc = repository.selectlist_venderSearch03(vsDto);
				mmap.addAttribute("vender_system_studio", listc);
				
				if(listc.size() == 0){
					Vender_makeupDTO vmDto = new Vender_makeupDTO();
					vmDto.setName(search);
					
					listc = repository.selectlist_venderSearch04(vmDto);
					mmap.addAttribute("vender_system_makeup", listc);
				}
				
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mmap.addAttribute("pageDto", null);
		mav.setViewName("home");
		
		return mav;
	}
   
//   vender_system 수정모달창띄우기(florists)
   @RequestMapping("vender_SystemModDModal")
   public ModelAndView vender_SystemModDModal(
         @RequestParam(value="num", required=false)Integer num,
         PageDTO pDto,
         ModelMap mmap      ){
      
      int cntRecord = repository.VenderDselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderDSelectPageView(pDto);
      mmap.addAttribute("vender_system", listc);
      mmap.addAttribute("pageDto", pDto);
      
      Vender_dressDTO vdDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vdDtoModal", vdDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender_system_dress 수정하기
   @RequestMapping(value="vender_systemDModify")
   public ModelAndView vender_systemDModify(
         MultipartHttpServletRequest mulRequest,
         ModelMap mmap,
         PageDTO pDto) throws Exception{
      int num = Integer.parseInt(mulRequest.getParameter("num"));
      String name = mulRequest.getParameter("name");
      String bname = mulRequest.getParameter("bname");
      int price = Integer.parseInt(mulRequest.getParameter("price"));
      String homeurl = mulRequest.getParameter("homeurl");
      String address = mulRequest.getParameter("address");
      String phone = mulRequest.getParameter("phone");
      String content = mulRequest.getParameter("content");
      String type = mulRequest.getParameter("type");
      int res = 0;
   
      Vender_dressDTO vdDto = new Vender_dressDTO(num, name, price, content, homeurl, type, address, phone, bname);
      MultipartFile upfile = mulRequest.getFile("upfile");
      String sysname = fileWorks.uploadAndGetSysName(upfile);
      System.out.println("sysname : " + sysname);
      if(sysname == null){
         res = repository.updateDress_System01(vdDto);
         
      }else{
         vdDto.setSysname(sysname);
         vdDto.setOrgname(upfile.getOriginalFilename());
         res = repository.updateDress_System02(vdDto);
         
      }
      String msg = res>0 ? "수정이 완료되었습니다." : "실패";
      mmap.addAttribute("msg", msg);
      
      int cntRecord = repository.VenderDselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderDSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
   }

   

}











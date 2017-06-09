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
import spring.mvc.wedding.dto.Vender_floristsDTO;
import spring.mvc.wedding.module.FileWorks;
import spring.mvc.wedding.repository.Vender_floristsRepository;

@Controller
public class Vender_floristsController {
   
   @Autowired
   private Vender_floristsRepository repository;

   @Autowired
   private FileWorks fileWorks;
   
   @RequestMapping("vender_florists")
   public ModelAndView vender_florists(){
      String type = "bouquet";
      List<Object> listc = repository.selectList01(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_florists", listc);
      mav.setViewName("home");
      return mav;
   }

   
   @RequestMapping("vender_modal01")
   public ModelAndView vender_florists_modal(
         @RequestParam(value="num", required=false) Integer num,
         @RequestParam(value="type", required=false) String type,
         ModelMap mmap){
      
      List<Object>listc = repository.selectList01(type);
      if(type.equals("bouquet")){
         mmap.addAttribute("vender_florists", listc);
      }else if(type.equals("decoration")){
         mmap.addAttribute("vender_florists_decoration", listc);
      }
      
      ModelAndView mav = new ModelAndView();
      
      Vender_floristsDTO vfDto = repository.selectOne(num);
      
      mav.addObject("vfDto", vfDto);
      mav.setViewName("home");
      
      return mav;
   }

   @RequestMapping("vender_florists_bouquet")
   public ModelAndView vender_florists_bouquet(HttpServletRequest request){
      
      String servletPath = request.getServletPath();
      System.out.println(servletPath);
      
      String type = "bouquet";
      List<Object> listc = repository.selectList01(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_florists_bouquet", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
   @RequestMapping("vender_florists_decoration")
   public ModelAndView vender_florists_decoration(HttpServletRequest request){
      
      String servletPath = request.getServletPath();
      System.out.println(servletPath);
      
      String type = "decoration";
      List<Object> listc = repository.selectList01(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_florists_decoration", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   부케 이름순 보기
   @RequestMapping("vender_florists_selectName")
   public ModelAndView vender_florists_selectName(){
      
      String type = "bouquet";
      List<Object> listc = repository.selectList02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_florists_bouquet", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   부케 가격순 보기
   @RequestMapping("vender_florists_selectPrice")
   public ModelAndView vender_florists_selectPrice(){
      
      String type = "bouquet";
      List<Object> listc = repository.selectList03(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_florists_bouquet", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   악세사리 이름순 보기
   @RequestMapping("vender_floristsDeco_selectName")
   public ModelAndView vender_floristsDeco_selectName(){
      
      String type = "decoration";
      List<Object> listc = repository.selectList02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_florists_decoration", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   악세사리 가격순 보기
   @RequestMapping("vender_floristsDeco_selectPrice")
   public ModelAndView vender_floristsDeco_selectPrice(){
      
      String type = "decoration";
      List<Object> listc = repository.selectList03(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_florists_decoration", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender 관리(florists)
   @RequestMapping("vender_system_florists")
   public ModelAndView vender_system_florists(
         ModelMap mmap,
         PageDTO pDto){
      
      int cntRecord = repository.VenderFselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderFSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system_florists", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender_system 수정모달창띄우기(florists)
   @RequestMapping("vender_SystemModFModal")
   public ModelAndView vender_SystemModFModal(
         @RequestParam(value="num", required=false)Integer num,
         PageDTO pDto,
         ModelMap mmap      ){
      
      int cntRecord = repository.VenderFselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderFSelectPageView(pDto);
      mmap.addAttribute("vender_system_florists", listc);
      mmap.addAttribute("pageDto", pDto);
      
      Vender_floristsDTO vfDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vfDtoModal", vfDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender_system florist 수정하기
   @RequestMapping(value="vender_systemFModify")
   public ModelAndView vender_systemFModify(
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
      String type = mulRequest.getParameter("type");
      int res = 0;
      
      Vender_floristsDTO vfDto = new Vender_floristsDTO(num, name, price, homeurl, type, address, phone, bname);
      MultipartFile upfile = mulRequest.getFile("upfile");
      String sysname = fileWorks.uploadAndGetSysName(upfile);
      System.out.println("sysname : " + sysname);
      if(sysname == null){
         res = repository.updateFlorists_System01(vfDto);
         
      }else{
         vfDto.setSysname(sysname);
         vfDto.setOrgname(upfile.getOriginalFilename());
         res = repository.updateFlorists_System02(vfDto);
         
      }
      String msg = res>0 ? "수정이 완료되었습니다." : "실패";
      mmap.addAttribute("msg", msg);
      
      int cntRecord = repository.VenderFselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderFSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system_florists", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
   }

}






















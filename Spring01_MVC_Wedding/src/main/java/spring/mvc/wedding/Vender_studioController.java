package spring.mvc.wedding;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.Vender_cartDTO;
import spring.mvc.wedding.dto.Vender_studioDTO;
import spring.mvc.wedding.module.FileWorks;
import spring.mvc.wedding.repository.Vender_studioRepository;

@Controller
public class Vender_studioController {
   
   @Autowired
   private Vender_studioRepository repository;
   
   @Autowired
   private FileWorks fileWorks;

   @RequestMapping("vender_studio")
   public ModelAndView vender_studio(){
      
      
      List<Object> listc = repository.selectList01();
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_studio", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   모달
   @RequestMapping("vender_studio_modal")
   public ModelAndView vender_studio_modal(
         @RequestParam(value="num", required=false) Integer num,
         ModelMap mmap ){
      
      List<Object> listc = repository.selectList01();
      mmap.addAttribute("vender_studio", listc);
      
      Vender_studioDTO vsDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vsDto", vsDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   이름순 보기(selectList)
   @RequestMapping("vender_studio_selectName")
   public ModelAndView vender_studio_selectName(){
      
      List<Object> listc = repository.selectList02();
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_studio", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   별점순 보기(selectList)
   @RequestMapping("vender_studio_selectJudge")
   public ModelAndView vender_studio_selectJudge(){
      
      List<Object> listc = repository.selectList03();
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_studio", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   등록하기
   @RequestMapping(value="vender_cart", method=RequestMethod.POST)
   public ModelAndView vender_cart(
         HttpSession session,
         @RequestParam(value="name", required=false) String name,
         @RequestParam(value="judge", required=false) Integer judge,
         @RequestParam(value="address", required=false) String address,
         @RequestParam(value="phone", required=false) String phone,
         @RequestParam(value="homeurl", required=false) String homeurl,
         @RequestParam(value="logo", required=false) String logo,
         @RequestParam(value="type", required=false) String type,
         @RequestParam(value="pname", required=false) String pname,
         ModelMap mmap   ){
      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
      String email = dto.getEmail();
      Vender_cartDTO vcDto;
      
      if(pname != null){
         vcDto = new Vender_cartDTO(name, email, address, phone, homeurl, logo, type, pname);
      }else{
         vcDto = new Vender_cartDTO(name, email, judge, address, phone, homeurl, logo, type);
      }
      
      int res = repository.insert_venderCart(vcDto);
      if(res>0){
         mmap.addAttribute("msg", "등록이 완료되었습니다.");
      }else{
         mmap.addAttribute("msg", "등록 실패");
      }
      
      ModelAndView mav = new ModelAndView();
      mav.setViewName("home");
      
      return mav;
   }
   
//   등록리스트 페이지
   @RequestMapping("vender_CartList")
   public ModelAndView vender_CartList(
         HttpSession session,
         ModelMap mmap
      ){
	   
	  ModelAndView mav = new ModelAndView();
      
	  LogDTO dto = (LogDTO) session.getAttribute("nowLogin");
      if(dto == null){
    	  mav.addObject("vender_cartList", "vender_cartList");
          mav.setViewName("home");
          return mav;
      }
      String name = dto.getName();
      String email = dto.getEmail();
      mmap.addAttribute("name", name);
      
      List<Object>listc = repository.venderCart_SelectList(email);
      
      
      mav.addObject("vender_cartList", listc);
      mav.setViewName("home");
      return mav;
   }
   
//   등록리스트목록 삭제
   @RequestMapping("vender_cartDelete")
   public ModelAndView vender_cartDelete(
         @RequestParam(value="num", required=false) Integer num,
         ModelMap mmap,
         HttpSession session){
      
      int res = repository.delete_venderCart(num);
      if(res>0){
         mmap.addAttribute("msg", "삭제되었습니다.");
      }else{
         mmap.addAttribute("msg", "실패");
      }
      
      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
      String email = dto.getEmail();
      String name = dto.getName();
      mmap.addAttribute("name", name);
      
      List<Object>listc = repository.venderCart_SelectList(email);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_cartList", listc);
      mav.setViewName("home");
      return mav;
   }
   
//   vender 관리(studio)
   @RequestMapping("vender_system_studio")
   public ModelAndView vender_system_studio(
         ModelMap mmap,
         PageDTO pDto
      ){
      
      int cntRecord = repository.VenderSSelectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderSSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system_studio", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender_system studio 모달창띄우기
   @RequestMapping("vender_SystemModSModal")
   public ModelAndView vender_SystemModSModal(
         @RequestParam(value="num", required=false)Integer num,
         PageDTO pDto,
         ModelMap mmap      ){
      
      int cntRecord = repository.VenderSSelectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderSSelectPageView(pDto);
      mmap.addAttribute("vender_system_studio", listc);
      mmap.addAttribute("pageDto", pDto);
      
      Vender_studioDTO vsDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vsDtoModal", vsDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender_system studio 수정
   @RequestMapping("vender_systemSModify")
   public ModelAndView vender_systemSModify(
         MultipartHttpServletRequest mulRequest,
         ModelMap mmap,
         PageDTO pDto) throws Exception{
      int num = Integer.parseInt(mulRequest.getParameter("num"));
      String name = mulRequest.getParameter("name");
      String homeurl = mulRequest.getParameter("homeurl");
      String address = mulRequest.getParameter("address");
      String content = mulRequest.getParameter("content");
      String phone = mulRequest.getParameter("phone");
      int judge = Integer.parseInt(mulRequest.getParameter("judge"));
      int res = 0;
      
      Vender_studioDTO vsDto = new Vender_studioDTO(num, name, content, homeurl, phone, address, judge);
      System.out.println(vsDto.toString());
      
      MultipartFile upfile = mulRequest.getFile("upfile");
      String logo = fileWorks.uploadAndGetSysName(upfile);
      upfile = mulRequest.getFile("image01");
      String image01 = fileWorks.uploadAndGetSysName(upfile);
      upfile = mulRequest.getFile("image02");
      String image02 = fileWorks.uploadAndGetSysName(upfile);
      upfile = mulRequest.getFile("image03");
      String image03 = fileWorks.uploadAndGetSysName(upfile);
      upfile = mulRequest.getFile("image04");
      String image04 = fileWorks.uploadAndGetSysName(upfile);
      
      if(logo == null || image01 ==null || image02 ==null || image03 ==null || image04 ==null){
         res = repository.updateStudio_System01(vsDto);
         
      }else{
         vsDto.setLogo(logo);
         vsDto.setImage01(image01);
         vsDto.setImage02(image02);
         vsDto.setImage03(image03);
         vsDto.setImage04(image04);
         res = repository.updateStudio_System02(vsDto);
      }
      
      String msg = res>0 ? "수정이 완료되었습니다." : "수정실패";
      mmap.addAttribute("msg", msg);
      
      int cntRecord = repository.VenderSSelectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderSSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system_studio", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
   }

}


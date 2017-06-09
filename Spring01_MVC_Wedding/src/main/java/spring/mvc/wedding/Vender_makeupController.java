package spring.mvc.wedding;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.Vender_makeupDTO;
import spring.mvc.wedding.module.FileWorks;
import spring.mvc.wedding.repository.Vender_makeupRepository;

@Controller
public class Vender_makeupController {
   
   @Autowired
   private Vender_makeupRepository repository;
   
   @Autowired
   private FileWorks fileWorks;

   @RequestMapping("vender_makeup")
   public ModelAndView vender_makeup(){
      
      List<Object> listc = repository.selectList01();
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_makeup", listc);
      mav.setViewName("home");
      
      return mav;
      
   }
   
//   이름순 보기(selectList)
   @RequestMapping("vender_makeup_selectName")
   public ModelAndView vender_makeup_selectName(){
      
      List<Object> listc = repository.selectList02();
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_makeup", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   별점순 보기(selectList)
   @RequestMapping("vender_makeup_selectJudge")
   public ModelAndView vender_makeup_selectJudge(){
      
      List<Object> listc = repository.selectList03();
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_makeup", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   모달
   @RequestMapping("vender_makeup_modal")
   public ModelAndView vender_makeup_modal(
         @RequestParam(value="num", required=false) Integer num,
         ModelMap mmap){
      
      List<Object>listc = repository.selectList01();
      mmap.addAttribute("vender_makeup", listc);
      
      Vender_makeupDTO vmDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vmDto", vmDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender 관리(makeup)
   @RequestMapping("vender_system_makeup")
   public ModelAndView vender_system_makeup(
         ModelMap mmap,
         PageDTO pDto      ){
      
      int cntRecord = repository.VenderMSelectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderMSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system_makeup", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
      
   }
   
//   vender_system Makeup 모달창 띄우기
   @RequestMapping("vender_SystemModMModal")
   public ModelAndView vender_SystemModMModal(
         @RequestParam(value="num", required=false)Integer num,
         PageDTO pDto,
         ModelMap mmap      ){
      
      int cntRecord = repository.VenderMSelectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderMSelectPageView(pDto);
      mmap.addAttribute("vender_system_makeup", listc);
      mmap.addAttribute("pageDto", pDto);
      
      Vender_makeupDTO vmDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vmDtoModal", vmDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   vender_system makeup 수정
   @RequestMapping("vender_systemMModify")
   public ModelAndView vender_systemMModify(
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
      
      Vender_makeupDTO vmDto = new Vender_makeupDTO(num, name, content, homeurl, phone, address, judge);
      
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
         res = repository.updateMakeup_System01(vmDto);
         
      }else{
         vmDto.setLogo(logo);
         vmDto.setImage01(image01);
         vmDto.setImage02(image02);
         vmDto.setImage03(image03);
         vmDto.setImage04(image04);
         res = repository.updateMakeup_System02(vmDto);
      }
      
      String msg = res>0 ? "수정이 완료되었습니다." : "수정실패";
      mmap.addAttribute("msg", msg);
      
      int cntRecord = repository.VenderMSelectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<Object> listc = repository.VenderMSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vender_system_makeup", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      
      return mav;
   }
}


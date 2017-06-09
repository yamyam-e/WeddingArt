package spring.mvc.wedding;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import spring.mvc.wedding.dto.SaleDTO;
import spring.mvc.wedding.dto.giftDTO;
import spring.mvc.wedding.dto.gift_cartDTO;
import spring.mvc.wedding.module.FileWorks;
import spring.mvc.wedding.repository.giftRepository;

@Controller
public class giftController {
   
   @Autowired
   private giftRepository repository;
   
   @Autowired
   private FileWorks fileWorks;

   @RequestMapping("gift_Food")
   public ModelAndView foodView() {
      
      String type = "Food";
      List<giftDTO> listc = repository.selectList(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_Food", listc);
      mav.setViewName("home");
      return mav;
   }
   
   @RequestMapping("gift_Kitchen")
   public ModelAndView KitchenView() {
      
      String type = "Kitchen";
      List<giftDTO> listc = repository.selectList(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_Kitchen", listc);
      mav.setViewName("home");
      return mav;
   }
   
   @RequestMapping("gift_Useful")
   public ModelAndView usefulView() {
      
      String type = "Useful";
      List<giftDTO> listc = repository.selectList(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_Useful", listc);
      mav.setViewName("home");
      return mav;

   }
   
   @RequestMapping("gift_Modal")
   public ModelAndView gift_Modal(
         @RequestParam(value="num", required=false) Integer num,
         @RequestParam(value="type", required=false) String type,
         ModelMap mmap
         ){
      
      List<giftDTO> listc = repository.selectList(type);
      mmap.addAttribute("gift_"+type, listc);
      
      giftDTO gDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gDto", gDto);
      mav.setViewName("home");
      
      return mav;
      
   }
   
   
//   가격 오름차순 보기
   @RequestMapping("gift_selectListP01")
   public ModelAndView gift_selectListP01(
         @RequestParam(value="type", required=false) String type ){
      
      List<Object>listc = repository.selectListP01(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_"+type, listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   가격 내림차순 보기
   @RequestMapping("gift_selectListP02")
   public ModelAndView gift_selectListP02(
         @RequestParam(value="type", required=false) String type ){
      
      List<Object>listc = repository.selectListP02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_"+type, listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   이름 오름차순 보기
   @RequestMapping("gift_selectListN01")
   public ModelAndView gift_selectListN01(
         @RequestParam(value="type", required=false) String type ){
      
      List<Object>listc = repository.selectListN01(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_"+type, listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   이름 내림차순 보기
   @RequestMapping("gift_selectListN02")
   public ModelAndView gift_selectListN02(
         @RequestParam(value="type", required=false) String type ){
      
      List<Object>listc = repository.selectListN02(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_"+type, listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   상품검색
   @RequestMapping("giftSearch")
   public ModelAndView giftSearch(
         @RequestParam(value="search", required=false) String search,
         @RequestParam(value="type", required=false) String type,
         ModelMap mmap){
      
      giftDTO gDto = new giftDTO();
      gDto.setType(type);
      gDto.setSearch(search);
      
      List<giftDTO> listc = repository.gift_Search(gDto);
      
      ModelAndView mav = new ModelAndView();
      if(listc.size() == 0){
         mmap.addAttribute("msg", "검색하신" + search + "가 존재하지 않습니다.");
      }
      mav.addObject("gift_"+type, listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   선물구매
   @RequestMapping(value="gift_Buy", method=RequestMethod.POST)
   public ModelAndView gift_Buy(
            HttpSession session,
            @RequestParam(value="name",required=false) String name,
            @RequestParam(value="type",required=false) String type,
            @RequestParam(value="price",required=false) Integer price,
            @RequestParam(value="buyquantity",required=false) Integer buyquantity,
            @RequestParam(value="quantity", required=false) Integer quantity,
            @RequestParam(value="num", required=false) Integer num,
            ModelMap mmap){
      
      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
      String email = dto.getEmail();
      
      Integer total = price * buyquantity;
      
      String paycheck = "";
      gift_cartDTO gcDto = new gift_cartDTO(name, email, type, buyquantity, price, total, paycheck);
      int res = repository.insert_giftCart(gcDto);
      if(res>0){
         mmap.addAttribute("msg", "장바구니에 등록되었습니다.");
      }else{
         mmap.addAttribute("msg", "실패");
      }
      
      giftDTO gDto = new giftDTO();
      gDto.setQuantity(quantity-buyquantity);
      gDto.setNum(num);
      
      res = repository.updateGift_quantity(gDto);
      
      List<giftDTO> listc = repository.selectList(type);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_"+type, listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   장바구니페이지
   @RequestMapping("gift_Cart")
   public ModelAndView gift_Cart(
         HttpSession session,
         ModelMap mmap){
      
	  ModelAndView mav = new ModelAndView();
	  
      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
      if(dto == null){
    	  mav.addObject("gift_cart", "gift_cart");
    	  mav.setViewName("home");
    	  return mav;
      }
      
      String email = dto.getEmail();
      String name = dto.getName();
      mmap.addAttribute("name", name);
      
      List<Object>listc = repository.selectListCart(email);
      
      mav.addObject("gift_cart", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   장바구니목록 삭제
   @RequestMapping("gift_cartDelete")
   public ModelAndView gift_cartDelete(
         @RequestParam(value="num", required=false) Integer num,
         ModelMap mmap,
         HttpSession session){
      
      int res = repository.delete_giftCart(num);
      if(res>0){
         mmap.addAttribute("msg", "삭제되었습니다.");
      }else{
         mmap.addAttribute("msg", "실패");
      }
      
      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
      String email = dto.getEmail();
      String name = dto.getName();
      mmap.addAttribute("name", name);
      
      List<Object>listc = repository.selectListCart(email);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_cart", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   장바구니 목록구매
   @RequestMapping("gift_CartBuy")
   public ModelAndView gift_CartBuy(
         @RequestParam(value="chkBox")Integer[] checkArr,
         ModelMap mmap,HttpSession session
      ){
      
      int res = 0;
      for(int i=0; i<checkArr.length; i++){
         System.out.println("checkArr[" + i + "] : " + checkArr[i]);
         res = repository.delete_giftCart(checkArr[i]);
      }
      if(res>0){
         mmap.addAttribute("msg", "구매가 완료되었습니다.");
      }else{
         mmap.addAttribute("msg", "실패");
      }
      
      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
      String email = dto.getEmail();
      String name = dto.getName();
      mmap.addAttribute("name", name);
      
      List<Object>listc = repository.selectListCart(email);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_cart", listc);
      mav.setViewName("home");
      
      return mav;
      
   }
   
//   결제모달띄우기
   @RequestMapping("gift_payCardModal")
   public ModelAndView gift_payCardModal(
         @RequestParam(value="num", required=false)Integer num,
         HttpSession session,
         ModelMap mmap
      ){

      System.out.println("num->" + num);
      
      LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
      String email = dto.getEmail();
      String name = dto.getName();
      mmap.addAttribute("name", name);
      
      List<Object>listc = repository.selectListCart(email);
      mmap.addAttribute("gift_cart", listc);
      
      gift_cartDTO gcDto02 = repository.selectOne_giftCart(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gcDto02", gcDto02);
      mav.setViewName("home");
      
      return mav;
   }
   
//   장바구니 결제하기
   @RequestMapping("payCard_gift")
   public ModelAndView payCard_gift(
         HttpServletRequest request,
         HttpSession session,
         ModelMap mmap
      ){
      LogDTO lDto = (LogDTO)session.getAttribute("nowLogin");
      String email = lDto.getEmail();
      Integer num = Integer.parseInt(request.getParameter("num"));
      String name = request.getParameter("name");
      Integer payment = Integer.parseInt(request.getParameter("payment"));
      Integer quantity = Integer.parseInt(request.getParameter("quantity"));
      String category = request.getParameter("category");
      String paycheck = "ok";
      
      SaleDTO sDto = new SaleDTO(name, email, payment, quantity, category);
      int res = repository.insert_sale(sDto);
      if(res>0){
         mmap.addAttribute("msg", "결제가 완료되었습니다.");
      }else{
         mmap.addAttribute("msg", "실패");
      }
      
      name = lDto.getName();
      mmap.addAttribute("name", name);
      
      gift_cartDTO gcDto = new gift_cartDTO();
      gcDto.setNum(num);
      gcDto.setPaycheck(paycheck);
      res = repository.updateGift_Cart(gcDto);
      
      List<Object>listc = repository.selectListCart(email);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gift_cart", listc);
      mav.setViewName("home");
      
      return mav;
   }
   
//   gift 관리
   @RequestMapping("gift_System")
   public ModelAndView gift_System(
         PageDTO pDto,
         ModelMap mmap
      ){
      
      int cntRecord = repository.GiftselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<giftDTO> listc = repository.GiftSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      
      mav.addObject("gift_system", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      return mav;
   }
   
//   gift_system 수정모달창
   @RequestMapping("gift_SystemModModal")
   public ModelAndView gift_SystemModModal(
         @RequestParam(value="num", required=false) Integer num,
         PageDTO pDto,
         ModelMap mmap
      ){
      
      int cntRecord = repository.GiftselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<giftDTO> listc = repository.GiftSelectPageView(pDto);
      mmap.addAttribute("gift_system", listc);
      mmap.addAttribute("pageDto", pDto);
      
      giftDTO gDto = repository.selectOne(num);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("gDtoModal", gDto);
      mav.setViewName("home");
      
      return mav;
   }
   
//   gift_system 수정하기
   @RequestMapping("gift_systemModify")
   public ModelAndView gift_systemModify(
         MultipartHttpServletRequest mulRequest,
         ModelMap mmap,
         PageDTO pDto) throws Exception{
      int num = Integer.parseInt(mulRequest.getParameter("num"));
      String name = mulRequest.getParameter("name");
      int price = Integer.parseInt(mulRequest.getParameter("price"));
      String content = mulRequest.getParameter("content");
      int quantity = Integer.parseInt(mulRequest.getParameter("quantity"));
      String type = mulRequest.getParameter("type");
      int res = 0;
      
      giftDTO gDto = new giftDTO(num, name, price, content, type, quantity);
      
      MultipartFile upfile = mulRequest.getFile("upfile");
      String sysname = fileWorks.uploadAndGetSysName(upfile);
      System.out.println("sysname : " + sysname);
      if(sysname == null){
         res = repository.updateGift_System01(gDto);
         
      }else{
         gDto.setSysname(sysname);
         gDto.setOrgname(upfile.getOriginalFilename());
         res = repository.updateGift_System02(gDto);
      }
      
      String msg = res>0 ? "수정이 완료되었습니다." : "수정실패";
      mmap.addAttribute("msg", msg);
      
      int cntRecord = repository.GiftselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<giftDTO> listc = repository.GiftSelectPageView(pDto);
      
      ModelAndView mav = new ModelAndView();
      
      mav.addObject("gift_system", listc);
      mmap.addAttribute("pageDto", pDto);
      mav.setViewName("home");
      return mav;
   }

//   gift_system 상품검색
   @RequestMapping("gift_system_Search")
   public ModelAndView gift_system_Search(
         @RequestParam(value="search", required=false) String search,
         ModelMap mmap,
         PageDTO pDto
      ){
      giftDTO gDto = new giftDTO();
      gDto.setSearch(search);
      
      ModelAndView mav = new ModelAndView();
      
      int cntRecord = repository.GiftselectListcnt();
      pDto.pageWorks(cntRecord);
      
      List<giftDTO> listc = repository.gift_Search02(gDto);
      if(listc.size() == 0){
         mmap.addAttribute("msg", "검색하신" + search + "가 존재하지 않습니다.");
      }
      
      mav.addObject("gift_system", listc);
      mmap.addAttribute("pageDto", null);
      mav.setViewName("home");
      return mav;
   }
   
   @RequestMapping("checkArrSender")
   public ModelAndView checkArrSender(
		   						@RequestParam("chkBox") Integer[] chkBox, gift_cartDTO dto,
		   						ModelMap mmap) {
	   
	   ArrayList<gift_cartDTO> listc = new ArrayList<gift_cartDTO>();
	   int total = 0;
	   
	   for(int i=0; i<chkBox.length; i++){
		   
		   int num = chkBox[i];
		   
		   dto = repository.selectOne_giftCart(num);
		   
		   total += dto.getTotal();
		   listc.add(dto);
	   }
	   
	   mmap.addAttribute("payTotal", total);
	   
	   ModelAndView mav = new ModelAndView();
	   mav.addObject("checkArrSender", listc);
	   mav.setViewName("home");
	   return mav;
   }
   
   
   
   @RequestMapping("qna_Board")
   public void qna_Board() {}
   
   @RequestMapping("qna_Board_Write")
   public void qna_Board_Write() {}

   
}
package spring.mvc.wedding;

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

import spring.mvc.wedding.dto.FriendPaidDTO;
import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.RegistryCartDTO;
import spring.mvc.wedding.dto.RegistryProductDTO;
import spring.mvc.wedding.dto.SaleDTO;
import spring.mvc.wedding.dto.SavedPointDTO;
import spring.mvc.wedding.module.FileWorks;
import spring.mvc.wedding.repository.LogRepository;
import spring.mvc.wedding.repository.RegistryProductRepository;

@Controller
public class RegistryProductController {
	
	@Autowired
	private RegistryProductRepository repository;
	
	@Autowired
	private LogRepository logRepository;
	
	@Autowired
	private FileWorks fileWorks;
	
	@RequestMapping("regLifeElectronic")
	public ModelAndView regLifeElectronic(ModelMap mmap){
		System.out.println("regLifeElectronic controller....working");
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory("생활가전");
		mmap.addAttribute("regLifeElectronic", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regDinningElectronic")
	public ModelAndView regDinningElectronic(ModelMap mmap){
		System.out.println("regDinningElectronic controller....working");
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory("주방가전");
		mmap.addAttribute("regDinningElectronic", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regBeautyElectronic")
	public ModelAndView regBeautyElectronic(ModelMap mmap){
		System.out.println("regBeautyElectronic controller....working");
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory("뷰티가전");
		System.out.println(listc.toString());
		mmap.addAttribute("regBeautyElectronic", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regSmartElectronic")
	public ModelAndView regSmartElectronic(ModelMap mmap){
		System.out.println("regSmartElectronic controller....working");
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory("스마트가전");
		mmap.addAttribute("regSmartElectronic", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regGameElectronic")
	public ModelAndView regGameElectronic(ModelMap mmap){
		System.out.println("regGameElectronic controller.....working");
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory("게임가전");
		mmap.addAttribute("regGameElectronic", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regDinningTool")
	public ModelAndView regDinningTool(ModelMap mmap){
		System.out.println("regDinningTool controller.....working");
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory("주방기구");
		mmap.addAttribute("regDinningTool", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regDinningFurniture")
	public ModelAndView dinningFurniture(ModelMap mmap){
		System.out.println("regDinningFurniture controller.....working");
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory("주방가구");
		mmap.addAttribute("regDinningFurniture", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}

	// 레지스트리 상품 모달
	@RequestMapping("regProductModal")
	public ModelAndView regProductModal(
        @RequestParam(value="num", required=false) Integer num,
        @RequestParam(value="category", required=false) String category,
        ModelMap mmap
        ){
		System.out.println("regProductModal controller......workding");
		
		List<RegistryProductDTO> listc = repository.regSelectProductByCategory(category);
		mmap.addAttribute(viewPage(category), listc);
      
		RegistryProductDTO regDTO = repository.regSelectOneProduct(num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("regDTO", regDTO);
		mav.setViewName("home");
      
		return mav;
	}
	// 가격오름차순 보기
	@RequestMapping("regProductOrderByPriceASC")
	public ModelAndView regProductOrderByPriceASC(
			@RequestParam(value="category", required=false) String category){
		System.out.println("regProductOrderByPriceASC controller.....working");
		
		List<Object>listc = repository.regProductOrderByPriceASC(category);
		ModelAndView mav = new ModelAndView("home");
		mav.addObject(viewPage(category),	listc);
		return mav;
	}
	
	// 가격내림차순 보기
	@RequestMapping("regProductOrderByPriceDESC")
	public ModelAndView regProductOrderByPriceDESC(
			@RequestParam(value="category", required=false) String category){
		System.out.println("regProductOrderByPriceDESC controller.....working");
		
		List<Object>listc = repository.regProductOrderByPriceDESC(category);
		ModelAndView mav = new ModelAndView("home");
		mav.addObject(viewPage(category),	listc);
		return mav;
	}
	
	// 이름오름차순 보기
	@RequestMapping("regProductOrderByNameASC")
	public ModelAndView regProductOrderByNameASC(
			@RequestParam(value="category", required=false) String category){
		System.out.println("regProductOrderByNameASC.....working");
		
		List<Object>listc = repository.regProductOrderByNameASC(category);
		ModelAndView mav = new ModelAndView("home");
		mav.addObject(viewPage(category), listc);
		return mav;
	}
	
	// 이름내림차순 보기
	@RequestMapping("regProductOrderByNameDESC")
	public ModelAndView regProductOrderByNameDESC(
			@RequestParam(value="category", required=false) String category){
		System.out.println("regProductOrderByNameDESC.....working");
		
		List<Object>listc = repository.regProductOrderByNameDESC(category);
		ModelAndView mav = new ModelAndView("home");
		mav.addObject(viewPage(category), listc);
		return mav;
	}
	
	// 상품검색
	@RequestMapping("regProductSearch")
	public ModelAndView regProductSearch(
			 @RequestParam(value="search", required=false) String search,
		     @RequestParam(value="category", required=false) String category,
		     ModelMap mmap){
		System.out.println("regProductSearch controller.....working");
		
		RegistryProductDTO regDTO = new RegistryProductDTO();
		regDTO.setCategory(category);
		regDTO.setSearch(search);
		
		List<RegistryProductDTO> listc = repository.regProductSearch(regDTO);
		
		ModelAndView mav = new ModelAndView("home");
		if(listc.size() == 0){
	        mmap.addAttribute("msg", "검색하신" + search + "가 존재하지 않습니다.");
	    }
		mav.addObject(viewPage(category), listc);
		return mav;
	}
	
	@RequestMapping("regProductSearchManager")
	public ModelAndView regProductSearchManager(
			 @RequestParam(value="search", required=false) String search,
		     ModelMap mmap){
		System.out.println("regProductSearchManager controller.....working");
		System.out.println(search);
		RegistryProductDTO regDTO = new RegistryProductDTO();
		regDTO.setSearch(search);
		
		List<RegistryProductDTO> listc = repository.regProductSearchManager(regDTO);
		
		ModelAndView mav = new ModelAndView("home");
		if(listc.size() == 0){
	        mmap.addAttribute("msg", "검색하신" + search + "가 존재하지 않습니다.");
	    }
		mav.addObject("regManagerView", listc);
		return mav;
	}
	// 상품등록
	@RequestMapping(value="regInsertOneCart", method=RequestMethod.POST)
	public ModelAndView regInsertOneCart(
			HttpSession session,
			@RequestParam(value="name",required=false) String name,
			@RequestParam(value="category",required=false) String category,
			@RequestParam(value="price",required=false) Integer price,
			@RequestParam(value="buyquantity",required=false) Integer buyquantity,
			@RequestParam(value="quantity", required=false) Integer quantity,
			@RequestParam(value="num", required=false) Integer num,
			ModelMap mmap){
		System.out.println("regInsertOneCart controller.....working");
		
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		Integer total = price * buyquantity;
		
		String paycheck = "";
	    RegistryCartDTO regcDTO = new RegistryCartDTO(name, email, category, buyquantity, price, total, paycheck);
	    int res = repository.regInsertOneCart(regcDTO);
	    if(res>0){
	       mmap.addAttribute("msg", "레지스트리 목록에 등록되었습니다.");
	    }else{
	       mmap.addAttribute("msg", "실패");
	    }
	    
	    RegistryProductDTO regDTO = new RegistryProductDTO();
	    regDTO.setQuantity(quantity-buyquantity);
	    regDTO.setNum(num);
	    
	    res = repository.regUpdateQuantity(regDTO);
	     
	    List<RegistryProductDTO> listc = repository.regSelectProductByCategory(category);
		
		ModelAndView mav = new ModelAndView("home");
		mav.addObject(viewPage(category), listc);
		return mav;
	}
	
	// 레지스트리 카트
	@RequestMapping("regSelectListCart")
	public ModelAndView regSelectListCart(
			HttpSession session, 
			ModelMap mmap
			){
		System.out.println("regSelectListCart controller.....working");
		ModelAndView mav = new ModelAndView("home");
		
		LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
	    if(dto == null){
	    	mav.addObject("regSelectListCart", "regSelectListCart");
	   	  	return mav;
	    }
	     
	    String email = dto.getEmail();
	    String name = dto.getName();
	    mmap.addAttribute("name", name);
	   
	    SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
	    if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
	    
	    List<RegistryCartDTO>listc = repository.regSelectListCart(email);

	    mav.addObject("regSelectListCart", listc);
		return mav;
	}
	
	//레지스트리목록 삭제
	@RequestMapping("regDeleteCart")
	public ModelAndView regDeleteCart(
			@RequestParam(value="num", required=false) Integer num,
			ModelMap mmap,
			HttpSession session
			){
		System.out.println("regDeleteCart controller.....working");
		
		int res = repository.regDeleteCart(num);
	    if(res>0){
	       mmap.addAttribute("msg", "삭제되었습니다.");
	    }else{
	       mmap.addAttribute("msg", "실패");
	    }
		
	    LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
	    String email = dto.getEmail();
	    String name = dto.getName();
	    mmap.addAttribute("name", name);
	    
	    List<RegistryCartDTO>listc = repository.regSelectListCart(email);
	    
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("regSelectListCart", listc);
		SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
	    if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
		return mav;
	}
	
	// 레지스트리 목록구매
	@RequestMapping("regBuyCart")
	public ModelAndView regBuyCart(
			@RequestParam(value="num", required=false) Integer num,
			ModelMap mmap, 
			HttpSession session
			){
		System.out.println("regBuyCart controller.....working");
		
		int res = 0;
	    res = repository.regDeleteCart(num);
	    if(res>0){
	       mmap.addAttribute("msg", "구매가 완료되었습니다.");
	    }else{
	       mmap.addAttribute("msg", "실패");
	    }
		
	    LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
	    String email = dto.getEmail();
	    String name = dto.getName();
	    mmap.addAttribute("name", name);
	    SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
	    if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
	    mmap.addAttribute("totalPoint", savedDTO.getPoint());
	     
	    List<RegistryCartDTO>listc = repository.regSelectListCart(email);
	     
	    ModelAndView mav = new ModelAndView();
	    mav.addObject("regSelectListCart", listc);
	    mav.setViewName("home");
	    
		return mav;
	}
	
	// 결제 모달띄우기
	@RequestMapping("regPayCardModal")
	public ModelAndView regPayCardModal(
			@RequestParam(value="num", required=false)Integer num,
			HttpSession session,
			ModelMap mmap
			){
		System.out.println("regPayCardModal controller.....working");
		
		LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
	    String email = dto.getEmail();
	    String name = dto.getName();
	    mmap.addAttribute("name", name);
	    SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
	    if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
	    
	    List<RegistryCartDTO>listc = repository.regSelectListCart(email);
	  
	    mmap.addAttribute("regSelectListCart", listc);
	    ModelAndView mav = new ModelAndView("home");
    	RegistryCartDTO regcDTO = repository.regSelectOneCart(num);
    	mav.addObject("regcDTO", regcDTO);
		return mav;
	}
	
	@RequestMapping("regPayCardModalForFriend")
	public ModelAndView regPayCardModalForFriend(
			@RequestParam(value="num", required=false) Integer num,
			@RequestParam(value="numOfMember", required=false) Integer numOfFriend,
			ModelMap mmap
			){
		System.out.println("regPayCardModalForFriend controller.....working");
		
		List<LogDTO> dto = logRepository.selectList(numOfFriend);
		String email = dto.get(0).getEmail();
		
		List<RegistryCartDTO> listc = repository.regSelectListCart(email);
		mmap.addAttribute("findRegSelectAllCart", listc);
		mmap.addAttribute("findCoupleSign", "findCoupleSign");
		mmap.addAttribute("friendEmail", email);
		mmap.addAttribute("friendNum", numOfFriend);
		mmap.addAttribute("findCouple", dto);
		
		if(num > 0){
			RegistryCartDTO regcDTOForFriend = repository.regSelectOneCart(num);
			mmap.addAttribute("regcDTOForFriend", regcDTOForFriend);
			mmap.addAttribute("numOfMemberForOne", numOfFriend);
		} else {
			mmap.addAttribute("numOfMember", numOfFriend);
		}
		
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regPayCardModalSome")
	public ModelAndView regPayCardModalSome(
			HttpSession session,
			ModelMap mmap
			){
		System.out.println("regPayCardModalSome controller.....working");
		
		LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
	    String email = dto.getEmail();
	    String name = dto.getName();
	    mmap.addAttribute("name", name);
	    SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
	    if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
	    
	    List<RegistryCartDTO>listc = repository.regSelectListCart(email);
	  
	    mmap.addAttribute("regSelectListCart", listc);
	    ModelAndView mav = new ModelAndView("home");
    	mav.addObject("regcDTOSome", "");
		return mav;
	}
	
	// 레지스트리 상품 결제하기
	@RequestMapping("regPayCard")
	public ModelAndView regPayCard(
			HttpServletRequest request,
			HttpSession session,
			ModelMap mmap
			){
		System.out.println("regPayCard controller.....working");
		
		String payStyle = request.getParameter("payStyle");
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		String name = request.getParameter("cardHolder");
		FriendPaidDTO fpaidDTO = null;
		
		if(payStyle.equals("one")){
			
			Integer num = Integer.parseInt(request.getParameter("num"));
		    Integer payment = Integer.parseInt(request.getParameter("payment"));
		    Integer quantity = Integer.parseInt(request.getParameter("quantity"));
		    String category = request.getParameter("category");
		    String paycheck = "ok";
		    
		    fpaidDTO = new FriendPaidDTO(email, name, payment);
		    repository.insertFriendPaid(fpaidDTO);
		    
		    SaleDTO sDTO = new SaleDTO(name, email, payment, quantity, category);
		    int res = repository.regInsertSale(sDTO);
		    if(res>0){
		       mmap.addAttribute("msg", "결제가 완료되었습니다.");
		    }else{
		       mmap.addAttribute("msg", "실패");
		    }
			
		    name = ((LogDTO)session.getAttribute("nowLogin")).getName();
		    mmap.addAttribute("name", name);
		     
		    RegistryCartDTO regcDTO = new RegistryCartDTO();
		    regcDTO.setNum(num);
		    regcDTO.setPaycheck(paycheck);
		    res = repository.regUpdateCart(regcDTO);
		     
		} else if(payStyle.equals("some")){
			
			String payment = request.getParameter("payment");
			payment = payment.replaceAll(",", "");
			Integer point = Integer.parseInt(payment);
			SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
			int res = 0;
			if(savedDTO == null){
				savedDTO = new SavedPointDTO(email, point);
				res = repository.insertSavedPoint(savedDTO);
			} else {
				int nowPoint = savedDTO.getPoint() + point;
				savedDTO.setPoint(nowPoint);
				res = repository.updateSavePoint(savedDTO);
			}
			
			fpaidDTO = new FriendPaidDTO(email, name, point);
			System.out.println(fpaidDTO.toString());
			repository.insertFriendPaid(fpaidDTO);
			name = ((LogDTO)session.getAttribute("nowLogin")).getName();
		    mmap.addAttribute("name", name);
			
			if(res>0){
				mmap.addAttribute("msg", name + " 님에 " + point + " 포인트가 적립 되었습니다.");
			} else {
				mmap.addAttribute("msg", "실패");
			}
		}
		
		List<RegistryCartDTO>listc = repository.regSelectListCart(email);
		
		ModelAndView mav = new ModelAndView("home");
		SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
		if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
		mav.addObject("regSelectListCart", listc);
		
		return mav;
	}
	
	@RequestMapping("regPayCardForFriend")
	public ModelAndView regPayCardForFriend(
			HttpServletRequest request,
			ModelMap mmap
			){
		System.out.println("regPayCardForFriend.....working");
		
		String payStyle = request.getParameter("payStyle");
		Integer numOfMember =Integer.parseInt(request.getParameter("numOfMember"));
		List<LogDTO> dto = logRepository.selectList(numOfMember);
		String email = dto.get(0).getEmail();
		String name = dto.get(0).getName();
		String nameFriend = request.getParameter("cardHolder");
		FriendPaidDTO fpaidDTO = null;
		
		if(payStyle.equals("one")){
			
			Integer num = Integer.parseInt(request.getParameter("num"));
		    Integer payment = Integer.parseInt(request.getParameter("payment"));
		    Integer quantity = Integer.parseInt(request.getParameter("quantity"));
		    String category = request.getParameter("category");
		    String paycheck = "ok";
		    
		    fpaidDTO = new FriendPaidDTO(email, nameFriend, payment);
		    repository.insertFriendPaid(fpaidDTO);
		    
		    SaleDTO sDTO = new SaleDTO(name, email, payment, quantity, category);
		    int res = repository.regInsertSale(sDTO);
		    if(res>0){
		       mmap.addAttribute("msg", "결제가 완료되었습니다.");
		    }else{
		       mmap.addAttribute("msg", "실패");
		    }
			
		    RegistryCartDTO regcDTO = new RegistryCartDTO();
		    regcDTO.setNum(num);
		    regcDTO.setPaycheck(paycheck);
		    res = repository.regUpdateCart(regcDTO);
		     
		} else if(payStyle.equals("some")){
			
			String payment = request.getParameter("payment");
			payment = payment.replaceAll(",", "");
			Integer point = Integer.parseInt(payment);
			SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
			int res = 0;
			if(savedDTO == null){
				savedDTO = new SavedPointDTO(email, point);
				res = repository.insertSavedPoint(savedDTO);
			} else {
				int nowPoint = savedDTO.getPoint() + point;
				savedDTO.setPoint(nowPoint);
				res = repository.updateSavePoint(savedDTO);
			}
			
			fpaidDTO = new FriendPaidDTO(email, nameFriend, point);
			repository.insertFriendPaid(fpaidDTO);
			
			if(res>0){
				mmap.addAttribute("msg", name + " 님에게 " + point + " 포인트가 적립 되었습니다.");
			} else {
				mmap.addAttribute("msg", "실패");
			}
		}
		
		List<RegistryCartDTO> listc = repository.regSelectListCart(email);
		mmap.addAttribute("findRegSelectAllCart", listc);
		mmap.addAttribute("findCoupleSign", "findCoupleSign");
		mmap.addAttribute("friendEmail", email);
		mmap.addAttribute("friendNum", numOfMember);
		mmap.addAttribute("findCouple", dto);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	// 포인트 모달 띄우기
	@RequestMapping("regPayPointModalOne")
	public ModelAndView regPayPointModalOne(
			@RequestParam(value="num", required=false)Integer num,
			HttpSession session,
			ModelMap mmap
			){
		
		System.out.println("regPayPointModal controller.....working");
		
		LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
	    String email = dto.getEmail();
	    String name = dto.getName();
	    mmap.addAttribute("name", name);
	    SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
	    if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
	    
	    List<RegistryCartDTO>listc = repository.regSelectListCart(email);
	  
	    mmap.addAttribute("regSelectListCart", listc);
	    ModelAndView mav = new ModelAndView("home");
    	RegistryCartDTO regpDTO = repository.regSelectOneCart(num);
    	
    	if(regpDTO.getPrice()>savedDTO.getPoint()){
    		mmap.addAttribute("msg", "포인트가 부족 합니다.");
    		regpDTO = null;
    	}
    	
    	mav.addObject("regpDTO", regpDTO);
		return mav;
	}
	
	// 포인트 결제
	@RequestMapping("regPayPoint")
	public ModelAndView regPayPoint(
			HttpServletRequest request,
			HttpSession session,
			ModelMap mmap
			){
		System.out.println("regPayPoint controller.....working");
		
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		String name = request.getParameter("name");
		Integer num = Integer.parseInt(request.getParameter("num"));
	    Integer payment = Integer.parseInt(request.getParameter("payment"));
	    Integer quantity = Integer.parseInt(request.getParameter("quantity"));
	    String category = request.getParameter("category");
	    String paycheck = "ok";
	    
	    SaleDTO sDTO = new SaleDTO(name, email, payment, quantity, category);
	    int res = repository.regInsertSale(sDTO);
	   
	    SavedPointDTO savedDTO = repository.selectOneSavedPoint(email);
	    if(savedDTO == null){
	    	mmap.addAttribute("totalPoint", "0");
	    } else {
	    	mmap.addAttribute("totalPoint", savedDTO.getPoint());
	    }
	    
	    if(res>0){
	       mmap.addAttribute("msg", "결제가 완료되었습니다.");
	       Integer nowPoint = savedDTO.getPoint();
	       savedDTO.setPoint(nowPoint - payment);
	       repository.updateSavePoint(savedDTO);
	    }else{
	       mmap.addAttribute("msg", "실패");
	    }
		
	    name = ((LogDTO)session.getAttribute("nowLogin")).getName();
	    mmap.addAttribute("name", name);
	    mmap.addAttribute("totalPoint", savedDTO.getPoint());
	     
	    RegistryCartDTO regcDTO = new RegistryCartDTO();
	    regcDTO.setNum(num);
	    regcDTO.setPaycheck(paycheck);
	    res = repository.regUpdateCart(regcDTO);
	    
	    List<RegistryCartDTO>listc = repository.regSelectListCart(email);
		
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("regSelectListCart", listc);
		return mav;
	}
	
	// 레지스트리 관리
	@RequestMapping("regManagerView")
	public ModelAndView regManagerView(
			PageDTO pDTO, 
			ModelMap mmap
			){
		
		System.out.println("regManagerView controller.....working");
		
	    int cntRecord = repository.regSelectListProductCnt();
	    pDTO.pageWorks(cntRecord);
	    
	    List<RegistryProductDTO> listc = repository.regProductPageView(pDTO);
		
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("regManagerView", listc);
	    mmap.addAttribute("pageDTO", pDTO);
		return mav;
	}
	
	// 레지스트리 새상품 추가 모달창
	@RequestMapping("regManagerModalInsert")
	public ModelAndView regManagerModalInsert(
			PageDTO pDTO,
			ModelMap mmap){
		
		System.out.println("regManagerModalInsert controller.....working");
		
		int cntRecord = repository.regSelectListProductCnt();
	    pDTO.pageWorks(cntRecord);
	     
	    List<RegistryProductDTO> listc = repository.regProductPageView(pDTO);
	    
	    mmap.addAttribute("regManagerView", listc);
	    mmap.addAttribute("pageDTO", pDTO);
	    
	    ModelAndView mav = new ModelAndView("home");
	    mav.addObject("regDTOModalInsert", "newProduct");
		return mav;
	}
	
	//레지스트리 상품추가
	@RequestMapping(value="regInsertOneProduct", method=RequestMethod.POST)
	public ModelAndView regInsertOneProduct(
			ModelMap mmap, 
			MultipartHttpServletRequest mulRequest, 
			PageDTO pDTO
			){
		
		System.out.println("regInsertOneProduct controller.....working");
		
		String name = mulRequest.getParameter("name");
		int price = Integer.parseInt(mulRequest.getParameter("price"));
		String content = mulRequest.getParameter("content");
		int quantity = Integer.parseInt(mulRequest.getParameter("quantity"));
		String category = mulRequest.getParameter("category");
		
		MultipartFile upfile = mulRequest.getFile("upfile");
		String sysname = fileWorks.uploadAndGetSysName(upfile);
		String orgname = upfile.getOriginalFilename();
		
		RegistryProductDTO dto = new RegistryProductDTO(name, price, content, orgname, sysname, category, quantity);
		
		int res = repository.regInsertOneProduct(dto);
		String msg = null;
		if(res>0){
			msg = "저장 성공";
		} else {
			msg = "저장 실패";
		}
		
		int cntRecord = repository.regSelectListProductCnt();
		pDTO.pageWorks(cntRecord);
		
		List<RegistryProductDTO> listc = repository.regProductPageView(pDTO);
		
		mmap.addAttribute("regManagerView", listc);
		mmap.addAttribute("pageDTO", pDTO);
		mmap.addAttribute("msg", msg);
		ModelAndView mav = new ModelAndView("home");
		
		return mav;
	}
	
	// 레지스트리 수정모달창
	@RequestMapping("regManagerModalMod")
	public ModelAndView regManagerModalMod(
			@RequestParam(value="num", required=false) Integer num,
			PageDTO pDTO,
			ModelMap mmap){
		
		System.out.println("regManagerModalMod controller.....working");
		
		int cntRecord = repository.regSelectListProductCnt();
	    pDTO.pageWorks(cntRecord);
	     
	    List<RegistryProductDTO> listc = repository.regProductPageView(pDTO);
	    
	    mmap.addAttribute("regManagerView", listc);
	    mmap.addAttribute("pageDTO", pDTO);
	    
	    RegistryProductDTO regDTO = repository.regSelectOneProduct(num);
	     
	    ModelAndView mav = new ModelAndView("home");
	    mav.addObject("regDTOModalMod", regDTO);
		return mav;
	}
  
	@RequestMapping("regManagerUpdate")
	public ModelAndView regManagerUpdate(
			MultipartHttpServletRequest mulRequest,
			ModelMap mmap,
			PageDTO pDTO){
		
		System.out.println("regManagerUpdate controller.....working");
		 
		int num = Integer.parseInt(mulRequest.getParameter("num"));
	    String name = mulRequest.getParameter("name");
	    int price = Integer.parseInt(mulRequest.getParameter("price"));
	    String content = mulRequest.getParameter("content");
	    int quantity = Integer.parseInt(mulRequest.getParameter("quantity"));
	    String category = mulRequest.getParameter("category");
	    int res = 0;
	    
	    RegistryProductDTO regDTO = new RegistryProductDTO(num, name, price, content, category, quantity);
	    
	    MultipartFile upfile = mulRequest.getFile("upfile");
	    String sysname = fileWorks.uploadAndGetSysName(upfile);
	    System.out.println("sysname : " + sysname);
	    if(sysname == null){
	    	res = repository.regUpdateProduct(regDTO);
	        
	    }else{
	    	regDTO.setSysname(sysname);
	    	regDTO.setOrgname(upfile.getOriginalFilename());
	    	res = repository.regUpdateProductWithPhoto(regDTO);
	    }
	    
	    String msg = res>0 ? "수정이 완료되었습니다." : "수정실패";
	    mmap.addAttribute("msg", msg);
	     
	    int cntRecord = repository.regSelectListProductCnt();
	    pDTO.pageWorks(cntRecord);
	     
	    List<RegistryProductDTO> listc = repository.regProductPageView(pDTO);
		
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("regManagerView", listc);
	    mmap.addAttribute("pageDTO", pDTO);
		return mav;
	}
	
	// 레지스트리 삭제 모달창
	@RequestMapping("regManagerModalDelete")
	public ModelAndView regManagerModalDelete(
			@RequestParam(value="num", required=false) Integer num,
			PageDTO pDTO,
			ModelMap mmap){
		
		System.out.println("regManagerModalDelete controller.....working");
		
		int cntRecord = repository.regSelectListProductCnt();
	    pDTO.pageWorks(cntRecord);
	     
	    List<RegistryProductDTO> listc = repository.regProductPageView(pDTO);
	    
	    mmap.addAttribute("regManagerView", listc);
	    mmap.addAttribute("pageDTO", pDTO);
	    
	    RegistryProductDTO regDTO = repository.regSelectOneProduct(num);
	     
	    ModelAndView mav = new ModelAndView("home");
	    mav.addObject("regDTOModalDelete", regDTO);
		return mav;
	}
	
	@RequestMapping("regDeleteOneProduct")
	public ModelAndView regDeleteOneProduct(
			@RequestParam(value="num", required=false) Integer num,
			PageDTO pDTO,
			ModelMap mmap
			){
		
		System.out.println("regDeleteOneProduct controller.....working");
		
		int res = repository.regDeleteOneProduct(num);
		String msg = null;
		if(res>0){
			msg = "삭제 성공";
		} else {
			msg = "삭제 실패";
		}
		
		int cntRecord = repository.regSelectListProductCnt();
		pDTO.pageWorks(cntRecord);
		List<RegistryProductDTO> listc = repository.regProductPageView(pDTO);
		mmap.addAttribute("regManagerView", listc);
		mmap.addAttribute("pageDTO", pDTO);
		mmap.addAttribute("msg", msg);
		ModelAndView mav = new ModelAndView("home");
		
		return mav;
	}
	
	private String viewPage(String category){
		
		String viewPage = null;
		
		if(category.equals("생활가전")){
			viewPage = "regLifeElectronic";
		} else if(category.equals("주방가전")){
			viewPage = "regDinningElectronic";
		} else if(category.equals("뷰티가전")){
			viewPage = "regBeautyElectronic";
		} else if(category.equals("스마트가전")){
			viewPage = "regSmartElectronic";
		} else if(category.equals("게임가전")){
			viewPage = "regGameElectronic";
		} else if(category.equals("주방기구")){
			viewPage = "regDinningTool";
		} else if(category.equals("주방가구")){
			viewPage = "regDinningFurniture";
		}
		return viewPage;
	}
	
//	private int getTotalPoint(String email){
//		int totalPoint = 0;
//		List<SavedPointDTO> listc = repository.selectListSavedPoint(email);
//		if(listc != null){
//			for(SavedPointDTO each : listc){
//				totalPoint += each.getPoint();
//			}
//		}
//		return totalPoint;
//	}
	
}
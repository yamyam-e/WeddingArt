package spring.mvc.wedding;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.FAQDTO;
import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.SaleDTO;
import spring.mvc.wedding.module.FileWorks;
import spring.mvc.wedding.repository.LogRepository;
import spring.mvc.wedding.service.LogService;

@Controller
public class LogController {

	@Autowired
	private LogRepository repository;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private FileWorks fileWorks;
	
	@Autowired
	private LogService service;
	
	private String msg;
	
	@RequestMapping(value="signUp", method=RequestMethod.POST)
	public ModelAndView signUp(LogDTO dto) {
		
		int res = repository.insertOne(dto);
		
		if(res > 0){
			sendMail(dto);
			msg = "회원님의 이메일로 인증메일을 전송하였습니다.";
		}else{
			msg = "저장 실패";
		}
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", msg);
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping(value="afterSignUp", method=RequestMethod.POST)
	public ModelAndView afterSignUp(MultipartHttpServletRequest mulRequest) {
		
		int num = Integer.parseInt(mulRequest.getParameter("num"));
		String name = mulRequest.getParameter("name");
		String address = mulRequest.getParameter("address");
		String pNum = mulRequest.getParameter("pNum");
		String weddingDay = mulRequest.getParameter("weddingDay");
		String pName = mulRequest.getParameter("pName");
		String cName = name + " ♥ " + pName;
		
		LogDTO dto = new LogDTO(num, name, cName, address, pNum, weddingDay, pName); 
		
		MultipartFile upfile = mulRequest.getFile("upfile");
		String sysName = fileWorks.uploadAndGetSysName(upfile);
		
		dto.setSysName(sysName);
		dto.setOrgName(upfile.getOriginalFilename());
		
		int res = service.update(dto);
		
		msg = res > 0 ? name + "님 weddingArt 가입을 감사드립니다." : "저장 실패";
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", msg);
		mav.setViewName("home");
		return mav;
	}
	
	public void sendMail(LogDTO dto) {
		
		dto = repository.selectOne(dto);
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setTo(dto.getEmail());
			messageHelper.setText("Wedding Art 가입을 환영합니다. 인증 부탁드립니다 => http://localhost:8080/wedding/?sign=ok&num="+dto.getNum());
			messageHelper.setFrom("WeddingArt");
			messageHelper.setSubject("WeddingArt 가입 인증");
			
			mailSender.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="logIn", method=RequestMethod.POST)
	public ModelAndView logIn(LogDTO dto,
								HttpSession session,
								HttpServletRequest request,
								ModelMap mmap)  throws Exception{
		
		LogDTO chk = null;
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		ModelAndView mav = new ModelAndView();
		
		if(email.equals("master@naver.com") && pw.equals("111")){
			chk = new LogDTO();
			chk.setEmail(email);
			chk.setPw(pw);
			
			List<SaleDTO> listc = repository.masterSaleList();
			List<FAQDTO> fListc = repository.selectFAQ();
			int masterSaleTotal = 0;
			
			if(listc != null){
				for (SaleDTO each : listc) {
					masterSaleTotal += each.getPayment();
				}
			}
			
			session.setAttribute("masterLogin", chk);
			session.setAttribute("masterFAQ", fListc);
			mmap.addAttribute("masterSaleTotal", masterSaleTotal);
			mmap.addAttribute("msg", "관리자님 환영합니다.");
			mav.addObject("chk", chk);
			
		}else{
			dto.setEmail(email);
			dto.setPw(pw);
			chk = repository.selectOne(dto);
			
			if(chk != null){
				if(chk.getcName() != null){
					dDay(chk);
					session.setAttribute("nowLogin", chk);
					mmap.addAttribute("msg", chk.getName() + "님 환영합니다.");
					mav.addObject("chk", chk);
				}else{
					mmap.addAttribute("msg", "인증이 되지 않으셨습니다.");
				}
			}else{
				mmap.addAttribute("msg", "비밀번호가 틀렸거나 가입되지 않은 회원입니다.");
			}
		}
		
		mav.setViewName("home");
		return mav;
	}
	
	public void dDay(LogDTO chk) throws Exception {
		
		SimpleDateFormat formatter = new SimpleDateFormat ("yyyyMMdd");
		Date currentTime = new Date();
		String dTime = formatter.format ( currentTime );
		
		String[]wDay = chk.getWeddingDay().split("-");
		String tempDay = wDay[0] + wDay[1] + wDay[2];
		
		Date beginDate = formatter.parse(dTime);
		Date endDate = formatter.parse(tempDay);
		
		long diff = endDate.getTime() - beginDate.getTime();
	    long diffDays = diff / (24 * 60 * 60 * 1000);
	    
	    chk.setdDay("D-" + diffDays);
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("nowLogin");
		session.removeAttribute("masterLogin");
		session.removeAttribute("masterFAQ");
		
		return "home";
	}
	
	@RequestMapping(value="modifyPw", method=RequestMethod.POST)
	public ModelAndView modifyPw(HttpSession session, @RequestParam("pw") String pw) throws Exception{
		
		LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
		String email = dto.getEmail();
		
		
		LogDTO temp = new LogDTO();
		temp.setEmail(email);
		temp.setPw(pw);
		
		ModelAndView mav = new ModelAndView();
		
		LogDTO chk = repository.selectOne(temp);
		
		if(chk == null){
			msg = "비밀번호가 틀렸습니다";
			mav.addObject("msg", msg);
			mav.setViewName("home");
		}else{
			dDay(chk);
			mav.addObject("infoSign", chk);
			mav.setViewName("home");
		}
		
		return mav;
		
	}
	
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public ModelAndView modify(MultipartHttpServletRequest mulRequest,
								ModelMap mmap
								) throws Exception {

		String email = mulRequest.getParameter("email");
		int num = Integer.parseInt(mulRequest.getParameter("num"));
		String name = mulRequest.getParameter("name");
		String address = mulRequest.getParameter("address");
		String pNum = mulRequest.getParameter("pNum");
		String weddingDay = mulRequest.getParameter("weddingDay");
		String pName = mulRequest.getParameter("pName");
		String cName = name + " ♥ " + pName;
		
		LogDTO chk = new LogDTO(num, name, cName, address, pNum, weddingDay, pName);
		chk.setEmail(email);
		dDay(chk);
		
		MultipartFile upfile = mulRequest.getFile("upfile");
		String sysName = fileWorks.uploadAndGetSysName(upfile);
		
		chk.setSysName(sysName);
		chk.setOrgName(upfile.getOriginalFilename());
		
		int res = service.update(chk);
		
		msg = res > 0 ? "변경되었습니다." : "변경 실패!";
		
		ModelAndView mav = new ModelAndView();
		
		mmap.addAttribute("msg", msg);
		
		mav.addObject("chk", chk);
		mav.setViewName("home");
		
		return mav;
	}
	
	@RequestMapping("findEmail")
	public ModelAndView findEmail(HttpServletRequest request, LogDTO dto) {
		
		String name = request.getParameter("name");
		String pNum = request.getParameter("pNum");
		
		dto.setName(name);
		dto.setpNum(pNum);
		
		String email = repository.findEmail(dto);
		
		ModelAndView mav = new ModelAndView();
		
		if(email != null){
			mav.addObject("msg", "회원님의 이메일은 " + email + "입니다.");
			mav.setViewName("home");
		}else{
			mav.addObject("msg", "입력하신 정보가 맞는지 다시한번 확인해주십시오.");
			mav.setViewName("home");
		}
		
		return mav;
	}
	
	@RequestMapping("findPw")
	public ModelAndView findPw(HttpServletRequest request, LogDTO dto) {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		dto.setName(name);
		dto.setEmail(email);
		
		String pw = repository.findPw(dto);
		
		ModelAndView mav = new ModelAndView();
		
		if(pw != null){
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				messageHelper.setTo(email);
				messageHelper.setText("회원님의 비밀번호는 " + pw + "입니다.");
				messageHelper.setFrom("WeddingArt");
				messageHelper.setSubject("WeddingArt 비밀번호");
				
				mailSender.send(message);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			mav.addObject("msg", "회원님의 이메일로 비밀번호를 발송하였습니다.");
			mav.setViewName("home");
		}else{
			mav.addObject("msg", "입력하신 정보가 맞는지 다시한번 확인해주십시오.");
			mav.setViewName("home");
		}
		
		return mav;
	}
	
	@RequestMapping("masterPage")
	public ModelAndView masterPage(PageDTO pageDto, PageDTO FAQPageDto, ModelMap mmap) {
		
		int cntRecord = repository.LogPageCnt();
		
		pageDto.pageWorks(cntRecord);
		
		List<LogDTO> listc = repository.LogPageView(pageDto);

		ModelAndView mav = new ModelAndView();
		mmap.addAttribute("masterPage", "masterPage");
		mmap.addAttribute("masterLogListc", listc);
		mav.addObject("pageDto", pageDto);
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping("FAQSend")
	public String FAQSend(HttpServletRequest request, ModelMap mmap) {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pNum = request.getParameter("pNum");
		String message = request.getParameter("message");
		
		FAQDTO dto = new FAQDTO(name, email, pNum, message);
		
		int res = repository.insertFAQMessage(dto);
		
		if(res > 0){
			mmap.addAttribute("FAQSend", "FAQSend");
			
		}else{
			mmap.addAttribute("msg", "무언가의 방해로 인해 실패?....ㅋ");
		}
		
		return "home";
	}
}

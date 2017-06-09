package spring.mvc.wedding;

import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.LogDTO;
import spring.mvc.wedding.dto.RegistryFriendsDTO;
import spring.mvc.wedding.repository.RegistryFriendsRepository;

@Controller
public class RegistryFriendsController {

	@Autowired
	private RegistryFriendsRepository repository;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping("regSendMailtoAllFriends")
	public ModelAndView regSendMailToAllFriends(
			ModelMap mmap, 
			HttpSession session
			){
		
		System.out.println("regSendMailtoAllFriends.....working");
		
		LogDTO dto = (LogDTO)session.getAttribute("nowLogin");
		String email = dto.getEmail();
		
		List<RegistryFriendsDTO> listc = repository.selectAll(email);
		
		try {
			for(RegistryFriendsDTO each : listc){
		        MimeMessage message = mailSender.createMimeMessage();
		        MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		        messageHelper.setTo(each.getfEmail());
		        messageHelper.setText(
		        		 "안녕하세요 Wedding Art 입니다.\n\n"
		        		 + "우리 회사는 편하고 간소한 웨딩문화 정착을 선도하는 기업입니다.\n"
		        		 + dto.getName() + "&" + dto.getcName() + "님께서 돌아오는 " 
		        		 + dto.getWeddingDay() + " 에 결혼식을 하십니다.\n"
		        		 + "회원님의 결혼을 축하하는 의미로 회원님께서 원하시는 물건을 선물해 드리시면 어떨까요?\n"
		        		 + "하객분들께서는 부분결재를 통하여 선물을 해당 회원님께 드리실 수도 있습니다.\n"
		        		 + "또한 하객분 한분이 하나의 상품을 회원님께 선물해 드리실 수도 있습니다.\n"
		        		 + "아래의 링크를 통하여 접속하신 후 커플 찾기를 하시면 바로 회원님의 레지스트리 품목을 보실 수 있습니다.\n"
		        		 + "감사합니다.\n"
		        		 + "=> http://localhost:8080/wedding" + "\n\n");
		        messageHelper.setFrom("WeddingArt");
		        messageHelper.setSubject(dto.getName() + "님이 레지스트리 상품을 등록 하셨습니다.");
		         
		        mailSender.send(message);
			}
	    } catch (Exception e) {
	         e.printStackTrace();
	    }
		
		String names = "";
		for(int i=0; i<listc.size(); i++){
			if(i/5==0){
				names+="\n";
			}
			names += listc.get(i).getfName() + ", ";
		}
		System.out.println(names);
		
		mmap.addAttribute("regSelectAllFriends", listc);
		mmap.addAttribute("msg", names + "\n메일을 전송하였습니다.");
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	// 친구추가 모달창 띄우기
	@RequestMapping("regFriendModalInsert")
	public ModelAndView regFriendModalInsert(
			ModelMap mmap,
			HttpSession session
			){
		
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		List<RegistryFriendsDTO> listc = repository.selectAll(email);
		
		mmap.addAttribute("regSelectAllFriends", listc);
		mmap.addAttribute("newFriend", "regFriendModalInsert");
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@RequestMapping("regInsertOneFriend")
	public ModelAndView insertOne(
			@RequestParam("fName") String fName,
			@RequestParam("fEmail") String fEmail,
			@RequestParam("fPhone") String fPhone,
			ModelMap mmap,
			HttpSession session
			){
		
		System.out.println("regInsertOneFriend.....working");
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		RegistryFriendsDTO dto = new RegistryFriendsDTO(email, fName, fEmail, fPhone);
		
		int res = repository.insertOne(dto);
		
		String msg = res > 0 ? "저장 성공" :  "저장 실패";
		
		List<RegistryFriendsDTO> listc = repository.selectAll(email);
		
		mmap.addAttribute("regSelectAllFriends", listc);
		ModelAndView mav = new ModelAndView("home");
		mmap.addAttribute("msg", msg);
		return mav;
	}
	
	@RequestMapping("regSelectAllFriends")
	public ModelAndView selectAll(
			ModelMap mmap, 
			HttpSession session
			){
		
		System.out.println("regSelectAllFriends.....working");
	
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		List<RegistryFriendsDTO> listc = repository.selectAll(email);
		
		mmap.addAttribute("regSelectAllFriends", listc);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	// 친구수정 모달창 띄우기
	@RequestMapping("regFriendModalMod")
	public ModelAndView regFriendModalMod(
			@RequestParam(value="num", required=false)Integer num,
			HttpSession session,
			ModelMap mmap
			){
		System.out.println("regFriendModalMod.....working");
		
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		List<RegistryFriendsDTO> listc = repository.selectAll(email);
		
		RegistryFriendsDTO dto = repository.selectOne(num);
		System.out.println(dto.toString());
		mmap.addAttribute("regSelectAllFriends", listc);
		mmap.addAttribute("modFriend", dto);
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	@RequestMapping("regUpdateOneFriend")
	public ModelAndView updateOne(
			@RequestParam("num") int num,
			@RequestParam("newfName") String fName,
			@RequestParam("newfEmail") String fEmail,
			@RequestParam("newfPhone") String fPhone,
			ModelMap mmap, 
			HttpSession session 
			){
		
		System.out.println("regUpdateOneFriend.....working");
		
		RegistryFriendsDTO dto = new RegistryFriendsDTO();
		dto.setNum(num);
		dto.setfName(fName);
		dto.setfEmail(fEmail);
		dto.setfPhone(fPhone);
		
		int res = repository.updateOne(dto);
		
		String msg = res > 0 ? "수정 성공" :  "수정 실패";
		
		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		List<RegistryFriendsDTO> listc = repository.selectAll(email);
		
		mmap.addAttribute("regSelectAllFriends", listc);
		ModelAndView mav = new ModelAndView("home");
		mmap.addAttribute("msg", msg);
		return mav;
	}
	
	@RequestMapping("regDeleteOneFriend")
	public ModelAndView deletOne(
			@RequestParam("num") int num, 
			ModelMap mmap, 
			HttpSession session
			){
		
		System.out.println("regDeleteOneFriend.....working");
		
		int res = repository.deleteOne(num);
		
		String msg = res > 0 ? "삭제 성공" : "삭제 실패";

		String email = ((LogDTO)session.getAttribute("nowLogin")).getEmail();
		List<RegistryFriendsDTO> listc = repository.selectAll(email);
		
		mmap.addAttribute("regSelectAllFriends", listc);
		ModelAndView mav = new ModelAndView("home");
		mmap.addAttribute("msg", msg);
		return mav;
	}
}
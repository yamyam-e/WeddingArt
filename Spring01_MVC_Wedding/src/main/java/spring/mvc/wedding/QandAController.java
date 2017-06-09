package spring.mvc.wedding;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.wedding.dto.PageDTO;
import spring.mvc.wedding.dto.QandADTO;
import spring.mvc.wedding.repository.QandARepository;

@Controller
public class QandAController {

	@Autowired
	private QandARepository repository;
	
	@RequestMapping("QandAInsertOne")
	public ModelAndView QandAInsertOne(PageDTO pageDto, QandADTO dto, ModelMap mmap) {
		
		int res = repository.QandAInsertOne(dto);
		String msg = null;
		
		if(res > 0){
			msg = "저장 완료";
			repository.QandAGroupNumUpdate(dto);
		}else{
			msg = "저장 실패";
		}
		
		mmap.addAttribute("msg", msg);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("QandAInsertOne", "QandAInsertOne");
		mav.setViewName("home");
		return mav;
	}

	@RequestMapping("QandASelectAll")
	public ModelAndView QandASelectAll(PageDTO pageDto, ModelMap mmap) {
		
		int cntRecord = repository.QandASelectPageCnt();
		
		pageDto.pageWorks(cntRecord);
		
		List<QandADTO> listc = repository.QandASelectPageView(pageDto);
		
		ModelAndView mav = new ModelAndView();
		mmap.addAttribute("QandASelectAll", listc);
		mav.addObject("pageDto", pageDto);
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping("QandAInsertReply_one")
	public String QandAInsertReply_one(HttpServletRequest request, ModelMap mmap) {
		int num = Integer.parseInt(request.getParameter("num"));
		mmap.addAttribute("QandAInsertReply_one", num);
		
		return "home";
	}
	
	@RequestMapping("QandAInsertReply")
	public ModelAndView QandAInsertReply(HttpServletRequest request, ModelMap mmap) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String contents = request.getParameter("contents");

		QandADTO dto = new QandADTO(title, writer, contents);
		dto.setNum(num);
		QandADTO repDto = repository.QandASelectOne(num);
		
		repository.QandAReplySeqUpdate(dto.getGroupNum());
		
		repDto.setTitle(dto.getTitle());
		repDto.setContents(dto.getContents());
		
		int res = repository.QandAInsertReply(repDto);
		
		String msg = res > 0 ? "저장 완료" : "저장 실패";
		
		mmap.addAttribute("QandAInsertOne", "QandAInsertReply");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("home");
		
		return mav;
	}
	
}

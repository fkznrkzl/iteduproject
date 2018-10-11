package or.kosta.mvc.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import or.kosta.mvc.dao.CBoardDAO;
import or.kosta.vo.CBoardVO;

@Controller
public class CRespController {
	@Autowired
	private CBoardDAO cboarddao;
	
	@RequestMapping(value="cbAdd", method=RequestMethod.POST)
	public ModelAndView addBoard(@RequestParam("pi") MultipartFile file, HttpServletRequest request,CBoardVO vo) {
		ModelAndView mav = new ModelAndView("cresp");
		System.out.println("파일 저장 컨트롤러를 실행합니다.");
		
		String path = request.getSession().getServletContext().getRealPath("resources/upload/") + file.getOriginalFilename();
		File f = new File(path);
		try {
			file.transferTo(f);
			System.out.println("파일 저장 값 동작완료");
			String a = path.substring(78, 132);
			vo.setPath(a);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		cboarddao.addFile(vo);
		System.out.println("디비에 값이 정상적으로 들어갔습니다.");
		System.out.println("사용자이름 ㅎ: "+vo.getUname());
		System.out.println("사용자컨텐트 : "+vo.getContent());
		System.out.println("임시 경로 : " + path);
		System.out.println("실제 경로 : " + vo.getPath());
		System.out.println("POST 방식!=====================");
		mav.addObject("resp", "success");
		return mav; 
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public ModelAndView exe(CBoardVO vo) {
		System.out.println("파일 저장 컨트롤러를 실행합니다.");
		cboarddao.addFile(vo);
		System.out.println("디비에 값이 정상적으로 들어갔습니다.");
		ModelAndView mav = new ModelAndView("redirect:/cbAdd2");
		System.out.println("리다이렉트 결과값에 연결합니다.");
		return mav;
	}
	
	@RequestMapping(value="cbAdd2")
	public ModelAndView sBoard() {
		System.out.println("hello");
		ModelAndView mav = new ModelAndView("cresp");
		mav.addObject("resp", "success");
		return mav; 
	}
	
	@RequestMapping(value="ledAdd", method=RequestMethod.POST)
	public ModelAndView addLedState(String status, HttpServletRequest req, CBoardVO vo) {
		ModelAndView mav = new ModelAndView("cresp");
		System.out.println("GET!-----------------------------------");
		// vo.setReip(req.getRemoteAddr());
		System.out.println("Reip : " + req.getRemoteAddr());
		System.out.println("Status : " + status);
		vo.setPath(status);
		mav.addObject("resp", "success");
		cboarddao.addFile(vo);
		return mav; 
	}
	
}

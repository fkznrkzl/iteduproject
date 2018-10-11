package or.kosta.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import or.kosta.dto.BikeUserLoginDTO;
import or.kosta.mvc.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	// �α���
	@RequestMapping(value="login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("test/bike_user_login");
		return mav;
	}
	
	// �α��� ó��
	@RequestMapping(value="loginCheck")
	public ModelAndView loginCheck(@ModelAttribute BikeUserLoginDTO dto, HttpSession session) {
		boolean result = memberService.loginCheck(dto, session);
		ModelAndView mav = new ModelAndView();
		
		// �α��� ����
		if(result == true) {
			mav.setViewName("test/home");
			mav.addObject("msg", "success");
			System.out.println(session.getAttribute("user_id"));
			System.out.println("����� �α��� ����");
		} else {
			mav.setViewName("test/bike_user_login");
			mav.addObject("msg", "failure");
			System.out.println("����� �α��� ����");
			return login();
		}
		return mav;
		
	}
	
	// �α׾ƿ� ó��
	@RequestMapping(value="logout")
	public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		System.out.println("����ڰ� �α׾ƿ� �߽��ϴ�.");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/home");
		mav.addObject("msg", "logout");
		return mav;
	}
}

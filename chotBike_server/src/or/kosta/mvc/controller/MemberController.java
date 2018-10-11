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
	
	// 로그인
	@RequestMapping(value="login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("test/bike_user_login");
		return mav;
	}
	
	// 로그인 처리
	@RequestMapping(value="loginCheck")
	public ModelAndView loginCheck(@ModelAttribute BikeUserLoginDTO dto, HttpSession session) {
		boolean result = memberService.loginCheck(dto, session);
		ModelAndView mav = new ModelAndView();
		
		// 로그인 성공
		if(result == true) {
			mav.setViewName("test/home");
			mav.addObject("msg", "success");
			System.out.println(session.getAttribute("user_id"));
			System.out.println("사용자 로그인 성공");
		} else {
			mav.setViewName("test/bike_user_login");
			mav.addObject("msg", "failure");
			System.out.println("사용자 로그인 실패");
			return login();
		}
		return mav;
		
	}
	
	// 로그아웃 처리
	@RequestMapping(value="logout")
	public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		System.out.println("사용자가 로그아웃 했습니다.");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/home");
		mav.addObject("msg", "logout");
		return mav;
	}
}

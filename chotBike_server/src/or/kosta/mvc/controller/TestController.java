package or.kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import or.kosta.mvc.dao.BikeUserEnterDAO;
import or.kosta.vo.BikeUserVO;

@Controller
public class TestController {
	@Autowired
	private BikeUserEnterDAO budao;
	
	@RequestMapping(value="choumpa", method=RequestMethod.GET)
	public ModelAndView addLedState(String status, HttpServletRequest req, BikeUserVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView("test/choumpa");
		vo.setUser_id((String) session.getAttribute("user_id"));
		System.out.println("admin00" + "사용자가 위험합니다.");
		return mav; 
	}
	
	@RequestMapping(value="test", method=RequestMethod.GET)
	public ModelAndView test(String status, HttpServletRequest req, BikeUserVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView("test/test_dongbang");
		return mav; 
	}
	
}

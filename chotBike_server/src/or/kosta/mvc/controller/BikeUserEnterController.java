package or.kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import or.kosta.mvc.dao.BikeUserEnterDAO;
import or.kosta.vo.BikeUserVO;

@Controller
public class BikeUserEnterController {
	@Autowired
	private BikeUserEnterDAO budao;
	
	private static final Log log = LogFactory.getLog(HomeController.class);

	@RequestMapping(value = "/bike_user_enter", method = RequestMethod.GET)
	public ModelAndView user_enter_home(BikeUserVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/bike_user_enter");
		return mav;
	}
	@RequestMapping(value = "/enter_user", method = RequestMethod.POST)
	public ModelAndView user_enter(BikeUserVO vo, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		vo.setUser_id(req.getParameter("user_id"));
		vo.setUser_pwd(req.getParameter("user_pwd"));
		vo.setUser_name(req.getParameter("user_name"));
		int height = Integer.parseInt(req.getParameter("user_height"));
		int weight = Integer.parseInt(req.getParameter("user_weight"));
		vo.setUser_height(height);
		vo.setUser_weight(weight);
		vo.setUser_birth(req.getParameter("user_birth"));
		vo.setUser_bike_buy_date(req.getParameter("user_bike_buy_date"));
		budao.addUser(vo);
		log.info("회원가입이 성공적으로 진행 됐습니다.");
		mav.setViewName("test/home");
		return mav;
	}
}

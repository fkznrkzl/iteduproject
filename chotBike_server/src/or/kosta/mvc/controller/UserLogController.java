package or.kosta.mvc.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserLogController {
	
	static Log log = LogFactory.getLog(UserLogController.class);
	
	@RequestMapping(value="/user_log", method = RequestMethod.GET)
	public ModelAndView history(HttpSession session, Locale locale, Model model, HttpServletRequest request) {
		log.info("use history locale : "+locale);
		log.info("use history client ip : "+ request.getRemoteAddr() + request.getRemotePort());
		log.info(request.getRemoteUser());
		Date date = new Date();
		DateFormat formatd = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formatdate = formatd.format(date);
		log.info(formatdate);
		// DateFormat.LONG, DateFormat.LONG, locale
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/user_log");
		return mav;
	}
	
}

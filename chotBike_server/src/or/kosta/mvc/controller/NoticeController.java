package or.kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import or.kosta.dto.PageDTO;
import or.kosta.mvc.dao.NoticeDAOImpl;
import or.kosta.vo.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeDAOImpl dao;	// 변경 예정

	@RequestMapping(value="/notice")
	public ModelAndView noticeSelect(HttpSession session, NoticeVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		PageDTO paging = new PageDTO();
		
		
		int listCnt = dao.selectNoticeCnt(vo);
		int pageNo = 1;
		if(StringUtils.isNotEmpty(request.getParameter("pageNo")))
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		paging.setPageNo(pageNo);
		paging.setPageSize(10);
		paging.setTotalCount(listCnt);
		vo.setPageInfo(paging);
		List<NoticeVO> list = dao.selectNotice(vo);
		
		mav.addObject("list", list);
		mav.addObject("paging", paging);
		
		mav.setViewName("test/notice");
		return mav;
	}
	
	@RequestMapping(value="/notice_in", method = RequestMethod.GET)
	public ModelAndView noticeInsert(HttpSession session, NoticeVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/notice_insert");
		return mav;
	}
	
	@RequestMapping(value="/notice_insert_to", method = RequestMethod.POST)
	public String noticeInsertTo(HttpSession session, NoticeVO vo, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		vo.setUser_id((String) session.getAttribute("user_id"));
		List<NoticeVO> list = dao.insertNotice(vo);
		System.out.println(session.getAttribute("user_id"));
		System.out.println(list);
		mav.setViewName("test/notice");
		return "redirect:/notice";
	}
	
//	@RequestMapping(value="/notice/*")
//	public ModelAndView noticeNew(HttpSession session, NoticeVO vo, HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView();
//		List<NoticeVO> list = dao.selectNew(vo);
//		mav.addObject("list2", list);
//		mav.setViewName("layout/r_menu");
//		return mav;
//	}
	
	@RequestMapping(value="/view", method = RequestMethod.GET)
	public ModelAndView noticeNew(HttpSession session, NoticeVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<NoticeVO> list = dao.viewNotice(vo);
		mav.addObject("list", list);
		mav.setViewName("test/notice_view");
		return mav;
	}
	
}

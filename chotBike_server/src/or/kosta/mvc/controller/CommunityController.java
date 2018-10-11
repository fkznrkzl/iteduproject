package or.kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import or.kosta.dto.PageDTO;
import or.kosta.mvc.dao.CommunityDAOImpl;
import or.kosta.vo.BikeCommunityVO;
import or.kosta.vo.NoticeVO;

@Controller
public class CommunityController {
	@Autowired
	private CommunityDAOImpl dao;
	
	@RequestMapping(value="/community")
	public ModelAndView com(HttpSession session) {
		ModelAndView mav = new ModelAndView();
//		PageDTO paging = new PageDTO();
//		int listCnt = dao.selectNoticeCnt(vo);
//		int pageNo = 1;
//		if(StringUtils.isNotEmpty(request.getParameter("pageNo")))
//			pageNo = Integer.parseInt(request.getParameter("pageNo"));
//		paging.setPageNo(pageNo);
//		paging.setPageSize(5);
//		paging.setTotalCount(listCnt);
//		vo.setPageInfo(paging);
//		List<NoticeVO> list = dao.selectNotice(vo);
//		
//		mav.addObject("list", list);
//		mav.addObject("paging", paging);
		mav.setViewName("test/community");
		return mav;
	}
	
	@RequestMapping(value="/community_in", method = RequestMethod.GET)
	public ModelAndView com_in(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/community_insert");
		return mav;
	}
	
	// 경고 제거하는 어노테이션
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/community/insert", method = RequestMethod.GET)
	public List<BikeCommunityVO> com_insert(@RequestAttribute("List") BikeCommunityVO vo, HttpSession session){
		ModelAndView mav = new ModelAndView();
		dao.insertCommunity(vo);
		mav.setViewName("test/community");
		return (List<BikeCommunityVO>) mav;
	}
	
}

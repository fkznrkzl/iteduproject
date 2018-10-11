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
		System.out.println("���� ���� ��Ʈ�ѷ��� �����մϴ�.");
		
		String path = request.getSession().getServletContext().getRealPath("resources/upload/") + file.getOriginalFilename();
		File f = new File(path);
		try {
			file.transferTo(f);
			System.out.println("���� ���� �� ���ۿϷ�");
			String a = path.substring(78, 132);
			vo.setPath(a);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		cboarddao.addFile(vo);
		System.out.println("��� ���� ���������� �����ϴ�.");
		System.out.println("������̸� ��: "+vo.getUname());
		System.out.println("���������Ʈ : "+vo.getContent());
		System.out.println("�ӽ� ��� : " + path);
		System.out.println("���� ��� : " + vo.getPath());
		System.out.println("POST ���!=====================");
		mav.addObject("resp", "success");
		return mav; 
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public ModelAndView exe(CBoardVO vo) {
		System.out.println("���� ���� ��Ʈ�ѷ��� �����մϴ�.");
		cboarddao.addFile(vo);
		System.out.println("��� ���� ���������� �����ϴ�.");
		ModelAndView mav = new ModelAndView("redirect:/cbAdd2");
		System.out.println("�����̷�Ʈ ������� �����մϴ�.");
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

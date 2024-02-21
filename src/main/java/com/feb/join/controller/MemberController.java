package com.feb.join.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.feb.join.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	/**
	 * 회원 가입
	 * @param params 회원 가입 정보
	 * @return ModelAndView login.jsp
	 */
	@PostMapping("/join.do")
	public ModelAndView join(@RequestParam HashMap<String, String> params) {
		ModelAndView mv = new ModelAndView();
		int result = memberService.join(params);
		mv.setViewName("login");
		// 회원가입 성공시 result == 1
		if(result == 1) {
			mv.addObject("resultMsg", "회원 가입 성공");
		} else {
			mv.addObject("resultMsg", "회원 가입 실패");
		}
		return mv;
	}
}

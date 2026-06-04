package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ReplyModel {
	@RequestMapping("Reply/list.do")
	   public String reply_list(HttpServletRequest request,HttpServletResponse response) {
		
		// DB연동
		request.setAttribute("main_jsp","../reply/list.jsp");
		return "../main/main.jsp";
	  }
}

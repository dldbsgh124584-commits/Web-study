package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;
@Controller
public class MainModel {
  @RequestMapping("main/main.do")
  public String main_main(HttpServletRequest request,HttpServletResponse response)
  {
	  TourVO tvo=MainDAO.mainSeoulOne();
	  List<TourVO> PList=MainDAO.mainBusanTop4();
	  List<TourVO> JList=MainDAO.mainJejuTop4();
	  List<FoodVO> fList=MainDAO.mainFoodTop7();
	  
	  request.setAttribute("tvo",tvo);
	  request.setAttribute("PList",PList);
	  request.setAttribute("JList",JList);
	  request.setAttribute("fList",fList);
	  
	  request.setAttribute("main_jsp","../main/home.jsp");
	  return "../main/main.jsp";
  }
}

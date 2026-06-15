package com.sist.model;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.controller.Controller;
// Model 구분자 => 유일하게 Controller와 연결되는 부분
/*
 *   MVC
 *    => 브라우저에서 사용자 요청 : URL (주소창)
 *    => Controller가 요청값을 받는다
 *    => Model에 등록된 메소드를 찾아서 요청 수행 완료
 *                   -----------
 *                   자동 호출 : 어노테이션을 이용
 *                             @RequestMapping => invoke()
 *                                                --------
 *                                                매개변수 : request/response
 *    => 완료된 내용(출력)을 JSP로 전송 
 *    --------------- 구조 : SpringFramework / Spring-Boot
 *                               |                  |
 *                               --------------------
 *                               @RequestMapping
 *                                   | - @GetMapping
 *                                   | - @PostMapping
 *                               @Autowired / @Before @After
 *                               @Component / @repository / @Service
 * 
 */
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@Controller
public class FoodModel {
     @RequestMapping("food/list.do")
     public String food_list(HttpServletRequest request,HttpServletResponse response)
     {
    	 // 비즈니스로직
    	 // Model : Model / VO / DAO / Service  => 모뎅 (자바 클래스)
    	 /*  
    	  *  View 단 : JSP
    	  *  로직 단 : Model (자바)
    	  *  디비 단 : XML
    	  *  -------------------
    	  */
    	 // 1. 사용자 요청
    	 String page=request.getParameter("page");
    	 if(page==null)
    		 page="1";
    	 // 2. 현재 페이지 저장
    	 int curpage=Integer.parseInt(page);
    	 // 3. 출력할 데이터 목록
    	 List<FoodVO> list=FoodDAO.foodListData((curpage*12)-12);
    	 // 4. 총페이지
    	 int totalpage=FoodDAO.foodTotalPage();
    	 // 5. 블록별
    	 final int BLOCK=10;
    	 int startPage=((curpage-1)/BLOCK*BLOCK)+1;
    	 // 1 11 21 31...
    	 int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
    	 // 10 20 30 40....
    	 if(endPage>totalpage)
    		 endPage=totalpage;
    	 
    	 // 데이터 전송
    	 request.setAttribute("list", list);
    	 request.setAttribute("curpage", curpage);
    	 request.setAttribute("totalpage", totalpage);
    	 request.setAttribute("startPage", startPage);
    	 request.setAttribute("endPage", endPage);
    	 return "../food/list.jsp";
     }
     @RequestMapping("food/list_ajax.do")
     public void foodListData_ajax(HttpServletRequest request,HttpServletResponse response)
     {
    	 String page=request.getParameter("page");
    	 if(page==null)
    		 page="1";
    	 // 2. 현재 페이지 저장
    	 int curpage=Integer.parseInt(page);
    	 // 3. 출력할 데이터 목록
    	 List<FoodVO> list=FoodDAO.foodListData((curpage*12)-12);
    	 // 4. 총페이지
    	 int totalpage=FoodDAO.foodTotalPage();
    	 // 5. 블록별
    	 final int BLOCK=10;
    	 int startPage=((curpage-1)/BLOCK*BLOCK)+1;
    	 // 1 11 21 31...
    	 int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
    	 // 10 20 30 40....
    	 if(endPage>totalpage)
    		 endPage=totalpage;
    	 
    	 JSONArray arr=new JSONArray(); // List => 자바스크립트에서 인식 []
    	 int i=0;
    	 for(FoodVO vo:list)
    	 {
    		 // vo와 일치 => JSONObject {} => RestFul
    		 JSONObject obj=new JSONObject();
    		 obj.put("no",vo.getNo());
    		 obj.put("poster",vo.getPoster());
    		 obj.put("name",vo.getName());
    		 if(i==0)
    		 {
    			 obj.put("curpage",curpage);
    			 obj.put("totalpage",totalpage);
        		 obj.put("startPage",startPage);
        		 obj.put("endPage",endPage);
    		 }
    		 arr.add(obj);
    		 i++;
    	 }
     }
    	 
     
}

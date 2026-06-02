package com.sist.anno;
@Controller
public class MemberModel {
	@RequestMapping("Member/login.do")
	public void login()
    {
 	   System.out.println("login() call..");
    }
	@RequestMapping("Member/join.do")
	public void join()
    {
 	   System.out.println("join() call..");
    }
   
}

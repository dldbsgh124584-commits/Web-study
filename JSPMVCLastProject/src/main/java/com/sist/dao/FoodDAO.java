package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.*;
import com.sist.vo.*;
public class FoodDAO {
     private static SqlSessionFactory ssf;
     static
     {
    	 ssf=CreateSqlSessionFactory.getSsf();
     }
     // 기능
     // 1. 목록
     public static List<FoodVO> foodListData(int start)
     {
    	  // 매개변수 : parameterType , 리턴형 : resultType
    	  // FoodVO => selectList() => List<FoodVO>
    	  // selectOne => FoodVO
    	  List<FoodVO> list=new ArrayList<FoodVO>();
    	  SqlSession session=null;
    	  try
    	  {
    		  session=ssf.openSession();
    		  list=session.selectList("foodListData",start);
    		  // MyBatis의 단점 => 오류는 XML에 있다 
    	  }catch(Exception ex)
    	  {
    		  ex.printStackTrace();
    	  }
    	  finally
    	  {
    		  if(session!=null)
    			  session.close(); // POOL 반환 => 재사용 
    	  }
    	  return list;
     }
     public static int foodTotalPage()
     {
    	 int total=0;
    	 SqlSession session=null;
    	 try
    	 {
    		 session=ssf.openSession();
    		 total=session.selectOne("foodTotalPage");
    	 }catch(Exception ex)
    	 {
    		ex.printStackTrace(); 
    	 }
    	 finally
    	 {
    		 if(session!=null)
    			 session.close();
    	 }
    	 return total;
     }
     public static FoodVO foodDetailData(int no)
     {
    	 FoodVO vo=new FoodVO();
    	 SqlSession session=null;
    	 try
    	 {
    		 session=ssf.openSession();
    		 vo=session.selectOne("foodDetailData",no);
    	 }catch(Exception ex)
    	 {
    		 ex.printStackTrace();
    	 }
    	 finally
    	 {
    		 if(session!=null)
    			 session.close();
    	 }
    	 return vo;
     }
}

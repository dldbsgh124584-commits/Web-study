package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
import com.sist.commons.*;
public class EmpDAO {
   private static SqlSessionFactory ssf;
   static
   {
	   try
	   {
		   ssf=CreateSqlSessionFactory.getSsf();
	   }catch(Exception ex) {
		   ex.printStackTrace();
	   }
   }
   public static List<EmpVO> empFindData(EmpVO vo)
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empFindData",vo);
	   session.close();
	   return list;
   }
   public static List<EmpVO> empFindData2(String ename)
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empFindData2",ename);
	   session.close();
	   return list;
   }
   public static List<EmpVO> empFindData3(String job)
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empFindData3",job);
	   session.close();
	   return list;
   }
   public static List<EmpVO> empFindData4(Map map)
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empFindData4",map);
	   session.close();
	   return list;
   }
   public static List<EmpVO> empGetData()
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empGetData");
	   session.close();
	   return list;
   }
   /*
    * <select id="empFindData5" resultType="EmpVO" parameterType="EmpVO">
	   SELECT empno,ename,job,TO_CHAR(hiredate,'YYYY-MM-DD') as dbday,sal
	   FROM emp
	   
	   <trim prefix="WHERE" prefixOverrides="AND/OR">
	    <if test="ename!=null and ename!=''">
	     AND ename LIKE '%'||#{ename}||'%'
	    </if>
	    <if test="job!=null and job!=''">
	     AND job LIKE '%'||#{job}||'%'
	    </if>
	   </trim>
	  </select>
    * 
    */
   public static List<EmpVO> empFindData5(EmpVO vo)
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empFindData5",vo);
	   session.close();
	   return list;
   }
}

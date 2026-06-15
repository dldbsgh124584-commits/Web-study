package com.sist.dao;

import java.io.*;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.*;

/* 
 *  <select id="foodListData" resultType="FoodVO" parameterType="int">
	  SELECT no,poster,name
	  FROM food
	  ORDER BY no ASC
	  OFFSET #{start} ROWS FETCH NEXT 12 ROWS ONLY
	 </select>
 * 
 */
public class FoodDAO {
    private static SqlSessionFactory ssf;
    static
    {
    	try
    	{
    		Reader reader=Resources.getResourceAsReader("Config.xml");
    		ssf=new SqlSessionFactoryBuilder().build(reader);
    	}catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}
    }
    public static List<FoodVO> foodListData(int start)
    {
    	// 단점 : 에러시 처리가 어렵다 => try~catch
    	SqlSession session=ssf.openSession();
    	// => connection을 이용해서 => ps/rs
    	List<FoodVO> list=session.selectList("foodListData",start);
    			session.close();
    	return list;
    }
    public static int foodTotalPage()
    {
    	SqlSession session=ssf.openSession();
    	// => connection을 이용해서 => ps/rs
    	int total=session.selectOne("foodTotalData");
    	session.close();
    	return total;
    }
}

package com.sist.dao;
/*
 *   NO                                        NOT NULL NUMBER
	 NAME                                               VARCHAR2(100)
	 TYPE                                               VARCHAR2(100)
	 PHONE                                              VARCHAR2(30)
	 ADDRESS                                            VARCHAR2(260)
	 SCORE                                              NUMBER(2,1)
	 PARKING                                            VARCHAR2(200)
	 POSTER                                             VARCHAR2(260)
	 TIME                                               VARCHAR2(50)
	 CONTENT                                            CLOB
	 THEME                                              VARCHAR2(4000)
	 PRICE                                              VARCHAR2(100)
 * 
 * 
 *    1.page / taglib
 *    2.내장 객체
 *      request / response / session / cookie / applicaion
 *    3.EL / JSTL
 *    4.Servlet+JSP => MVC
 * 
 */
import java.util.*;

import lombok.Data;
@Data
public class FoodVO {
	 private int no;
	    private double score;
	    private String name,type,phone,address,parking,poster,time,content,theme,price;
     
}

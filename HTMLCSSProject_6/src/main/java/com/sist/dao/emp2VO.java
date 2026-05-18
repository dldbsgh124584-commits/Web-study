package com.sist.dao;

import lombok.Data;

/*
	 * EMPNO    NOT NULL NUMBER       
	ENAME    NOT NULL VARCHAR2(50) 
	JOB      NOT NULL VARCHAR2(50) 
	HIREDATE NOT NULL DATE         
	SAL      NOT NULL NUMBER(10,2) 
	DEPTNO   NOT NULL NUMBER       
	ISADMIN           CHAR(1)  
 * 
 */
@Data
public class emp2VO {
   private int sal,empno;
   private String ename,job,hiredate;
   
}

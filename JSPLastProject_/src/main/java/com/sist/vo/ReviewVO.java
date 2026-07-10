package com.sist.vo;

import lombok.Data;

/*
 * NO      NOT NULL NUMBER       
	FNO              NUMBER       
	NAME    NOT NULL VARCHAR2(51) 
	ID               VARCHAR2(20) 
	MSG     NOT NULL CLOB         
	REGDATE          DATE
 * 
 */
import java.util.*;
@Data
public class ReviewVO {
   private int no,fno;
   private String name,id,msg,dbday;
   private Date regdate;
}

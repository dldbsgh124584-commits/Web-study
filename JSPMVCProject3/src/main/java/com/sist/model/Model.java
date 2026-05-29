package com.sist.model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 *   Spring / struts
 *            | Action => execute
 *   | Controller => handleRequest  
 */
public interface Model {
    public String handleRequest(HttpServletRequest request,HttpServletResponse response);
 
}

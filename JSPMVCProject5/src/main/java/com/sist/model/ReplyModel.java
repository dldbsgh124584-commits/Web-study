package com.sist.model;


import com.sist.controller.*;

// 메소드 => 어떻게 찾을까
// if => 대체
/*
 *    클래스 검색 => Map (if을 제거)
 *    메소드 => (if 제거) => 구분자 찾기 => Annotaion
 *    => 리플렉션 => 메소드명과 관련이 없이 자동 검색이 가능 => Spring
 *    => Controller : 이미 업체마다 제작되어 있다
 *       | Spring에서 제공하는 Controller
 *       | 포털 : 자체에서 Controller 제작 
 * 
 */
@Controller
public class ReplyModel {
    // => 추가 / 목록 / 삭제 / 수정
}

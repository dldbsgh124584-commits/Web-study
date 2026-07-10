package com.sist.vo;

import lombok.Data;

@Data
public class TourVO {
    private int contentId,contentTypeId,areaCode,likecount,replycount,hit;
    private double mapx,mapy;
    private String title,addr1,firstimage;
}

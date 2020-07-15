package com.film.pojo;

import lombok.Data;

@Data
public class Page {
    //    1.    每页显示的数量
    private int everyPage;

    //    2.    总条目数
    private int totalCount;

    //    3.    总页数
    private int totalPage;

    //    4.    当前页数
    private int currentPage;

    //    5.    起始页
    private int beginIndex;

    //    6.    是否有上一页
    private    boolean hasPrePage;

    //    7.    是否还有下一页
    private boolean hasNextPage;

    public Page() {
    }

    public Page(int everyPage, int totalCount, int totalPage, int currentPage, int beginIndex, boolean hasPrePage,
                boolean hasNextPage) {
        super();
        this.everyPage = everyPage;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
        this.currentPage = currentPage;
        this.beginIndex = beginIndex;
        this.hasPrePage = hasPrePage;
        this.hasNextPage = hasNextPage;
    }

}

package com.zsj.domain;

import com.zsj.utils.Pair;
import org.apache.ibatis.annotations.Options;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class Blog implements Serializable {

    private int bId;     //博客id
    private String title;       //题目
    private String content;  //内容
    private Date writeTime;  //写作时间
    private int readTimes;   //阅读次数
    private int uId;   //博客作者id


    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public Blog(int bId, String title, String content, Date writeTime, int readTimes, int uId) {
        this.bId = bId;
        this.title = title;
        this.content = content;
        this.writeTime = writeTime;
        this.readTimes = readTimes;
        this.uId = uId;
    }

    public Blog(String title, String content, Date writeTime, int readTimes, int uId) {
        this.bId = bId;
        this.title = title;
        this.content = content;
        this.writeTime = writeTime;
        this.readTimes = readTimes;
        this.uId = uId;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writeTime=" + writeTime +
                ", readTimes=" + readTimes +
                ", uId=" + uId +
                '}';
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }


    public Blog() {
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getWriteTime() {
        return writeTime;
    }

    public void setWriteTime(Date writeTime) {
        this.writeTime = writeTime;
    }

    public int getReadTimes() {
        return readTimes;
    }

    public void setReadTimes(int readTimes) {
        this.readTimes = readTimes;
    }
}

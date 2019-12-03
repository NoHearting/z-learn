package com.zsj.domain.question;

/**
 * 接收数据库查询的结果
 * 保存的值为一个“问题”的所有分类标签
 * 只保存分类下的小标签
 */
public class QuestionTags {
    private int sId;
    private String subType;


    public QuestionTags(int sId, String subType) {
        this.sId = sId;
        this.subType = subType;

    }

    @Override
    public String toString() {
        return "QuestionTags{" +
                "sId=" + sId +
                ", subType='" + subType + '\'' +
                '}';
    }

    public int getsId() {
        return sId;
    }

    public void setsId(int sId) {
        this.sId = sId;
    }

    public String getSubType() {
        return subType;
    }

    public void setSubType(String subType) {
        this.subType = subType;
    }


    public QuestionTags() {
    }
}

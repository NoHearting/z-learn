package com.zsj.domain.question;

import java.util.List;

/**
 * 保存问题的分类信息
 * 大小类型都会保存
 *
 */
public class QuestionClassify {
    private String mainType;
    private List<QuestionTags> questionTags;


    @Override
    public String toString() {
        return "QuestionClassify{" +
                "mainType='" + mainType + '\'' +
                ", questionTags=" + questionTags +
                '}';
    }

    public List<QuestionTags> getQuestionTags() {
        return questionTags;
    }

    public void setQuestionTags(List<QuestionTags> questionTags) {
        this.questionTags = questionTags;
    }

    public String getMainType() {
        return mainType;
    }

    public void setMainType(String mainType) {
        this.mainType = mainType;
    }

    public QuestionClassify(String mainType, List<QuestionTags> questionTags) {
        this.mainType = mainType;
        this.questionTags = questionTags;
    }

    public QuestionClassify() {
    }
}

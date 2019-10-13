package com.zsj.domain;

import java.io.Serializable;

public class Problem implements Serializable {
    private int pId;
    private String question;
    private String answer;
    private int bigType;
    private String smallType;


    public Problem(int pId, String problem, String answer, int bigType, String smallType) {
        this.pId = pId;
        this.question = problem;
        this.answer = answer;
        this.bigType = bigType;
        this.smallType = smallType;
    }

    public Problem() {
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String problem) {
        this.question = problem;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getBigType() {
        return bigType;
    }

    public void setBigType(int bigType) {
        this.bigType = bigType;
    }

    public String getSmallType() {
        return smallType;
    }

    public void setSmallType(String smallType) {
        this.smallType = smallType;
    }

    @Override
    public String toString() {
        return "Problem{" +
                "pId=" + pId +
                ", problem='" + question + '\'' +
                ", answer='" + answer + '\'' +
                ", bigType=" + bigType +
                ", smallType='" + smallType + '\'' +
                '}';
    }
}

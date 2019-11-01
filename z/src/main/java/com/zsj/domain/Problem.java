package com.zsj.domain;

import java.io.Serializable;

public class Problem implements Serializable {
    private int pId;
    private String question;
    private String answer;
    private int isFinished;   // 是否完成

    @Override
    public String toString() {
        return "Problem{" +
                "pId=" + pId +
                ", question='" + question + '\'' +
                ", answer='" + answer + '\'' +
                ", isFinished=" + isFinished +
                '}';
    }

    public int getIsFinished() {
        return isFinished;
    }

    public void setIsFinished(int isFinished) {
        this.isFinished = isFinished;
    }

    public Problem(int pId, String question, String answer, int isFinished) {
        this.pId = pId;
        this.question = question;
        this.answer = answer;
        this.isFinished = isFinished;
    }

    public Problem(int pId, String problem, String answer) {
        this.pId = pId;
        this.question = problem;
        this.answer = answer;

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


}

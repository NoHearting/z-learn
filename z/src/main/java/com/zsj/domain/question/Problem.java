package com.zsj.domain.question;

import java.io.Serializable;
import java.util.List;

public class Problem implements Serializable {
    private int pId;
    private String question;
    private String answer;
    private int isFinished;   // 是否完成

    private List<QuestionTags> tags;  //问题的标签

    public List<QuestionTags> getTags() {
        return tags;
    }

    @Override
    public String toString() {
        return "Problem{" +
                "pId=" + pId +
                ", question='" + question + '\'' +
                ", answer='" + answer + '\'' +
                ", isFinished=" + isFinished +
                ", tags=" + tags +
                '}';
    }

    public Problem(int pId, String question, String answer, int isFinished, List<QuestionTags> tags) {
        this.pId = pId;
        this.question = question;
        this.answer = answer;
        this.isFinished = isFinished;
        this.tags = tags;
    }

    public void setTags(List<QuestionTags> tags) {
        this.tags = tags;
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

    public Problem(String question, String answer, int isFinished) {
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

package com.zsj.response;

import com.zsj.enums.Status;

import java.io.Serializable;

public class ResponseInfo implements Serializable {


    private Status status;
    private String description;
    private String url;

    public ResponseInfo(Status status, String description, String url) {
        this.status = status;
        this.description = description;
        this.url = url;
    }

    public ResponseInfo() {
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "ResponseInfo{" +
                "status=" + status +
                ", description='" + description + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}

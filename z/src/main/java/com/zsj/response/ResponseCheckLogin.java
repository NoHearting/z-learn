package com.zsj.response;

import com.zsj.enums.Status;

import java.io.Serializable;

/**
 * 检查登录状态的返回信息
 * @param <T>
 */
public class ResponseCheckLogin<T> implements Serializable {
    Status status;   //状态
    T obj;  //对象

    public ResponseCheckLogin(Status status, T obj) {
        this.status = status;
        this.obj = obj;
    }

    public ResponseCheckLogin() {
    }

    @Override
    public String toString() {
        return "ResponseCheckLogin{" +
                "status=" + status +
                ", obj=" + obj +
                '}';
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public T getObj() {
        return obj;
    }

    public void setObj(T obj) {
        this.obj = obj;
    }
}

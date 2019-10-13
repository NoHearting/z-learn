package com.zsj.enums;

public enum Status {
    ERROR("失败，请重试"),
    NORMAL("成功");
    private String descrption;

    Status(String descrption) {
        this.descrption = descrption;
    }

    public String getDescrption() {
        return descrption;
    }

    public void setDescrption(String descrption) {
        this.descrption = descrption;
    }
}

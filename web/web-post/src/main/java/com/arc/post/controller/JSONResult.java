package com.arc.post.controller;

import lombok.Data;

@Data
public class JSONResult {

    private Boolean success;
    private String msg;

    public JSONResult(boolean success, String msg) {
        this.success = success;
        this.msg = msg;

    }

    public void setSuccess(boolean success) {
        this.success = success;

    }

    public void setMsg(String msg) {
        this.msg = msg;

    }
}

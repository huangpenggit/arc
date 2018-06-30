package com.del.arc.util;

//封装响应的JSON数据
public class AjaxResult {
    private int code = -1;//标志码
    private boolean success = true;//响应是否成功  true-成功 false-失败
    private String message;//错误信息
    private Object result;

    /**
     * 失败的JSON
     * 需要参数失败
     *
     * @param message
     */
    public void setmessage(String message) {
        this.success = false;
        this.message = message;
    }

    /**
     * 成功
     *
     * @param successMsg
     */
    public void setSuccess(String successMsg) {
        this.success = true;
        this.message = successMsg;
    }

    //默认就是成功，只传入消息就是成功
    public AjaxResult(String msg) {
        this.message = msg;
    }

    /**
     * 构造成功或者失败
     *
     * @param b
     * @param msg
     */
    public AjaxResult(boolean b, String msg) {
        this.success = b;
        this.message = msg;
    }

    public AjaxResult() {
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}

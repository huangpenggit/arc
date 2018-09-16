package com.arc.vo;


import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;

public class ResponseVO implements Serializable {
    private static final long serialVersionUID = 4807318268209609704L;
    private static final int DEFAULT_SUCCESS_STATUS = 0;
    private static final int DEFAULT_FAIL_STATUS = 1;
    public static final ResponseVO.Meta SUCCESS = new ResponseVO.Meta(0, "success");
    public static final ResponseVO.Meta FAILURE = new ResponseVO.Meta(1, "failure");
    private ResponseVO.Meta meta;
    private ResponseVO.Result result;


    public ResponseVO() {
    }

    public boolean isSuccess() {
        return null != this.meta && 0 == this.meta.getErrno();
    }

    public static ResponseVO success() {
        return new ResponseVO(SUCCESS, (ResponseVO.Result) null);
    }

    public static <T> ResponseVO success(T data) {
        return new ResponseVO(SUCCESS, new ResponseVO.Result(data, (ResponseVO.Page) null));
    }

    public static <T> ResponseVO success(T data, Integer currentPage, Integer pageSize, Integer totalCount) {
        return new ResponseVO(SUCCESS, data, currentPage, pageSize, totalCount);
    }

    public static ResponseVO failure() {
        return new ResponseVO(FAILURE, (ResponseVO.Result) null);
    }

    public static ResponseVO failure(int errno, String msg) {
        return new ResponseVO(new ResponseVO.Meta(errno, msg), (ResponseVO.Result) null);
    }

    public static <T> ResponseVO redRebate(int errno, String msg, T data) {
        return new ResponseVO(new ResponseVO.Meta(errno, msg), new ResponseVO.Result(data, (ResponseVO.Page) null));
    }

    public static <T> ResponseVO failure(int errno, String msg, T data) {
        return new ResponseVO(new ResponseVO.Meta(errno, msg), new ResponseVO.Result(data, (ResponseVO.Page) null));
    }

    private <T> ResponseVO(ResponseVO.Meta meta, T data, Integer currentPage, Integer pageSize, Integer totalCount) {
        this.meta = meta;
        if (data != null && currentPage != null && pageSize != null && totalCount != null) {
            this.result = new ResponseVO.Result(data, new ResponseVO.Page(currentPage, pageSize, totalCount));
        }

    }

    private ResponseVO(ResponseVO.Meta meta, ResponseVO.Result result) {
        this.meta = meta;
        this.result = result;
    }

    public ResponseVO.Meta getMeta() {
        return this.meta;
    }

    public void setMeta(int errno, String msg) {
        this.meta = new ResponseVO.Meta(errno, msg);
    }

    public void setMeta(ResponseVO.Meta meta) {
        this.meta = meta;
    }

    public ResponseVO.Result getResult() {
        return this.result;
    }

    public void setResult(ResponseVO.Result result) {
        this.result = result;
    }

    public String toString() {
        return (new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE)).append("meta", this.meta).append("result", this.result).toString();
    }


    public static class Page implements Serializable {
        private static final long serialVersionUID = -9015310768471855060L;
        private Integer currentPage;
        private Integer pageSize;
        private Integer totalCount;
        private Integer totalPage;

        private Page() {
            this.pageSize = 10;
            this.totalPage = 0;
        }

        private Page(Integer currentPage, Integer pageSize, Integer totalCount) {
            this.pageSize = 10;
            this.totalPage = 0;
            this.currentPage = currentPage;
            this.pageSize = pageSize;
            this.totalCount = totalCount;
        }

        public void setCurrentPage(Integer currentPage) {
            this.currentPage = currentPage;
        }

        public void setPageSize(Integer pageSize) {
            this.pageSize = pageSize;
        }

        public void setTotalCount(Integer totalCount) {
            this.totalCount = totalCount;
        }

        public void setTotalPage(Integer totalPage) {
            this.totalPage = totalPage;
        }

        public Integer getCurrentPage() {
            return this.currentPage;
        }

        public Integer getPageSize() {
            return this.pageSize;
        }

        public Integer getTotalCount() {
            return this.totalCount;
        }

        public Integer getTotalPage() {
            if (this.pageSize != null && this.pageSize > 0) {
                if (this.totalCount % this.pageSize == 0) {
                    this.totalPage = this.totalCount / this.pageSize;
                } else {
                    this.totalPage = this.totalCount / this.pageSize + 1;
                }
            }

            return this.totalPage;
        }

        public String toString() {
            return (new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE)).append("currentPage", this.currentPage).append("pageSize", this.pageSize).append("totalCount", this.totalCount).toString();
        }
    }

    public static class Meta implements Serializable {
        private int errno;
        private String msg;

        private Meta() {
        }

        private Meta(int errno, String msg) {
            this.errno = errno;
            this.msg = msg;
        }

        public void setErrno(int errno) {
            this.errno = errno;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }

        public String getMsg() {
            return this.msg;
        }

        public int getErrno() {
            return this.errno;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            } else if (o != null && this.getClass() == o.getClass()) {
                ResponseVO.Meta meta = (ResponseVO.Meta) o;
                return (new EqualsBuilder()).append(this.errno, meta.errno).append(this.msg, meta.msg).isEquals();
            } else {
                return false;
            }
        }

        public int hashCode() {
            return (new HashCodeBuilder(17, 37)).append(this.errno).append(this.msg).toHashCode();
        }

        public String toString() {
            return (new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE)).append("errno", this.errno).append("msg", this.msg).toString();
        }
    }

    public static class Result<T> implements Serializable {
        private ResponseVO.Page page;
        private T data;

        private Result() {
        }

        private Result(T data, ResponseVO.Page page) {
            this.data = data;
            this.page = page;
        }

        public ResponseVO.Page getPage() {
            return this.page;
        }

        public void setPage(ResponseVO.Page page) {
            this.page = page;
        }

        public T getData() {
            return this.data;
        }

        public void setData(T data) {
            this.data = data;
        }

        public String toString() {
            return (new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE)).append("page", this.page).append("data", this.data).toString();
        }
    }

    //    public static void main(String[] args) {
//        List<String> list = new ArrayList();
//        list.add("1");
//        list.add("2");
//        Map<String, Object> map = new HashMap();
//        map.put("usable", true);
//        System.out.println(JSONObject.fromObject(success(map)));
//        System.out.println(JSONObject.fromObject(success()));
//        System.out.println(JSONObject.fromObject(success("处理成功：返回单个对象")));
//        System.out.println(JSONObject.fromObject(success("处理成功：返回对象集合List<Object>", 1, 10, 200)));
//        System.out.println(JSONObject.fromObject(failure()));
//        System.out.println(JSONObject.fromObject(failure(1020001, "业务出错")));
//    }
}

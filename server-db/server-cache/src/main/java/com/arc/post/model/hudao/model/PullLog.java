package com.arc.post.model.hudao.model;


import com.arc.post.model.hudao.dto.HostUtil;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 操作日志记录
 *
 * @author: yechao
 * @date: 2018/08/08 15:27
 * @version: V1.0
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
public class PullLog implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String name; // 操作名称  PullName 枚举表示

    private boolean success = true;//操作结果

    private String sourceAddress = HostUtil.getHostName() + "@" + HostUtil.getHostAddress(); // 操作的目标地址


    private String remark; // 操作备注、、、异常可以记载这里


    private String url = "0.0.0.0"; // 操作者的地址

    private String operator = "程序"; // 操作者

    private Date createDate = new Date(); // 操作时间

    private Date requestDate; // 请求时间


    private int successQuantity;//成功数量  successQuantity=updateQuantity+saveQuantity

    private int updateQuantity;//更新数量（update包含逻辑删除的）

    private int insertQuantity;//插入数量


    /**
     * create table pull_log(
     * `id` BIGINT(20) NOT NULL AUTO_INCREMENT '日志主键',
     * `success` SMALLINT(4)  NOT NULL '是否成功',
     * `type`  INT(10)  NOT NULL '是否成功',
     * `name` VARCHAR(100) '操作名称',
     * `target_address` VARCHAR(100) '操作的目标地址',
     * `operator` VARCHAR(100) '操作名称',
     * `remark` VARCHAR(225) '操作备注',
     * `url` VARCHAR(225) '操作者的地址',
     * `create_time` datetime DEFAULT NULL COMMIT '创建时间',
     * PRIMARY KEY ( tutorial_id )
     * );
     */

    public PullLog(String name, boolean success) {
        this.name = name;
        this.success = success;
    }

    /**
     * @param requestDate   开始时间
     * @param operator      谁
     * @param name          操作名称
     * @param sourceAddress 目标地址
     * @param remark        操作记录
     * @param success       结果
     */
    public PullLog(Date requestDate, String operator, String name, String sourceAddress, String remark, boolean success) {
        this.requestDate = requestDate;
        this.name = name;
        this.success = success;
        this.sourceAddress = sourceAddress;
        this.remark = remark;
        this.operator = operator;
    }


    public PullLog(String name, String remark, boolean success) {
        this.success = success;
        this.sourceAddress = sourceAddress;
        this.remark = remark;
        this.operator = operator;
    }

    public PullLog(Date requestDate) {
        this.requestDate = requestDate;
    }

//    public Date getRequestDate() {
//        return requestDate;
//    }
//
//    public void setRequestDate(Date requestDate) {
//        this.requestDate = requestDate;
//    }
}

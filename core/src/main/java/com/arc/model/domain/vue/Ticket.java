package com.arc.model.domain.vue;

import com.arc.model.vo.BaseModel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * 票的实体
 */
@Getter
@Setter
@ToString
public class Ticket extends BaseModel {

    private static final long serialVersionUID = 1L;

    private Long id;
    private Integer state;// 状态,0删除，1有效，注意：一张票记录一条数据
    private String name;// 发票名称(上海增值税普通发票)
    private Integer code;// 发票代码,同批发票每张发票代码都一样
    private Integer sn;// 发票号码，发票号码是递增的,发票号码一般是8位
    private String verifyCode;// 校验码,20位数字
    private String printerCode;// 机器编号
    private Date issueDate;// 开票时间
    private String secret;// 密钥
    private String remark;// 备注
    private String payee;// 收款方
    private String review;// 财务复核
    private String drawer;// 开票人
    private String taxDetailsName;// 纳税明目
    private String taxDetailsCode;// 货物或应税劳务、服务编号
    private Integer taxBase;// 税基数
    private Integer taxRate;// 税率（百分之)
    private Integer amount;// 总数量
    private String unit;// 计量单位
    private Integer taxTotalLowercase;// 总金额小写
    private String taxTotalCapitalization;// 总金额大写
    private String sellerName;// 销售方名称
    private String sellerTaxpayerIdentificationNumber;// 销售方纳税人识别号
    private Integer sellerCellphone;// 销售方移动电话
    private Integer sellerTelephone;// 销售方固定电话
    private String sellerAddress;// 销售方地址
    private String sellerDepositBank;// 销售方开户行
    private String sellerAccountNumber;// 销售方账户
    private String purchaserName;// 购买方名称
    private String purchaserTaxpayerIdentificationNumber;// 购买方纳税识别号
    private Integer purchaserCellphone;// 购买方移动电话
    private Integer purchaserTelephone;// 购买方固定电话
    private String purchaserAddress;// 购买方地址
    private String purchaserDepositBank;// 购买方开户行
    private String purchaserAccountNumber;// 购买方账户
    private Date createDate;// 数据记录时间
    private Date updateDate;// 数据更新时间
}

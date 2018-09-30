#项目介绍
源码-Spring Security Oauth2
 springsecurity    java  837 次阅读  ·  读完需要 9 分钟
03.01-源码-Spring Security Oauth2
@(技术-架构)[源码, 权限, Security, Oauth2]

Oauth2 是一个开放标准，允许用户让第三方应用访问该用户在某一网站上存储的私密的资源（如照片，视频，联系人列表），而无需将用户名和密码提供给第三方应用。Spring-Security-Oauth2是基于Spring-Security安全框架实现Oauth2的标准授权验证，以下是对Spring-Security-Oauth2的源代码分析。

1、相关包说明
Spring-Security-Core：封装了验收、授权流程核心基础类。
Spring-Security-Web：是基于HTTP实现对安全验证的封装。
Spring-Security-Config：实现了Spring Security命名空间的配置。 
Spring-Security-Oauth2：通过Spring Security框架，实现Oauth2标准验证流程。

2、Spring-Security-Core 分析
① 分层说明
org.springframework.security.access
权限访问处理层，包含了访问权限annotation的配置注解，访问验证的事event，访问权限配置的表达式解析expression，对访问权限的方法拦截器intercept，权限方法注解的实现method，验证的post过程prepost，还有核心的授权方法与管理vote。

核心类访问决策器AccessDecisionVoter
AbstractAclVoter：提供编写域对象ACL选项的帮助方法，没有绑定到任何特定的ACL系统。
AclEntryVoter：给定一个作为方法参数传递的域对象实例，确保类要绑定合适的权限AclService。
AuthenticatedVoter：对 IS_AUTHENTICATED_FULLY或IS_AUTHENTICATED_REMEMBERED或 IS_AUTHENTICATED_ANONYMOUSLY检查与验证。
ClientScopeVoter：[Oauth2] 检查是否在客户端的权限范围内。
Jsr250Voter：通过JSR-250配置的注解进行授权。
PreInvocationAuthorizationAdviceVoter：使用@PreFilter和@PreAuthorize注释生成的PreInvocationAuthorizationAdvice来授权
RoleVoter：匹配默认的前缀字符串是ROLE_的ConfigAttribute，如果匹配到则授权，针对角色的授权。
RoleHierarchyVoter：扩展RoleVoter使用RoleHierarchy定义来确定在授权给当前用户的角色。
ScopeVoter：匹配默认的前缀字符串是SCOPE_的ConfigAttribute，如果匹配到则授权，如：授权范围SCOPE_READ、SCOPE_WRITE。

int ACCESS_GRANTED = 1; //决策结果-允许
int ACCESS_ABSTAIN = 0; //决策结果-放弃
int ACCESS_DENIED = -1; //决策结果-拒绝
//决策方法
int vote(Authentication authentication, S object, Collection<ConfigAttribute> attributes);
核心类访问控制决策管理AccessDecisionManager
AffirmativeBased实现类轮询所有配置 AccessDecisionVoter的，并且如果有的话AccessDecisionVoter肯定地授予访问权限。
ConsensusBased实现类轮询所有配置 AccessDecisionVoter的，并且如果AccessDecisionVoter肯定大于否定的数量的话就授予访问权限，相等的话就看AbstractAccessDecisionManager.isAllowIfAllAbstainDecisions()方法（默认为false）。
UnanimousBased实现类轮询所有配置AccessDecisionVoter的每个配置，并且如果AccessDecisionVoter全部是肯定才能授予访问权限。

//决策方法，如果决策不通过就抛出异常
void decide(Authentication authentication, Object object,Collection<ConfigAttribute> configAttributes) throws AccessDeniedException,InsufficientAuthenticationException;
org.springframework.security.authentication
权限认证处层，实现了对权限的管理和认证，dao封装了用户信息的访问，encoding封装了对用户密码加密的处理，event实现对授权验证的成功、失败等事件，jaas是对Java Jaas授权API的封装，rcp提供了远程授权验证与管理。


1. 什么是CAS？什么是单点登录？

CAS是一个单点登录框架，开始是由耶鲁大学的一个组织开发，后来归到apereo去管。 
同时CAS也是开源，遵循着apache 2.0协议，代码目前是在github上管理。

单点登录：Single Sign On,简称SSO，SSO使得在多个应用系统中，用户只需要登录一次就可以访问所有相互信任的应用系统。

通俗理解为一个应用登录了，其他被授权的应用不用再登录。 
应用例子为：淘宝登录了天猫不用再登录。



2. 应用场景


分布式多系统用户集中管理
用户权限集中管理
多因素认证（如微信pc端登录手机确认）


如公司有多个系统，分别OA系统、CRM系统、财务管理系统、设备管理系统等，总不能访问每个系统都要登录一遍吧，用户会疯掉的，应该我们认证一遍，其他系统即可访问。



3. CAS特性


多协议认证支持 
CAS
OAuth
OpenID
SAML
REST
多因素认证 
Duo
Google Authenticator 
YubiKey
Cas-Management 服务管理中心（谁能接入SSO）
TGT（授权码）管理、ST（票据）管理
动态主题（不通客户端提供不同的登录页）
多方式认证（校验器）
配置中心
监控平台
多属性管理（默认只返回用户名，例如后续返回权限数据）
密码管理
…


CAS特性非常强大，我们可以到官网文档一一了解。



3. 计划



3.1. 博文计划

笔者也是有工作，可能不会输出得很快。那么计划一周会输出1~3篇博文来搭建CAS以及介绍CAS。

3.2. SSO搭建计划


CAS搭建HelloWorld
SSL证书生成并导入https
配置中心搭建
cas-management搭建
监控平台搭建
CAS数据库认证，密码管理
多属性返回
自定义主题
授权码持久化配置、票据持久化配置
CAS多系统安全
CAS client demo测试单点登录
pa4j客户端单点登录整合
rest协议认证




4. 注意事项

所需知识：


spring boot
spring security
spring cloud
maven




5. 复习

---------------------

本文来自 悟空_ 的CSDN 博客 ，全文地址请点击：https://blog.csdn.net/u010475041/article/details/77886765?utm_source=copy 
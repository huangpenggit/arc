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
权限认证处理层，实现了对权限的管理和认证，dao封装了用户信息的访问，encoding封装了对用户密码加密的处理，event实现对授权验证的成功、失败等事件，jaas是对Java Jaas授权API的封装，rcp提供了远程授权验证与管理。
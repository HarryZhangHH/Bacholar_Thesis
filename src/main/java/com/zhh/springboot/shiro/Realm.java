package com.zhh.springboot.shiro;

import com.zhh.springboot.model.User;
import com.zhh.springboot.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
//import org.elasticsearch.common.util.ByteUtils;
import org.springframework.beans.factory.annotation.Autowired;
/* realm 中文意思：领域：
   JPARealm 在这里相当于一个中介：
   系统获取的用户名密码 ，给 shiro ，shiro 给realm 用来判断数据库中是否存在。
*/
public class Realm extends AuthorizingRealm {

    @Autowired
    UserService userService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        return simpleAuthorizationInfo;
    }

    //验证账号密码是否一致
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String userName = token.getPrincipal().toString();
        User user = userService.getByUsername(userName);
        String password = user.getPassword();
        String salt = user.getSalt();

        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(userName, password,
                ByteSource.Util.bytes(salt),
                getName());

        return simpleAuthenticationInfo;
    }
}

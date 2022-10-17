package com.zhh.springboot.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/*因为 springboot 的缓存机制是通过切面编程 aop来实现的。
从fill方法里直接调用 listByCategory 方法， aop 是拦截不到的，也就不会走缓存了。
所以要通过这种 绕一绕 的方式故意诱发 aop, 这样才会想我们期望的那样走redis缓存。

*/
@Component
public class SpringContextUtil implements ApplicationContextAware {
    private SpringContextUtil() {
    }

    /*以静态变量保存Spring ApplicationContext,可在任何代码任何地方任何时候中取出ApplicationContext
    */
    private static ApplicationContext applicationContext;

    /*实现ApplicationContextAware接口的回调方法，设置上下文环境
    * */
    @Override
    public void setApplicationContext(ApplicationContext applicationContext){
        SpringContextUtil.applicationContext = applicationContext;
    }

    public static ApplicationContext getApplicationContext(){
        return applicationContext;
    }

    /*获取对象
    * @return Object一个以所给名字注册的bean的实例
    * */
    public static <T> T getBean(Class<T> clazz) {
        return applicationContext.getBean(clazz);
    }

}


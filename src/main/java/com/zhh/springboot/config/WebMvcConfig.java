package com.zhh.springboot.config;

import com.zhh.springboot.interceptor.LoginInterceptor;
import com.zhh.springboot.interceptor.OtherInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

//登录拦截器配置适配器
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {


    //interceptor 对象
    @Bean
    public LoginInterceptor getLoginInterceptor() {
        return new LoginInterceptor();
    }


    //其它拦截器
    @Bean
    public OtherInterceptor getOtherInterceptor() {
        return new OtherInterceptor();
    }

    //为指定的拦截器 指定拦截路径
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(getLoginInterceptor()).addPathPatterns("/**");
        registry.addInterceptor(getOtherInterceptor()).addPathPatterns("/**");
    }

}

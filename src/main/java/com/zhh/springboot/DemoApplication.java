package com.zhh.springboot;


import com.zhh.springboot.utils.PortUtil;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;
//import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.util.ResourceUtils;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

import java.io.IOException;

//启动类
@SpringBootApplication
@ServletComponentScan
//Used to start the cache
@EnableCaching
//elasticsearch
@EnableElasticsearchRepositories(basePackages = "com.zhh.springboot.es")
//springboot 用于链接elasticsearch的jpa
@EnableJpaRepositories(basePackages = {"com.zhh.springboot.dao", "com.zhh.springboot.model"})
public class DemoApplication extends WebMvcConfigurationSupport {
    static {
        //Use to check if the port has been started.
        //Check that port 6379 is started. 6379 is the port used by the Redis server. If it does not start, the SpringBoot will exit.
        PortUtil.checkPort(6379, "redis server ", true);
    }


    public static void main(String[] args) {
        int port = 8081;
        SpringApplication.run(DemoApplication.class, args);
        try {
            Runtime.getRuntime().exec("cmd /c start http://localhost:" + port);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //这里配置静态资源文件的路径导包都是默认的直接导入就可以
    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations(ResourceUtils.CLASSPATH_URL_PREFIX + "/static/");
        super.addResourceHandlers(registry);
    }

}


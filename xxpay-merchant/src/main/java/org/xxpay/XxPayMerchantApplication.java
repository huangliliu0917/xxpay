package org.xxpay;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class XxPayMerchantApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(XxPayMerchantApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        application.listeners();
        return application.sources(applicationClass);
    }

    private static Class<XxPayMerchantApplication> applicationClass = XxPayMerchantApplication.class;

}
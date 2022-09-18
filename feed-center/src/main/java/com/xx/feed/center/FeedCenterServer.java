package com.xx.feed.center;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by xiedong
 * Date: 2022/9/18 20:07
 *
 * @author xiedong
 */
@SpringBootApplication
@MapperScan("com.xx.feed.center.infrastructure.gatewayimpl.database")
public class FeedCenterServer {
    public static void main(String[] args) {
        SpringApplication.run(FeedCenterServer.class, args);
    }
}

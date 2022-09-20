package com.xx.feed.center;

import com.xx.feed.center.application.IFeedService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * Created by xiedong
 * Date: 2022/9/20 22:47
 */
@SpringBootTest
public class FeedTest1 {
    @Autowired
    private IFeedService feedService;

    @Test
    public void test1() {

    }
}

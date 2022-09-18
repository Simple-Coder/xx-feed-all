package com.xx.feed.center.adapter;

import com.xx.feed.center.application.IFeedService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * Created by xiedong
 * Date: 2022/9/18 20:12
 *
 * @author xiedong
 */
@RestController
@Slf4j
@RequestMapping("/feed/api/v1")
public class FeedController {
    @Resource
    private IFeedService feedService;

    @GetMapping("/user/timeline")
    public void userTimelineFeeds() {
        //TODO:
        System.out.println();
    }
}

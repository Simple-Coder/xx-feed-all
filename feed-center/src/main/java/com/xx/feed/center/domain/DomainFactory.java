package com.xx.feed.center.domain;

import com.xx.feed.center.domain.feed.FeedInfo;

/**
 * Created by xiedong
 * Date: 2022/9/18 20:23
 *
 * @author xiedong
 */
public class DomainFactory {
    public static FeedInfo getFeedInfo() {
        return new FeedInfo();
    }
}

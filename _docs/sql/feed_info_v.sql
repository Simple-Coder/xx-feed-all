create table feed_info_v
(
    id          bigint auto_increment comment '主键ID',
    user_id     bigint null comment '发表feed对应userId',
    content     text null comment 'feed关键内容',
    source_id   varchar(20) null comment '相关id',
    feed_time   datetime null comment 'feed发表时间',
    create_time datetime null comment '创建时间',
    update_time datetime null comment '更新时间',
    feed_type   int null comment 'feed类型：1-图文',
    feed_status int null comment 'feed状态：0-审核中、1-审核通过、2。。',

    constraint feed_info_pk
        primary key (id)
) comment 'feed 大V信息表';

create unique index uid_sid_inx
    on feed_info (user_id, source_id);

create unique index uid_ftime_inx
    on feed_info (user_id, feed_time);
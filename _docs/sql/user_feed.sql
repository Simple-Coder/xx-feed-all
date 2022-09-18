create table user_feed
(
    id bigint auto_increment comment '主键ID',
    user_id bigint null comment '用户id',
    feed_user_id bigint null comment '关注的人userId',
    feed_id bigint null comment '关注的人user对应feedId',
    feed_type int null comment 'feed对应类型',
    feed_status int null comment 'feed对应状态',
    feed_time datetime null comment '时间轴排序',
    create_time datetime null,
    update_time datetime null,
    constraint user_feed_pk
        primary key (id)
)
    comment '用户关注feed表';

create unique index fuid_ftime
    on user_feed (feed_user_id, feed_time);

create unique index uid_fuid_fid
    on user_feed (user_id, feed_user_id, feed_id);

-- 存储过程如下：
create
definer = root@`%` procedure create_user_feed()
BEGIN
    DECLARE `@i` INT(11);
    DECLARE `@j` VARCHAR(10);

    SET `@i` = 0;
    WHILE `@i` < 10
        DO

            IF `@i` < 10 THEN
                SET `@j` = CONCAT(0, `@i`);
ELSE
                SET `@j` = `@i`;
END IF;


            -- 创建表
            SET @user_feed_table_sql = CONCAT('CREATE TABLE IF NOT EXISTS user_feed_', `@j`, '(
                                        id bigint auto_increment comment ''主键ID'',
                                        user_id bigint null comment ''用户id'',
                                        feed_user_id bigint null comment ''关注的人userId'',
                                        feed_id bigint null comment ''关注的人user对应feedId'',
                                        feed_type int null comment ''feed对应类型'',
                                        feed_status int null comment ''feed对应状态'',
                                        feed_time datetime null comment ''时间轴排序'',
                                        create_time datetime null,
                                        update_time datetime null,
                                        constraint user_feed_pk
                                            primary key (id)
                                    )
                                    comment ''用户关注feed表'' '
                );
PREPARE stmt FROM @user_feed_table_sql;
EXECUTE stmt;

-- 创建索引
SET @fuid_ftime_sql =
                    CONCAT('create unique index `fuid_ftime` on user_feed_', `@j`, '(`feed_user_id`,`feed_time`);');
PREPARE stmt FROM @fuid_ftime_sql;
EXECUTE stmt;

SET @uid_fuid_fid_sql =
                    CONCAT('create unique index `uid_fuid_fid` on user_feed_', `@j`, '(`user_id`,`feed_user_id`,`feed_id`);');
PREPARE stmt FROM @uid_fuid_fid_sql;
EXECUTE stmt;

SET `@i` = `@i` + 1;
END WHILE;
END;


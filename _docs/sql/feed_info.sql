create table feed_info
(
    id bigint auto_increment comment '主键ID',
    user_id bigint null comment '发表feed对应userId',
    content text null comment 'feed关键内容',
    source_id varchar(20) null comment '相关id',
    feed_time datetime null comment 'feed发表时间',
    create_time datetime null comment '创建时间',
    update_time datetime null comment '更新时间',
    feed_type int null comment 'feed类型：1-图文',
    feed_status int null comment 'feed状态：0-审核中、1-审核通过、2。。',

    constraint feed_info_pk
        primary key (id)
)
    comment 'feed信息表';

create unique index uid_sid_inx
    on feed_info (user_id, source_id);

create unique index uid_ftime_inx
    on feed_info (user_id, feed_time);



-- 存储过程如下：
create
definer = root@`%` procedure create_feed_info()
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


            -- `M_ID` bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
            -- 创建表
            SET @feed_info_table_sql = CONCAT('CREATE TABLE IF NOT EXISTS feed_info_', `@j`, '(
	id bigint auto_increment comment ''主键ID'',
	user_id bigint null comment ''发表feed对应userId'',
	content text null comment ''feed关键内容'',
	source_id varchar(20) null comment ''相关id'',
	feed_time datetime null comment ''feed发表时间'',
	create_time datetime null comment ''创建时间'',
	update_time datetime null comment ''更新时间'',
	feed_type int null comment ''feed类型：1-图文'',
	feed_status int null comment ''feed状态：0-审核中、1-审核通过、2。。'',

	constraint feed_info_pk
		primary key (id)
)
comment ''feed信息表'' '
                );
PREPARE stmt FROM @feed_info_table_sql;
EXECUTE stmt;

-- 创建索引
SET @uid_sid_inx_sql =
                    CONCAT('create unique index `uid_sid_inx` on feed_info_', `@j`, '(`user_id`,`source_id`);');
PREPARE stmt FROM @uid_sid_inx_sql;
EXECUTE stmt;

SET @uid_ftime_inx_sql =
                    CONCAT('create unique index `uid_ftime_inx` on feed_info_', `@j`, '(`user_id`,`feed_time`);');
PREPARE stmt FROM @uid_ftime_inx_sql;
EXECUTE stmt;

SET `@i` = `@i` + 1;
END WHILE;
END;

-- 调用存储过程初始化
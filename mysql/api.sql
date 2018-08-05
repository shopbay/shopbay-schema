-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
-- Modified version: Rename all table names to follow naming convention in Shopbay
-- @kwlok
--
--
-- Database schema required by \yii\rbac\DbManager.
--
-- @author Qiang Xue <qiang.xue@gmail.com>
-- @author Alexander Kochetov <creocoder@gmail.com>
-- @link http://www.yiiframework.com/
-- @copyright 2008 Yii Software LLC
-- @license http://www.yiiframework.com/license/
-- @since 2.0
-- ;

drop table if exists `s_rbac_assignment`;
drop table if exists `s_rbac_item_child`;
drop table if exists `s_rbac_item`;
drop table if exists `s_rbac_rule`;

create table `s_rbac_rule`
(
   `name`                 varchar(64) not null,
   `data`                 text,
   `created_at`           integer,
   `updated_at`           integer,
    primary key (`name`)
) engine InnoDB;

create table `s_rbac_item`
(
   `name`                 varchar(64) not null,
   `type`                 integer not null,
   `description`          text,
   `rule_name`            varchar(64),
   `data`                 text,
   `created_at`           integer,
   `updated_at`           integer,
   primary key (`name`),
   foreign key (`rule_name`) references `s_rbac_rule` (`name`) on delete set null on update cascade,
   key `type` (`type`)
) engine InnoDB;

create table `s_rbac_item_child`
(
   `parent`               varchar(64) not null,
   `child`                varchar(64) not null,
   primary key (`parent`, `child`),
   foreign key (`parent`) references `s_rbac_item` (`name`) on delete cascade on update cascade,
   foreign key (`child`) references `s_rbac_item` (`name`) on delete cascade on update cascade
) engine InnoDB;

create table `s_rbac_assignment`
(
   `item_name`            varchar(64) not null,
   `user_id`              varchar(64) not null,
   `created_at`           integer,
   primary key (`item_name`, `user_id`),
   foreign key (`item_name`) references `s_rbac_item` (`name`) on delete cascade on update cascade
) engine InnoDB;


-- Added this table to support history of rbac assignment records
-- @see SubscriptionWorkflowBehavior
-- @author kwlok
-- ;
create table `s_rbac_assignment_history`
(
   `item_name`            varchar(100) not null,
   `user_id`              varchar(64) not null,
   `created_at`           integer,
   primary key (`item_name`, `user_id`)
) engine InnoDB;

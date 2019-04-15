/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/4/15 17:29:24                           */
/*==============================================================*/


drop index Index_1 on c2_order;

drop table if exists c2_order;

drop index Index_1 on c2_order_item;

drop table if exists c2_order_item;

/*==============================================================*/
/* Table: c2_order                                              */
/*==============================================================*/
create table c2_order
(
   id                   bigint not null auto_increment,
   user_id              bigint,
   order_no             bigint,
   production_date      datetime,
   delivery_date        datetime,
   created_by           bigint,
   updated_by           bigint,
   status               tinyint,
   created_at           datetime,
   updated_at           datetime,
   primary key (id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on c2_order
(
   user_id
);

/*==============================================================*/
/* Table: c2_order_item                                         */
/*==============================================================*/
create table c2_order_item
(
   id                   bigint not null auto_increment,
   product_id           bigint,
   code                 varchar(255),
   "label"              varchar(255),
   num                  int,
   pieces               int,
   packing              varchar(255),
   size                 varchar(255),
   gross_weight         varchar(255),
   net_weight           varchar(255),
   memo                 varchar(255),
   type                 varchar(255),
   position             int default 0,
   status               tinyint default 1,
   created_at           datetime,
   updated_at           datetime,
   primary key (id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create index Index_1 on c2_order_item
(
   product_id
);


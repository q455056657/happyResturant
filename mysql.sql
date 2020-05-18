use sql_test;

drop table if exists customers;
drop table if exists dishe;
drop table if exists logInfo;
drop table if exists users;

CREATE TABLE `users` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(20) DEFAULT '',
	`password` VARCHAR(20) DEFAULT '',
	`privilege` INTEGER,
	`create_time` datetime DEFAULT CURRENT_TIMESTAMP,
	`update_time` datetime DEFAULT CURRENT_TIMESTAMP,
	
    PRIMARY KEY(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

insert into users(username,password,privilege) value ("admin","admin",1);
insert into users(username,password,privilege) value ("jxc1004","jxc1993cn",1);
insert into users(username,password,privilege) value ("yidian","666666",0);
insert into users(username,password,privilege) value ("erdian","666666",0);
insert into users(username,password,privilege) value ("sandian","666666",0);
insert into users(username,password,privilege) value ("sidian","666666",0);

CREATE TABLE `logInfo` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`ops_type` VARCHAR(200) DEFAULT '',
	`ops_user` VARCHAR(20) DEFAULT '',
	`old_value` VARCHAR(400) DEFAULT '',
	`new_value` VARCHAR(400) DEFAULT '',
	`notes` VARCHAR(400) DEFAULT '',
	`create_time` datetime DEFAULT CURRENT_TIMESTAMP,
	
    PRIMARY KEY(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `dishe` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `category_id` INTEGER,
	`dishe_name` VARCHAR(20) DEFAULT '',
	`dishe_value` FLOAT,
	`dishe_status` INTEGER,
	`create_time` datetime DEFAULT CURRENT_TIMESTAMP,
	`update_time` datetime DEFAULT CURRENT_TIMESTAMP,
	
    PRIMARY KEY(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"招牌牛肉面（大）",18,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"招牌牛肉面（小）",16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"老坛酸菜牛肉面（大）",18,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"老坛酸菜牛肉面（小）",16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"香辣羊杂面（大）",18,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"香辣羊杂面（小）",16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"浓香猪肉面（大）",16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"浓香猪肉面（小）",14,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"红烧肉海带面（大）",14,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"红烧肉海带面（小）",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"肉丁茄子面（大）",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"肉丁茄子面（小）",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"特色打卤面（大）",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"特色打卤面（小）",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"西红柿鸡蛋面（大）",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"西红柿鸡蛋面（小）",8,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"炸酱面（大）",11,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"炸酱面（小）",9,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"油泼面（大）",11,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"油泼面（小）",9,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"油泼牛肉面",16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"剁椒拌面",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"麻汁拌面",14,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (1,"牛肉拌面",18,1);

insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"番茄牛肉炒面",20,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"香辣牛肉炒面", 20,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"尖椒肉丝炒面", 16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"肉炒面", 16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"晋西北炒面", 16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"鸡蛋炒面", 14,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"尖椒鸡蛋炒面", 14,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"素炒面", 12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"清炒牛肉面", 22,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (2,"过油肉炒面", 20,1);


insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (3,"蛋炒饭", 12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (3,"牛肉炒饭", 18,1);

insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"老乡牛肉",35,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"红油猪耳",26,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"蒜泥牛肉",35,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"凉拌拉皮",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"凉拌笋丝",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"美极木耳",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"尖椒皮蛋",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"老醋花生",12,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"红油豆皮",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"皮蛋豆腐",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"凉拌土豆丝",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"圆葱丝",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"精美凉菜（一份）",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (4,"精美凉菜（半份）",6,1);

insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"小碗牛肉",35,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"小碗羊杂",26,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"大块肉",10,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"卤鸡蛋",2,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"猪肉丸子",4,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"卤豆皮",1,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"海带",1,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"香酥鱼",6,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (5,"虎皮辣椒",2,1);

insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"加多宝",4,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"冰糖雪梨",3,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"果粒橙",3,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"冰红茶",3,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"绿茶",3,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"维维豆奶",5,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"可口可乐",3,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"雪碧",3,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"好益多",5,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"百岁山",3,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"农发山泉",2,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"山楂树下",5,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"精品崂山",4,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"青岛中优",5,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"青岛1903",6,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"绵竹大曲",16,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"牛栏山二锅头",5,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"中国劲酒",15,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"小郎酒",20,1);
insert into dishe(category_id,dishe_name,dishe_value,dishe_status) value (6,"牛栏山陈酿白酒",12,1);

CREATE TABLE `customers` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `vip_card` INTEGER NOT NULL UNIQUE,
	`resturant_id` INTEGER,
	`customer_name` VARCHAR(20) DEFAULT '',
	`tel` VARCHAR(20) DEFAULT '',
	`start_money` FLOAT,
	`start_money_r` FLOAT,
	`gift_money` FLOAT,
	`money` FLOAT,
	`status` INTEGER,
	`score` INTEGER,
	`notes` VARCHAR(400) DEFAULT '',
	`create_time` datetime DEFAULT CURRENT_TIMESTAMP,
	`update_time` datetime DEFAULT CURRENT_TIMESTAMP,
	
    PRIMARY KEY(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000012,5,"000012","000012",300,300,0,80,1,0,"","2018-12-16");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000028,2,"000028","000028",500,500,0,500,1,0,"二店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000061,5,"000061","000061",1000,1000,0,0,1,0,"尹","2018-06-14");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000090,1,"000090","000090",317,317,0,10,1,0,"一店","2018-05-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000099,5,"000099","000099",319,319,0,213,1,0,"","2018-07-20");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000100,5,"000100","000100",300,300,0,273,1,0,"","2018-10-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000101,1,"000101","000101",560,560,0,232,1,0,"一店","2018-10-01");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000118,5,"000118","000118",330,330,0,93,1,0,"","2019-05-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000121,5,"000121","000121",330,300,0,273,1,0,"15866695389","2019-09-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000130,5,"000130","000130",340,340,0,105,1,0,"","2019-11-02");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000132,5,"000132","000132",340,340,0,80,1,0,"","2019-10-24");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000133,5,"000133","000133",220,220,0,68,1,0,"","2019-11-08");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000135,5,"000135","000135",110,110,0,48,1,0,"","2019-11-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000136,5,"000136","000136",110,110,0,0,1,0,"","2019-11-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000137,5,"000137","000137",110,110,0,120,1,0,"","2019-12-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000138,5,"000138","000138",110,110,0,0,1,0,"","2019-11-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000139,5,"000139","000139",220,220,0,18,1,0,"","2019-10-23");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000150,2,"000150","000150",300,300,0,0,1,0,"二店","2019-01-27");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000151,2,"000151","000151",300,300,0,0,1,0,"二店","2019-01-27");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000152,1,"000152","000152",500,500,0,420,1,0,"一店朋友","2019-01-27");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000153,5,"000153","000153",300,300,0,0,1,0,"刘关山","2019-01-27");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000190,1,"000190","000190",550,550,0,391,1,0,"一店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000201,1,"000201","000201",300,300,0,84,1,0,"一店","2018-07-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000205,5,"000205","000205",198,198,0,95,1,0,"","2018-11-05");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000207,5,"000207","000207",330,300,0,69,1,0,"张淑君","2018-04-30");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000210,5,"000210","000210",130,130,0,78,1,0,"","2019-05-30");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000220,5,"000220","000220",110,110,0,18,1,0,"","2019-12-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000221,5,"000221","000221",110,110,0,53,1,0,"","2019-10-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000222,1,"000222","000222",314,314,0,314,1,0,"一店","2019-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000223,5,"000223","000223",110,110,0,44,1,0,"","2019-10-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000225,5,"000225","000225",340,340,0,252,1,0,"","2019-10-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000226,5,"000226","000226",110,110,0,82,1,0,"","2019-10-20");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000227,5,"000227","000227",110,110,0,68,1,0,"","2019-10-21");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000228,5,"000228","000228",110,110,0,66,1,0,"","2019-10-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000229,5,"000229","000229",340,340,0,107,1,0,"","2019-10-24");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000230,5,"000230","000230",560,560,0,208,1,0,"","2019-10-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000231,5,"000231","000231",110,110,0,36,1,0,"","2019-10-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000232,5,"000232","000232",110,100,0,49,1,0,"","2019-10-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000233,5,"000233","000233",220,220,0,32,1,0,"","2019-10-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000235,5,"000235","000235",110,110,0,262,1,0,"","2019-10-24");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000236,5,"000236","000236",110,110,0,89,1,0,"","2019-10-24");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000237,5,"000237","000237",110,110,0,49,1,0,"","2019-10-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000239,5,"000239","000239",110,110,0,0,1,0,"","2019-10-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000599,5,"000599","000599",50,50,0,286,1,0,"","2019-04-26");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000608,3,"000608","000608",550,550,0,142,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000612,5,"000612","000612",42,42,0,0,1,0,"","2018-10-21");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000616,3,"000616","000616",92,92,0,15,1,0,"三店","2018-09-16");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000650,1,"000650","000650",300,300,0,178,1,0,"一店","2018-07-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000651,3,"000651","000651",500,500,0,22,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000669,5,"000669","000669",500,500,0,482,1,0,"","2019-11-26");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000671,3,"000671","000671",240,240,0,381,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000675,2,"000675","000675",300,300,0,116,1,0,"二店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000686,3,"000686","000686",550,550,0,139,1,0,"三店","2018-05-23");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000688,5,"000688","000688",300,300,0,0,1,0,"","2018-05-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000690,1,"000690","000690",500,500,0,347,1,0,"一店","2018-10-19");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000691,1,"000691","000691",500,500,0,31,1,0,"一店","2018-06-06");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000693,5,"000693","000693",500,500,0,211,1,0,"纪","2018-05-30");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000697,5,"000697","000697",500,500,0,108,1,0,"","2018-10-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000698,5,"000698","000698",380,380,0,144,1,0,"尹","2018-06-14");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000701,5,"000701","000701",110,110,0,220,1,0,"","2019-11-22");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000723,5,"000723","000723",500,500,0,107,1,0,"曹云霞","2018-09-28");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000727,5,"000727","000727",500,500,0,500,1,0,"万东林","2018-09-28");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000728,2,"000728","000728",330,300,0,37,1,0,"二店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000730,1,"000730","000730",192,192,0,54,1,0,"一店","2019-01-20");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000731,5,"000731","000731",300,300,0,230,1,0,"","2018-12-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000736,3,"000736","000736",242,242,0,51,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000759,2,"000759","000759",300,300,0,49,1,0,"二店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000762,3,"000762","000762",174,174,0,10,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000763,3,"000763","000763",296,296,0,63,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000765,3,"000765","000765",550,500,0,86,1,0,"三店","2018-06-14");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000766,3,"000766","000766",163,163,0,0,1,0,"三店","2017-12-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000767,5,"000767","000767",110,110,0,0,1,0,"","2019-10-20");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000768,2,"000768","000768",500,500,0,80,1,0,"二店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000770,3,"000770","000770",132,132,0,8,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000775,3,"000775","000775",162,162,0,1257,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000777,2,"000777","000777",300,300,0,7,1,0,"二店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000779,5,"000779","000779",330,330,0,0,1,0,"","2019-05-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000788,5,"000788","000788",500,500,0,0,1,0,"刘关山","2016-12-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000789,5,"000789","000789",500,500,0,68,1,0,"","2019-10-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000793,3,"000793","000793",260,260,0,31,1,0,"三店","2018-10-05");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000795,5,"000795","000795",220,220,0,0,1,0,"","2019-10-22");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000798,3,"000798","000798",330,330,0,188,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000800,3,"000800","000800",222,222,0,44,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000802,5,"000802","000802",330,330,0,160,1,0,"郭","2018-06-08");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000812,3,"000812","000812",300,300,0,128,1,0,"三店","2018-07-06");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000813,5,"000813","000813",110,110,0,2,1,0,"","2019-10-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000815,3,"000815","000815",330,330,0,71,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000816,3,"000816","000816",300,300,0,15,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000818,2,"000818","000818",330,330,0,16,1,0,"二店房东","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(00091,2,"00091","00091",450,450,0,15,1,0,"二店","2018-05-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000920,5,"000920","000920",110,110,0,66,1,0,"","2020-04-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000921,3,"000921","000921",117,117,0,0,1,0,"三店","2020-03-28");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000923,3,"000923","000923",110,110,0,53,1,0,"三店","2020-03-22");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000925,3,"000925","000925",110,110,0,72,1,0,"三店","2020-03-21");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000926,3,"000926","000926",110,110,0,36,1,0,"三店","2020-03-19");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000927,3,"000927","000927",110,110,0,1,1,0,"三店","2020-03-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000928,3,"000928","000928",110,110,0,74,1,0,"三店","2020-03-17");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000929,3,"000929","000929",340,340,0,196,1,0,"三店","2020-03-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(000935,1,"000935","000935",110,110,0,31,1,0,"一店","2020-01-19");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001010,2,"001010","001010",500,500,0,428,1,0,"二店过年送礼","2020-01-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001012,5,"001012","001012",300,300,0,174,1,0,"过年送礼高","2020-01-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001013,5,"001013","001013",500,500,0,436,1,0,"过年送礼刘","2020-01-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001015,2,"001015","001015",500,500,0,500,1,0,"二店过年送礼","2020-01-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001018,5,"001018","001018",500,500,0,500,1,0,"刘玉飞","2020-01-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001035,5,"001035","001035",560,560,0,438,1,0,"","2020-04-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001036,5,"001036","001036",110,110,0,9,1,0,"","2020-04-05");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001037,1,"001037","001037",110,110,0,74,1,0,"一店","2020-04-05");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001038,5,"001038","001038",110,110,0,80,1,0,"","2020-04-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001039,5,"001039","001039",110,110,0,42,1,0,"","2020-03-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001050,1,"001050","001050",300,0,0,300,1,0,"尹所 一店","2020-01-19");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001098,5,"001098","001098",300,300,0,300,1,0,"李娟","2018-09-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001099,5,"001099","001099",110,110,0,220,1,0,"","2020-01-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001100,1,"001100","001100",110,110,0,70,1,0,"一店","2020-01-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001101,2,"001101","001101",300,300,0,0,1,0,"二店","2018-09-22");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001102,2,"001102","001102",300,300,0,0,1,0,"二店","2018-09-22");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001109,5,"001109","001109",340,340,0,182,1,0,"","2020-03-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001118,2,"001118","001118",300,300,0,45,1,0,"二店","2018-07-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001120,5,"001120","001120",220,220,0,28,1,0,"","2020-01-01");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001163,5,"001163","001163",110,110,0,42,1,0,"","2019-11-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001165,5,"001165","001165",500,500,0,387,1,0,"","2019-11-16");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001166,5,"001166","001166",500,500,0,453,1,0,"","2019-11-16");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001167,5,"001167","001167",110,110,0,65,1,0,"","2019-11-27");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001168,5,"001168","001168",110,110,0,0,1,0,"","2019-12-02");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001169,5,"001169","001169",110,110,0,30,1,0,"","2019-12-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001170,5,"001170","001170",110,110,0,64,1,0,"","2019-12-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001171,5,"001171","001171",110,110,0,17,1,0,"","2019-12-16");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001172,5,"001172","001172",110,110,0,0,1,0,"","2019-12-16");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001173,5,"001173","001173",340,340,0,195,1,0,"","2019-12-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001175,5,"001175","001175",110,110,0,80,1,0,"","2020-04-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001176,5,"001176","001176",110,110,0,88,1,0,"","2020-01-01");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001201,5,"001201","001201",340,340,0,48,1,0,"","2019-12-19");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001203,2,"001203","001203",30,30,0,16,1,0,"二店","2020-01-14");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001205,5,"001205","001205",110,110,0,8,1,0,"","2019-11-28");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001206,5,"001206","001206",110,110,0,32,1,0,"","2019-11-26");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001207,5,"001207","001207",340,340,0,89,1,0,"","2019-12-25");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001216,5,"001216","001216",110,110,0,104,1,0,"","2019-12-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001217,5,"001217","001217",220,220,0,2,1,0,"","2019-12-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001218,5,"001218","001218",560,560,0,457,1,0,"","2019-11-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001219,5,"001219","001219",110,110,0,30,1,0,"","2019-11-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001220,5,"001220","001220",110,110,0,196,1,0,"","2019-11-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001221,5,"001221","001221",110,110,0,70,1,0,"","2019-11-17");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001222,5,"001222","001222",110,110,0,61,1,0,"","2019-12-05");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001223,1,"001223","001223",276,276,0,470,1,0,"一店","2019-10-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001225,5,"001225","001225",110,110,0,31,1,0,"","2019-12-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001226,5,"001226","001226",300,300,0,35,1,0,"","2019-09-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001227,2,"001227","001227",300,300,0,140,1,0,"二店","2019-09-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001228,2,"001228","001228",300,300,0,6,1,0,"二店","2019-09-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001229,5,"001229","001229",300,300,0,300,1,0,"房东吴","2019-09-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001230,5,"001230","001230",300,300,0,138,1,0,"物业刘","2019-09-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001236,5,"001236","001236",1000,1000,0,1000,1,0,"","2020-01-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001237,5,"001237","001237",1000,1000,0,1000,1,0,"","2020-01-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001238,5,"001238","001238",340,340,0,2,1,0,"","2019-11-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001239,3,"001239","001239",24,24,0,46,1,0,"三店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(0012452,5,"0012452","0012452",110,110,0,41,1,0,"","2019-11-06");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001250,5,"001250","001250",110,110,0,0,1,0,"","2019-11-04");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001251,5,"001251","001251",110,110,0,80,1,0,"","2019-11-06");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001252,5,"001252","001252",110,110,0,7,1,0,"","2019-11-23");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001253,5,"001253","001253",220,220,0,132,1,0,"","2019-11-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001255,5,"001255","001255",340,340,0,253,1,0,"","2019-11-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001257,5,"001257","001257",110,110,0,17,1,0,"","2019-11-19");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001259,5,"001259","001259",110,110,0,90,1,0,"","2019-12-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001260,5,"001260","001260",340,340,0,158,1,0,"","2019-12-13");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001268,1,"001268","001268",186,186,0,40,1,0,"一店","2018-10-07");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001271,5,"001271","001271",110,110,0,10,1,0,"","2019-11-10");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001275,5,"001275","001275",110,110,0,58,1,0,"","2019-12-09");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001280,5,"001280","001280",330,330,0,150,1,0,"","2019-07-14");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001296,3,"001296","001296",260,260,0,164,1,0,"三店","2018-09-17");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001299,5,"001299","001299",340,340,0,265,1,0,"","2019-12-19");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001300,5,"001300","001300",110,110,0,46,1,0,"","2019-12-24");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001301,5,"001301","001301",110,110,0,84,1,0,"","2020-01-05");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001302,1,"001302","001302",110,110,0,38,1,0,"一店","2020-01-17");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001303,5,"001303","001303",340,340,0,222,1,0,"","2019-12-23");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001305,5,"001305","001305",340,340,0,150,1,0,"","2019-12-21");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001309,5,"001309","001309",110,110,0,0,1,0,"","2019-10-27");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001310,5,"001310","001310",110,110,0,12,1,0,"","2019-10-27");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001311,5,"001311","001311",110,110,0,0,1,0,"","2019-10-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001312,5,"001312","001312",110,110,0,90,1,0,"","2019-11-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001313,5,"001313","001313",220,220,0,46,1,0,"","2019-11-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001315,5,"001315","001315",110,110,0,262,1,0,"","2019-11-21");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001316,3,"001316","001316",340,340,0,269,1,0,"三店","2020-01-21");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001317,5,"001317","001317",110,110,0,48,1,0,"","2019-11-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001318,5,"001318","001318",340,340,0,398,1,0,"","2019-11-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001319,5,"001319","001319",220,220,0,11,1,0,"","2019-11-15");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001320,5,"001320","001320",340,340,0,80,1,0,"","2019-11-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001321,2,"001321","001321",110,110,0,56,1,0,"二店","2020-01-02");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001322,2,"001322","001322",340,340,0,29,1,0,"二店","2019-12-11");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001323,5,"001323","001323",110,110,0,72,1,0,"","2019-12-18");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001325,5,"001325","001325",110,110,0,14,1,0,"","2019-12-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001328,2,"001328","001328",300,300,0,25,1,0,"二店","2018-04-29");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001329,5,"001329","001329",110,110,0,78,1,0,"","2020-01-12");
insert into customers(vip_card,resturant_id,customer_name,tel,start_money,start_money_r,gift_money,money,status,score,notes,create_time) value(001330,3,"001330","001330",110,110,0,0,1,0,"三店","2020-01-17");

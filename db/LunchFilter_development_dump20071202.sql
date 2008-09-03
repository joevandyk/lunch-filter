# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.0.27-max)
# Database: LunchFilter_development
# Generation Time: 2007-02-12 16:04:54 -0800
# ************************************************************

# Dump of table blocks
# ------------------------------------------------------------

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL auto_increment,
  `street_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `sort` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `blocks` (`id`,`street_id`,`name`,`sort`) VALUES ('1','1','52nd','1');
INSERT INTO `blocks` (`id`,`street_id`,`name`,`sort`) VALUES ('2','1','50th','2');
INSERT INTO `blocks` (`id`,`street_id`,`name`,`sort`) VALUES ('3','1','47th','3');
INSERT INTO `blocks` (`id`,`street_id`,`name`,`sort`) VALUES ('4','1','45th','4');
INSERT INTO `blocks` (`id`,`street_id`,`name`,`sort`) VALUES ('5','1','43rd','5');
INSERT INTO `blocks` (`id`,`street_id`,`name`,`sort`) VALUES ('6','1','42nd','6');


# Dump of table cities
# ------------------------------------------------------------

CREATE TABLE `cities` (
  `id` int(11) NOT NULL auto_increment,
  `created_at` datetime default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `cities` (`id`,`created_at`,`name`) VALUES ('1','2007-02-02 23:10:53','Seattle');
INSERT INTO `cities` (`id`,`created_at`,`name`) VALUES ('2','2007-02-03 23:10:53','San Francisco');


# Dump of table cuisines
# ------------------------------------------------------------

CREATE TABLE `cuisines` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

INSERT INTO `cuisines` (`id`,`name`) VALUES ('34','Bubble Tea');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('2','American F*** Ya!!');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('33','Pizza');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('4','Bakery');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('5','Barbecue');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('6','Burger Joint');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('7','Coffee Shop');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('8','Caribbean');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('9','Chinese');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('10','Deli');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('11','Diner');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('12','Ethiopian/Eritrean');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('13','Filipino');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('14','Hawaiian');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('15','Hippie-Dippie');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('16','Indian');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('17','Italian');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('18','Japanese');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('19','Korean');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('20','Latin American');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('21','Meditarranean/Greek');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('22','Mexican');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('23','Middle Eastern');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('24','Pub Grub');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('25','Seafood');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('26','Sushi');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('27','Thai');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('28','Vegetarian');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('29','Vietnamese');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('30','Sandwiches');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('31','Ice Cream');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('35','Indonesian');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('36','Tea');
INSERT INTO `cuisines` (`id`,`name`) VALUES ('37','Teriyaki');


# Dump of table cuisines_restaurants
# ------------------------------------------------------------

CREATE TABLE `cuisines_restaurants` (
  `restaurant_id` int(11) default NULL,
  `cuisine_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('56','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('55','36');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('55','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('52','16');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('51','5');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('50','6');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('50','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('54','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('65','27');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('64','27');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('41','33');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('41','17');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('62','21');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('61','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('60','21');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('58','19');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('58','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('57','21');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('63','37');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('43','9');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('44','13');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('63','26');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('42','16');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('53','21');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('45','18');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('45','26');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('46','5');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('46','14');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('47','34');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('48','35');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('49','8');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('59','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('65','28');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('66','33');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('67','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('68','19');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('69','9');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('70','21');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('71','21');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('71','34');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('72','21');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('72','31');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('73','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('74','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('75','23');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('75','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('76','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('76','34');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('77','26');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('77','37');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('78','24');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('79','4');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('80','37');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('81','31');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('81','37');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('82','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('83','28');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('83','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('84','26');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('84','37');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('85','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('85','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('86','9');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('86','28');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('87','29');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('88','22');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('89','24');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('90','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('91','29');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('92','29');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('93','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('93','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('94','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('94','6');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('95','9');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('96','27');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('97','29');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('98','17');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('99','27');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('98','33');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('100','27');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('101','16');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('102','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('103','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('103','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('104','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('105','23');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('106','9');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('106','27');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('107','24');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('107','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('107','33');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('108','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('108','6');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('108','19');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('108','26');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('108','30');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('108','37');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('109','29');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('109','34');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('110','22');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('111','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('111','6');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('112','19');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('112','26');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('112','37');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('113','7');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('113','36');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('114','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('114','6');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('115','2');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('115','6');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('115','19');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('115','26');
INSERT INTO `cuisines_restaurants` (`restaurant_id`,`cuisine_id`) VALUES ('115','37');


# Dump of table restaurants
# ------------------------------------------------------------

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL auto_increment,
  `street_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `name` varchar(255) default NULL,
  `yelp_url` varchar(255) default NULL,
  `husky_card` int(1) default NULL,
  `coupon_url` varchar(255) default NULL,
  `side` varchar(12) default NULL,
  `delivery` int(1) default NULL,
  `block_id` int(11) default NULL,
  `top` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('56','1','2007-02-12 14:35:08','Subs Sandwiches','http://www.yelp.com/biz/lbGxgu8kwebOok4A9qK-qg','0','','right','0','2','10');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('63','1','2007-02-12 14:41:02','The Light Gourmet','http://www.yelp.com/biz/PzN_ajAY0ymgsvzDcoUpVg','0','','left','0','3','250');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('61','1','2007-02-12 14:39:19','Starbucks','','0','','left','0','3','80');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('62','1','2007-02-12 14:40:07','Continental Restaurant & Pastry Shop','http://www.yelp.com/biz/798-eBr6EdOJktDT74fj2Q','0','','left','0','3','200');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('55','1','2007-02-12 14:29:26','Shinka Tea','http://www.yelp.com/biz/ip8eIHu1LbSRctR5mFJAKQ','0','','left','0','2','550');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('50','1','2007-02-12 14:23:20','Jack in the Box','http://www.yelp.com/biz/-bAChktR6cdIjyxrxCVmSg','0','','left','0','2','10');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('60','1','2007-02-12 14:38:45','Costas','http://www.yelp.com/biz/3TEdx5lOu6f1rVLVJSpxgw','0','','left','0','3','15');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('41','1','2007-02-12 14:09:04','A-Pizza Mart','http://www.yelp.com/biz/dVQTURtUfe5F7aL7hA5f6A','0','http://www.thesurvivalkit.com/apizzamart.htm','right','1','1','310');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('42','1','2007-02-12 14:13:41','Tandoor','http://www.yelp.com/biz/dVQTURtUfe5F7aL7hA5f6A','0','','right','0','1','350');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('43','1','2007-02-12 14:15:02','Mandarin Chef','http://www.yelp.com/biz/bLRet5wIxuGym7AXtIHdHg','0','','right','0','1','390');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('44','1','2007-02-12 14:15:39','Inay\'s Manila Grill','http://www.yelp.com/biz/2gdDA6rNrBSVfccbpQytdQ','0','','right','0','1','430');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('45','1','2007-02-12 14:16:55','Kiku Tempura House','http://www.yelp.com/biz/2gdDA6rNrBSVfccbpQytdQ','0','','left','0','1','480');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('74','1','2007-02-12 15:23:59','Sub shop','http://www.yelp.com/biz/gbsK2t2FmOcJg8GpgkINMA','0','','right','0','3','680');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('46','1','2007-02-12 14:17:31','Hawaii BBQ Restaurant','http://www.yelp.com/biz/cvDsVQAPUd3-9MgzskbN8g','0','','right','0','1','520');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('47','1','2007-02-12 14:18:27','Pochi Tea Station','http://www.yelp.com/biz/DCk27lbp82tOEPSNCvF4lQ','0','','right','0','1','560');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('48','1','2007-02-12 14:19:45','Padi','','0','','right','0','1','610');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('49','1','2007-02-12 14:20:31','Pam\'s Kitchen','http://www.yelp.com/biz/n4A61MWiTz6ZpiUBVQLcjA','0','','right','0','1','680');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('51','1','2007-02-12 14:24:05','Smokin\' Dick\'s','http://www.yelp.com/biz/xVsP0TfKWFjsqzfJDfg01A','1','http://www.thesurvivalkit.com/smokindicksuw.htm','left','0','2','240');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('52','1','2007-02-12 14:26:34','Jewel of India','http://www.yelp.com/biz/AsgtzyqpdjuPyjaEUVcUXA','1','http://www.thesurvivalkit.com/jewelofindia.htm','left','0','2','360');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('53','1','2007-02-12 14:27:15','Fournos Greek Taverna','http://www.yelp.com/biz/AsgtzyqpdjuPyjaEUVcUXA','0','','left','0','2','420');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('54','1','2007-02-12 14:27:53','Da Vinci Subs','http://www.yelp.com/biz/xpjyZ-hp_uosVmN81RMgMw','0','','left','0','2','500');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('57','1','2007-02-12 14:35:40','Fairuz','http://www.yelp.com/biz/DH4Gy9e9rPYpHl0fv8Zwzw','0','','right','0','2','50');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('58','1','2007-02-12 14:36:35','Sunny\'s Korean Cafe','','0','','right','0','2','310');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('59','1','2007-02-12 14:37:25','Tully\'s','','0','','right','0','2','830');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('64','1','2007-02-12 14:42:30','Thai Toms','http://www.yelp.com/biz/9YeSEzr8HZMCuQlAyr8FPw','0','','left','0','3','300');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('65','1','2007-02-12 14:42:54','Veggie Veggie','http://www.yelp.com/biz/q9Pvi8sO3FKQ_QpbRA_TiQ','0','','left','0','3','350');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('66','1','2007-02-12 14:43:38','Pagliacci','http://www.yelp.com/biz/w5zZ8k4Z83q2UyYsCrlwCA','0','http://www.thesurvivalkit.com/pagliacci.htm','left','0','3','400');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('67','1','2007-02-12 14:44:07','Lounjin','','0','','left','0','3','440');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('68','1','2007-02-12 14:46:41','University Korean','http://www.yelp.com/biz/KX4oiVIK0IFiW0Lb50U9xA','0','','left','0','3','490');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('69','1','2007-02-12 14:47:24','Ruzhen Mongolian Grill','http://www.yelp.com/biz/PzN_ajAY0ymgsvzDcoUpVg','0','','left','0','3','540');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('70','1','2007-02-12 14:47:56','Pita Pit','http://www.yelp.com/biz/wuFhW1gVqMvaB-AKPQDrWw','1','http://www.thesurvivalkit.com/pitapituw.htm','left','0','3','630');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('71','1','2007-02-12 14:48:58','Yunnie Bubble Tea','http://www.yelp.com/biz/3BG1niOE6fJiIIk1-04sjg','1','','left','0','3','700');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('72','1','2007-02-12 14:49:28','The Mix','http://www.yelp.com/biz/We6t5BJ0csWzJoS39QAI_A','1','http://www.thesurvivalkit.com/mix.htm','left','0','3','770');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('73','1','2007-02-12 14:49:58','Sure Shot','http://www.yelp.com/biz/eCjyvPJuS8-0Vzad8XuWcQ','1','','left','0','3','820');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('75','1','2007-02-12 15:24:31','Cafe Crepe','http://www.yelp.com/biz/YXL9iRWJi5qyol0idk3Wpw','0','','right','0','3','720');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('76','1','2007-02-12 15:25:14','Gingko Tea','http://www.yelp.com/biz/-0l7GHrnQbmkpslVGtmHcw','0','','left','0','4','80');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('77','1','2007-02-12 15:25:57','Tokyo Gardens','http://www.yelp.com/biz/z7543gTRoewwvk72MwqvGg','0','','left','0','4','140');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('78','1','2007-02-12 15:26:43','Earl\'s','http://www.thesurvivalkit.com/paulsitaliankitchenuw.htm','0','','left','0','4','190');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('79','1','2007-02-12 15:27:12','Saiko','http://www.yelp.com/biz/WYt-PO5iJQFS1igvVkXXCw','0','','left','0','4','535');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('80','1','2007-02-12 15:27:45','Nasai','http://www.yelp.com/biz/U1JuxM8LkrntNpiDntMtzw','0','','left','0','4','590');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('81','1','2007-02-12 15:28:32','Haagen Dazs','http://www.yelp.com/biz/OR7JLon2EQVV-ZqqgCAdkw','0','http://www.thesurvivalkit.com/haagendazs.htm','left','0','4','650');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('82','1','2007-02-12 15:29:27','University Bookstore','University Bookstore','1','http://www.thesurvivalkit.com/ubooks.htm','right','0','4','480');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('83','1','2007-02-12 15:30:38','Flowers','http://www.yelp.com/biz/lwL27h7CpiHfWkyQlSiJnw','0','','left','0','5','10');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('84','1','2007-02-12 15:31:13','Best of Bento','http://www.yelp.com/biz/z7543gTRoewwvk72MwqvGg','0','http://www.thesurvivalkit.com/bestofbento.htm','left','0','5','70');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('85','1','2007-02-12 15:31:47','Ruby','http://www.yelp.com/biz/UBYFFyRtAV9_-akBPjdoSw','0','','left','0','5','110');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('86','1','2007-02-12 15:32:23','China First','http://www.yelp.com/biz/UBYFFyRtAV9_-akBPjdoSw','0','http://www.thesurvivalkit.com/china1st.htm','left','0','5','150');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('87','1','2007-02-12 15:33:17','Pho Vietnam 2','','0','','left','0','5','190');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('88','1','2007-02-12 15:33:45','Chipotle','http://www.yelp.com/biz/ZARzNb8x2KT8qiNw3ZWE4Q','1','','left','0','5','250');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('89','1','2007-02-12 15:34:16','Finn McCool\'s','http://www.yelp.com/biz/ZARzNb8x2KT8qiNw3ZWE4Q','1','','left','0','5','410');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('90','1','2007-02-12 15:35:31','Subway','http://www.yelp.com/biz/AXQhTGR3PLFk1TW72CbqvA','0','http://www.thesurvivalkit.com/subwayuw.htm','left','0','5','460');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('91','1','2007-02-12 15:35:59','Pho Tran','http://www.yelp.com/biz/AUz4akyLb32J7SDa_nKgMQ','0','','left','0','5','510');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('92','1','2007-02-12 15:36:25','Than Brothers','http://www.yelp.com/biz/4HBKsjdGHutH3TflSa4QhA','0','','left','0','5','595');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('93','1','2007-02-12 15:37:01','Cafe on the Ave','http://www.yelp.com/biz/e5fWoLchFxXDpudnqSa9lQ','0','http://www.thesurvivalkit.com/cafeontheaveuw.htm','left','0','5','650');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('94','1','2007-02-12 15:38:50','A Burger Place','http://www.yelp.com/biz/NuvWsd7os1l6Pp4Map1xPw','0','','right','0','5','205');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('95','1','2007-02-12 15:39:18','New China Xpress','http://www.yelp.com/biz/hpoUWb4V9t58CxfdNMYigg','0','','right','1','5','255');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('96','1','2007-02-12 15:39:43','Thaiger Room','http://www.yelp.com/biz/J-ZPcFUV3FI1LA6KoMnFzA','0','','right','1','5','305');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('97','1','2007-02-12 15:40:13','Thanh Vi','http://www.yelp.com/biz/EOoj2h1Brzk1AhqScvIHDA','0','','left','0','5','365');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('98','1','2007-02-12 15:40:50','Pizza Brava','http://www.yelp.com/biz/MMHPceVb926Y60Tzd1aTOg','1','http://www.thesurvivalkit.com/pizzabravauw.htm','left','0','5','415');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('99','1','2007-02-12 15:41:52','Appethai','http://www.yelp.com/biz/WXajgebU9cnxHFFmIiZvew','0','http://www.thesurvivalkit.com/appethaiuw.htm','left','0','5','470');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('100','1','2007-02-12 15:42:16','Thai 65','http://www.yelp.com/biz/gIA1JWri0CQlN3QO4jtzaAhttp://www.yelp.com/biz/gIA1JWri0CQlN3QO4jtzaA','0','http://www.thesurvivalkit.com/appethaiuw.htm','left','0','5','520');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('101','1','2007-02-12 15:42:54','Shalimar','http://www.yelp.com/biz/RvgLI-vSsr-l7buDh1vZgw','0','http://www.thesurvivalkit.com/shalimar.htm','right','0','5','560');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('102','1','2007-02-12 15:43:31','Bulldog News','http://www.yelp.com/biz/KX4oiVIK0IFiW0Lb50U9xA','0','','right','0','5','640');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('103','1','2007-02-12 15:44:59','Starbucks','','0','','left','0','6','30');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('104','1','2007-02-12 15:45:30','Jimmy John\'s','http://www.yelp.com/biz/Ea-ZuT5DKD188BpRMTDyGA','0','','left','1','6','90');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('105','1','2007-02-12 15:52:24','Aladdin','http://www.yelp.com/biz/Y2--1IoNBmYUrfwNOIjTdw','0','','left','1','6','130');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('106','1','2007-02-12 15:53:01','Spicy Wok','','0','','left','0','6','170');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('107','1','2007-02-12 15:53:28','Big Time Brewery','http://www.yelp.com/biz/WxUTo2tUjcN5AxA6UzRFfw','0','','left','0','6','210');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('108','1','2007-02-12 15:54:16','Yummy Bites','http://www.yelp.com/biz/NtNAjOsre1y4rPsZ9UJ0yA','1','','left','0','6','250');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('109','1','2007-02-12 15:54:53','Pho Thy Thy','http://www.yelp.com/biz/LeP4UZpXfeb83gMmRHUWBQ','1','','left','0','6','300');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('110','1','2007-02-12 15:55:21','Gran Sabor','','0','','right','0','6','15');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('111','1','2007-02-12 15:55:46','Buger Hut','http://www.yelp.com/biz/XQcSFSkoD7N_VcFGbMmobw','0','','right','0','6','90');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('112','1','2007-02-12 15:56:26','Ichiro','http://www.yelp.com/biz/eAtgP6XcUjRVK8dh8foZdQ','1','','right','0','6','385');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('113','1','2007-02-12 15:57:07','Solstice','http://www.yelp.com/biz/AXQhTGR3PLFk1TW72CbqvA','0','','right','0','6','435');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('114','1','2007-02-12 15:57:49','Schultzy\'s','http://www.yelp.com/biz/dM7aCIJT_cWH3BNgMi9dNw','0','','left','0','6','490');
INSERT INTO `restaurants` (`id`,`street_id`,`created_at`,`name`,`yelp_url`,`husky_card`,`coupon_url`,`side`,`delivery`,`block_id`,`top`) VALUES ('115','1','2007-02-12 15:58:42','University Teriyaki','http://www.yelp.com/biz/KX4oiVIK0IFiW0Lb50U9xA','1','','right','0','6','545');


# Dump of table streets
# ------------------------------------------------------------

CREATE TABLE `streets` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` tinytext,
  `created_at` datetime default NULL,
  `url_name` varchar(255) default NULL,
  `city_id` int(11) default NULL,
  `neighborhood_url` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO `streets` (`id`,`name`,`description`,`created_at`,`url_name`,`city_id`,`neighborhood_url`) VALUES ('1','The Ave','A description for the ave','2007-01-18 23:21:17','theave','1','http://www.yelp.com/search?find_loc=Seattle%2C+WA+98105&z=12&nflt=University+District%5ESeattle%5EWA');
INSERT INTO `streets` (`id`,`name`,`description`,`created_at`,`url_name`,`city_id`,`neighborhood_url`) VALUES ('6','Lake City Way','Ghetto as Hell','2007-01-19 10:10:01','lakecity','1','http://www.yelp.com/search?find_loc=Seattle%2C+WA+98105&z=12&nflt=University+District%5ESeattle%5EWA');
INSERT INTO `streets` (`id`,`name`,`description`,`created_at`,`url_name`,`city_id`,`neighborhood_url`) VALUES ('7','Ballard Ave','Slow movin on ballard ave','2007-02-04 23:10:53','ballard','1','http://www.yelp.com/search?find_loc=Seattle%2C+WA+98105&z=12&nflt=University+District%5ESeattle%5EWA');



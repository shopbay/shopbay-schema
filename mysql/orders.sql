-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Orders', 1, 'Merchant Orders', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Orders.Merchant.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Orders.Merchant.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Orders.MerchantPO.Index', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Customer Orders', 1, 'Customer Orders', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Orders.Customer.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Orders.Customer.View', 0, NULL, NULL, 'N;');

--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Orders');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Orders', 'Orders.Merchant.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Orders', 'Orders.Merchant.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Orders', 'Orders.MerchantPO.Index');

INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Orders');
INSERT INTO `s_auth_itemchild` VALUES('Customer Orders', 'Orders.Customer.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Orders', 'Orders.Customer.View');

-- --------------------------------------------------------
--
-- Table structure for table `s_order`
--;
DROP TABLE IF EXISTS `s_order`;
CREATE TABLE IF NOT EXISTS `s_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(12) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `item_total` decimal(10,2) NOT NULL,
  `item_count` tinyint(4) NOT NULL,
  `item_weight` int(11) DEFAULT NULL,
  `item_shipping` varchar(2500) NOT NULL COMMENT 'schema refer to ShippableBehavior. This column stored json encoded item_shipping in different languages. It buffers about 20 languages, assuming each takes 100 chars.',
  `payment_method` varchar(1500) NOT NULL COMMENT 'schema refer to PaymentFormBehavior. This column stored json encoded payment_method in different languages. It buffers about 20 languages, assuming each takes 50 chars.',
  `currency` varchar(3) NOT NULL,
  `weight_unit` varchar(3) NOT NULL,
  `discount` varchar(2000) DEFAULT NULL COMMENT 'json encoded, schema refer to DiscountableBehavior',
  `tax` varchar(500) DEFAULT NULL COMMENT 'json encoded, schema refer to TaxableBehavior',
  `shipping_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `refund` varchar(1000) DEFAULT NULL COMMENT 'json encoded, schema refer to RefundableBehavior',
  `remarks` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL COMMENT 'refer to s_workflow',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Constraints for table `s_order`
--;
ALTER TABLE `s_order`
 ADD CONSTRAINT `s_order_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_order_address`
--;
DROP TABLE IF EXISTS `s_order_address`;
CREATE TABLE `s_order_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `recipient` varchar(32) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL COMMENT 'used for guest checkout',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_order_address`
--;
ALTER TABLE `s_order_address`
  ADD CONSTRAINT `s_order_address_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `s_order` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_shipping_order`
--;
DROP TABLE IF EXISTS `s_shipping_order`;
CREATE TABLE IF NOT EXISTS `s_shipping_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL COMMENT 'Refer to merchant account at s_account',
  `shop_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `shipping_no` varchar(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `item_total` decimal(10,2) NOT NULL,
  `item_count` tinyint(4) NOT NULL,
  `item_shipping` varchar(2500) NOT NULL COMMENT 'json encoded data, schema refer to ShippableBehavior',
  `payment_method` varchar(1500) NOT NULL COMMENT 'schema refer to PaymentFormBehavior. This column stored json encoded payment_method in different languages. It buffers about 20 languages, assuming each takes 50 chars.',
  `discount` varchar(2000) DEFAULT NULL COMMENT 'json encoded, schema refer to DiscountableBehavior',
  `tax` varchar(500) DEFAULT NULL COMMENT 'json encoded, schema refer to TaxableBehavior',
  `grand_total` decimal(10,2) NOT NULL,
  `refund` varchar(1000) DEFAULT NULL COMMENT 'json encoded, schema refer to RefundableBehavior',
  `status` varchar(10) NOT NULL COMMENT 'refer to s_workflow',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `shop_id` (`shop_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_shipping_order`
--;
ALTER TABLE `s_shipping_order`
  ADD CONSTRAINT `s_shipping_order_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `s_order` (`id`),
  ADD CONSTRAINT `s_shipping_order_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`),
  ADD CONSTRAINT `s_shipping_order_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);


-- --------------------------------------------------------
--
-- Insert a demo order record
-- demo order record belongs to GUEST account
--;
INSERT INTO `s_order` (`id`, `account_id`, `shop_id`, `order_no`, `item_total`, `item_count`, `item_weight`, `item_shipping`, `currency`, `weight_unit`, `shipping_total`, `discount`, `tax`, `grand_total`, `payment_method`, `remarks`, `status`, `create_time`, `update_time`) VALUES
(-1, -1, -1, 'ORDER_NO', '10.00', 1, 10, '{"-1":{"shop_id":"-1","shipping_id":"-1","shipping_name":"Tiered Fee by Order Subtotal","shipping_method":{"value":"1","description":"Home Delivery"},"shipping_type":{"value":"2","description":"Tiered Fee"},"shipping_speed":null,"shipping_rate_text":["From $0.00 to $999.00: $1.00"],"shipping_rate":"1.00","price":30,"weight":10,"shipping_surcharge":0,"shipping_fee":1,"grand_total":31}}', 'SGD', 'g', '1.00', '{"total":-16.8,"has_sale":true,"sale_data":{"offer_price":22.4,"has_offer":true,"discount":-5.6,"discount_text":"($5.60)","campaign":{"id":"4","shop":"3","type":"CampaignSale","name":"Storewide 20% discount for $20 above","sale_value":"20.00","sale_type":"A","offer_value":"20","offer_type":"P","offer_tag":"20% Off","validity":"Valid from 2014-10-31 to 2015-01-31","text":"Store wide 20% discount minimum purchase $20.00"},"free_shipping":false},"has_promo":true,"promo_data":{"promocode":"HELLOPROMO","offer_price":11.2,"has_offer":true,"discount":-11.2,"discount_text":"($11.20)","discount_tip":"HELLOPROMO Promocode discount","campaign":{"id":"3","shop":"3","type":"CampaignPromocode","code":"HELLOPROMO","offer_value":"50","offer_type":"P","validity":"Valid from 2015-01-03 to 2015-02-10","text":"50% off"},"free_shipping":false},"free_shipping":true,"shipping_data":{"free":true,"by_sale":true,"by_promo":false}}', '{"1":"GST|0.21|$0.21|0.07|7%","6":"{\\"en_sg\\":\\"ABC\\",\\"zh_cn\\":\\"\\\\u4e2d\\\\u6587\\\\u7a0e\\\\u8d39ABC\\"}|0.03|$0.03|0.01|1%"}', '24.80', '{"id":"-1","modelClass":"PaymentMethod","name":{"en_sg":"ATM\\/Cash Bank-in","zh_cn":"ATM\\/\\u73b0\\u91d1\\u5b58\\u5165"},"mode":"101","custom":true}', '', 'O;', 1409842228, 1409842228);

INSERT INTO `s_order_address` (`id`, `order_id`, `recipient`, `mobile`, `address1`, `address2`, `postcode`, `city`, `state`, `country`, `create_time`, `update_time`) VALUES
(-1, -1, 'Mr Recipient', '123434322', '1 Buyer Street', '', '123456', 'SG', 'SG', 'Singapore', 1409842228, 1409842228);

INSERT INTO `s_shipping_order` (`id`, `account_id`, `shop_id`, `shipping_id`, `shipping_no`, `order_id`, `order_no`, `item_total`, `item_count`, `item_shipping`, `payment_method`, `discount`, `tax`, `grand_total`, `refund`, `status`, `create_time`, `update_time`) VALUES
(-1, -1, -1, -1, 'SHPPING_ORDER_NO', -1, 'ORDER_NO', '30.00', 1, 
'{"-1":{"shop_id":"-1","shipping_id":"-1","shipping_name":"Tiered Fee by Order Subtotal","shipping_method":{"value":"1","description":"Home Delivery"},"shipping_type":{"value":"2","description":"Tiered Fee"},"shipping_speed":null,"shipping_rate_text":["From $0.00 to $999.00: $1.00"],"shipping_rate":"1.00","price":30,"weight":10,"shipping_surcharge":0,"shipping_fee":1,"grand_total":31}}', '{"id":"-1","modelClass":"PaymentMethod","name":{"en_sg":"ATM\\/Cash Bank-in","zh_cn":"ATM\\/\\u73b0\\u91d1\\u5b58\\u5165"},"mode":"101","custom":true}', 
'{"total":-13.8,"has_sale":true,"sale_data":{"offer_price":18.4,"has_offer":true,"discount":-4.6,"discount_text":"($4.60)","campaign":{"id":"4","shop":"3","type":"CampaignSale","name":"Storewide 20% discount for $20 above","sale_value":"20.00","sale_type":"A","offer_value":"20","offer_type":"P","offer_tag":"20% Off","validity":"Valid from 2014-10-31 to 2015-01-31","text":"Store-wide discount 20% min purchase $20.00"}},"has_promo":true,"promo_data":{"promocode":"HELLOPROMO","offer_price":9.2,"has_offer":true,"discount":-9.2,"discount_text":"($9.20)","discount_tip":"Promocode discount","campaign":{"id":"3","shop":"3","type":"CampaignPromocode","code":"HELLOPROMO","offer_value":"50","offer_type":"P","validity":"Valid from 2015-01-03 to 2015-02-10","text":"50% Off"}}}', 
'{"1":"GST 7%|0.644|$0.64|0.07","4":"VAT 10%|0.92|$0.92|0.10"}',
'31.00', 
'{"obj_type":"ShippingOrder","obj_id":"-1","include_shipping_rate":false,"actual_amount":12,"items":{"-1":{"amount":12,"shipping_surcharge":0,"refund_suggestion":12}},"supporting_info":"This refund is triggered from item refund. Please note that the displayed refund amount is derived from item refund total and may not be actual."}', 
'O;FFL;', 1409842228, 1409844218);

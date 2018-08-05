-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Customer Items', 1, 'Customer Items', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Items.Customer.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Items.Customer.View', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant Items', 1, 'Merchant Items', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Items.Merchant.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Items.Merchant.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Items.Merchant.ReviewReply', 0, NULL, NULL, 'N;');

--;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Items');
INSERT INTO `s_auth_itemchild` VALUES('Customer Items', 'Items.Customer.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Items', 'Items.Customer.View');

INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Items');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Items', 'Items.Merchant.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Items', 'Items.Merchant.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Items', 'Items.Merchant.ReviewReply');

-- --------------------------------------------------------
--
-- Table structure for table `s_item`
--;
DROP TABLE IF EXISTS `s_item`;
CREATE TABLE `s_item` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(12) NOT NULL COMMENT 'account id, can be main or sub account',
  `order_id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `shipping_order_id` int(11) DEFAULT NULL,
  `shipping_order_no` varchar(20) DEFAULT NULL,
  `tracking_no` varchar(20) DEFAULT NULL,
  `tracking_url` varchar(500) DEFAULT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `unit_price` decimal(10,2) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `payment_method` varchar(1500) DEFAULT NULL COMMENT 'schema refer to PaymentFormBehavior. This column stored json encoded payment_method in different languages. It buffers about 20 languages, assuming each takes 50 chars.',
  `campaign` varchar(5000) DEFAULT NULL COMMENT 'json encoding (multi-lang)',
  `options` varchar(5000) DEFAULT NULL COMMENT 'This column stored json encoded options in different languages. It buffers about 20 languages and 5 options, assuming each option takes 50 chars.',
  `option_fee` decimal(10,2) DEFAULT '0.00',
  `quantity` int(3) NOT NULL DEFAULT '1',
  `total_price` decimal(10,2) NOT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `shipping_surcharge` decimal(10,2) DEFAULT '0.00',
  `shop_id` int(11) NOT NULL COMMENT 'refer to s_shop.id',
  `shipping_id` int(11) NOT NULL COMMENT 'refer to s_shipping.id',
  `product_id` int(11) NOT NULL COMMENT 'refer to s_product.id',
  `product_sku` varchar(30) NOT NULL COMMENT 'refer to s_inventory.sku',
  `product_url` varchar(500) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_review` int(11) DEFAULT NULL COMMENT 'refer to s_comment.id',
  `currency` char(3) NOT NULL,
  `weight_unit` char(3) NOT NULL,
  `refund` varchar(500) DEFAULT NULL COMMENT 'json encoded, schema refer to RefundableBehavior',
  `status` varchar(20) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_item`
--;
ALTER TABLE `s_item`
  ADD CONSTRAINT `s_item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `s_order` (`id`);

-- --------------------------------------------------------
--
-- Insert a demo order record
-- demo item record belongs to GUEST account
--;
INSERT INTO `s_item` (`id`, `account_id`, `order_id`, `order_no`, `shipping_order_id`, `shipping_order_no`, `tracking_no`, `tracking_url`, `name`, `unit_price`, `weight`, `payment_method`, `campaign`, `options`, `option_fee`, `quantity`, `total_price`, `total_weight`, `shipping_surcharge`, `shop_id`, `product_id`, `product_sku`, `product_url`, `product_image`, `shipping_id`, `product_review`, `currency`, `weight_unit`, `status`, `create_time`, `update_time`) VALUES
(-1, -1, -1, 'ORDER_NO', -1, 'SHIPPING_ORDER', 'Shopbay Carrier', 'http://shopbaycarrier.org/track', 'Sample Item Name', '3.00', 3, NULL, '{"campaign_id":"4","campaign_model":"CampaignBga","campaign_name":"Buy X At $1 discount","campaign_offer_type":"A","campaign_text":"Buy 1 At $1.00 off","campaign_at_offer":"1","campaign_offer_tag":"$1.00 off","campaign_offer_price":2,"campaign_usual_price":3,"campaign_item":true,"affinity_key":null}', '{"eyJ6aF9jbiI6Ilx1OTg5Y1x1ODI3MiIsImVuX3NnIjoiQ29sb3IifQ==":"eyJ6aF9jbiI6Ium7hCIsImVuX3NnIjoiWWVsbG93In0=|"}', NULL, 1, '2.00', NULL, '0.00', -1, -1, 'SAMPLE_SKU', 'http://www.shopbay.org/product/demo-item', 'http://www.shopbay.org/files/images/default.jpg', -1, NULL, 'SGD', 'g', 'COM;', 1409976298, 1414215473);

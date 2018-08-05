-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Campaigns', 1, 'Merchant Campaigns', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Bga.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Sale.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Promocode.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Promocode.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Promocode.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Promocode.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Promocode.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Promocode.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Campaigns.Promocode.Deactivate', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Campaigns');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Bga.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Sale.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Promocode.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Promocode.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Promocode.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Promocode.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Promocode.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Promocode.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Campaigns', 'Campaigns.Promocode.Deactivate');

-- --------------------------------------------------------
--
-- Table structure for table `s_campaign_bga`
--;
DROP TABLE IF EXISTS `s_campaign_bga`;
CREATE TABLE IF NOT EXISTS `s_campaign_bga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `buy_x` int(11) NOT NULL COMMENT 'foreign key to s_product',
  `buy_x_qty` int(11) NOT NULL DEFAULT '1',
  `get_y` int(11) DEFAULT NULL,
  `get_y_qty` int(11) DEFAULT NULL,
  `at_offer` int(8) NOT NULL DEFAULT '0',
  `offer_type` char(1) NOT NULL COMMENT 'F=Free,P=Percentage,A=Amount',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `image` int(11) NULL,
  `description` text COMMENT 'This column stored json encoded description in different languages.',
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buy_x` (`buy_x`),
  KEY `account_id` (`account_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_campaign_bga`
--;
ALTER TABLE `s_campaign_bga`
  ADD CONSTRAINT `s_campaign_bga_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`),
  ADD CONSTRAINT `s_campaign_bga_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`),
  ADD CONSTRAINT `s_campaign_bga_ibfk_3` FOREIGN KEY (`buy_x`) REFERENCES `s_product` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_campaign_sale`
--;
DROP TABLE IF EXISTS `s_campaign_sale`;
CREATE TABLE IF NOT EXISTS `s_campaign_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `sale_type` char(1) NOT NULL COMMENT 'A=Amount,Q=Quantity',
  `sale_value` decimal(10,2) NOT NULL,
  `offer_type` char(1) NOT NULL COMMENT 'P=Percentage,A=Amount',
  `offer_value` int(8) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `image` int(11) NULL,
  `description` text COMMENT 'This column stored json encoded description in different languages.',
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for table `s_campaign_sale`
--;
ALTER TABLE `s_campaign_sale`
  ADD CONSTRAINT `s_campaign_sale_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`),
  ADD CONSTRAINT `s_campaign_sale_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_campaign_shipping`
--;
DROP TABLE IF EXISTS `s_campaign_shipping`;
CREATE TABLE IF NOT EXISTS `s_campaign_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL COMMENT 'refer to s_campaign_bga etc',
  `shipping_id` int(11) NOT NULL,
  `surcharge` decimal(10,2) DEFAULT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
-- Nil;

-- --------------------------------------------------------
--
-- Table structure for table `s_campaign_promocode`
--;
DROP TABLE IF EXISTS `s_campaign_promocode`;
CREATE TABLE IF NOT EXISTS `s_campaign_promocode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `offer_type` char(1) NOT NULL COMMENT 'P=Percentage,A=Amount',
  `offer_value` int(8) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for table `s_campaign_promocode`
--;
ALTER TABLE `s_campaign_promocode`
  ADD CONSTRAINT `s_campaign_promocode_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`),
  ADD CONSTRAINT `s_campaign_promocode_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);


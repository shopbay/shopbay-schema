-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Shippings', 1, 'Merchant Shippings', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Zone.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Zone.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Zone.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Zone.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Zone.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shippings.Management.Deactivate', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Shippings');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Zone.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Zone.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Zone.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Zone.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Zone.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shippings', 'Shippings.Management.Deactivate');
-- --------------------------------------------------------
--
-- Table structure for table `s_zone`
--;
DROP TABLE IF EXISTS `s_shipping_tier`;
DROP TABLE IF EXISTS `s_shipping`;
DROP TABLE IF EXISTS `s_zone`;
CREATE TABLE IF NOT EXISTS `s_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'account_id=0 means System Attribute. Refer to s_account',
  `shop_id` int(11) NOT NULL COMMENT 'Refer to s_shop',
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `country` varchar(200) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL COMMENT 'support wild card?',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_zone`
--;
ALTER TABLE `s_zone`
  ADD CONSTRAINT `s_zone_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_shipping`
--;
CREATE TABLE IF NOT EXISTS `s_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'account_id=0 means System Attribute. Refer to s_account',
  `shop_id` int(11) NOT NULL COMMENT 'Refer to s_shop',
  `zone_id` int(11) NOT NULL COMMENT 'destination zone, can be country, state, postal code. refer to s_zone',
  `name` varchar(1000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 50 chars.',
  `method` int(1) NOT NULL COMMENT '0=Local Pickup, 1=By delivery guy, 2=Online download, 3=By email, 4=By mail, 5=By carrier services from UPS, FedEx, DHL etc',
  `type` int(1) NOT NULL COMMENT '0=Free,1=Flat Fee, 2=Tiering, 3=Carrier Realtime Rate',
  `rate` decimal(10,2) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL COMMENT 'delivery speed, in how many days',
  `status` varchar(10) NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_shipping`
--;
ALTER TABLE `s_shipping`
  ADD CONSTRAINT `s_shipping_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);
--
-- Dumping data for table `s_shipping`
--;

INSERT INTO `s_shipping` (`id`, `account_id`, `shop_id`, `zone_id`, `name`, `method`, `type`, `rate`, `speed`, `status`, `create_time`, `update_time`) VALUES
(-1, 0, -1, -1, 'Demo Shipping', 1, 1, '1.00', 3, 'SHP;ON;', 1395456580, 1395457537);

-- --------------------------------------------------------
--
-- Table structure for table `s_shipping_tier`
--;
CREATE TABLE IF NOT EXISTS `s_shipping_tier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) NOT NULL,
  `base` smallint(1) NOT NULL COMMENT '0=Order Subtotal, 1=Weight',
  `floor` decimal(10,2) NOT NULL,
  `ceiling` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_shipping_tier`
--;
ALTER TABLE `s_shipping_tier`
  ADD CONSTRAINT `s_shipping_tier_ibfk_1` FOREIGN KEY (`shipping_id`) REFERENCES `s_shipping` (`id`);
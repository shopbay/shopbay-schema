-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Shops Manager', 2, 'Shops Manager', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Admin Shops', 1, 'Admin Shops', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Admin.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Admin.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Admin.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Admin.Suspend', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Admin.Resume', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant Shop', 1, 'Merchant Shop', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.Start', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.Apply', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.PreviewPage', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Management.SubmitApplication', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Design.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Design.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Design.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Checkout', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Orders', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Navigation', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Notifications', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Marketing', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Brand', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Seo', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Shops.Settings.Chatbot', 0, NULL, NULL, 'N;');
--
-- Activated role get auto assigned necessary rights for shop application ;
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Shops.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Shops.Management.Apply');
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Shops.Management.Start');
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Shops.Management.View');
-- Merchant permissions for shop management ;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Shop');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.PreviewPage');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Management.SubmitApplication');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Design.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Design.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Design.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Checkout');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Orders');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Navigation');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Notifications');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Marketing');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Brand');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Seo');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop', 'Shops.Settings.Chatbot');

INSERT INTO `s_auth_itemchild` VALUES('Shops Manager', 'Admin Shops');
INSERT INTO `s_auth_itemchild` VALUES('Admin Shops', 'Shops.Admin.Index');
INSERT INTO `s_auth_itemchild` VALUES('Admin Shops', 'Shops.Admin.View');
INSERT INTO `s_auth_itemchild` VALUES('Admin Shops', 'Shops.Admin.Update');
INSERT INTO `s_auth_itemchild` VALUES('Admin Shops', 'Shops.Admin.Suspend');
INSERT INTO `s_auth_itemchild` VALUES('Admin Shops', 'Shops.Admin.Resume');

-- --------------------------------------------------------
--
-- Table structure for table `s_shop`
--;
DROP TABLE IF EXISTS `s_shop`;
CREATE TABLE IF NOT EXISTS `s_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 50 chars.',
  `tagline` varchar(1000) DEFAULT NULL COMMENT 'This column stored json encoded tagline in different languages. It buffers about 20 languages, assuming each take 50 chars.',
  `slug` varchar(50) NOT NULL,
  `image` int(11) DEFAULT NULL COMMENT 'store logo image, refer to s_media_association.id',
  `contact_person` varchar(32) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `timezone` varchar(20) NOT NULL,
  `language` varchar(20) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `weight_unit` varchar(3) NOT NULL,
  `category` int(8) NOT NULL COMMENT 'shop category',
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_shop`
--;
ALTER TABLE `s_shop`
  ADD CONSTRAINT `s_shop_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

INSERT INTO `s_shop` (`id`, `account_id`, `name`, `tagline`, `slug`, `image`, `contact_person`, `contact_no`, `email`, `timezone`, `language`, `currency`, `weight_unit`, `status`, `create_time`, `update_time`) VALUES
(-1, -1, 'Demo Shop', 'For demo only', 'demo-shop', 3, 'Mr Seller', '12345678', 'demo-shop@shopbay.org', 'Asia/Singapore', 'en_sg', 'SGD', 'g', 'SHOP;OFF;', 1394540120, 1413972311);


-- --------------------------------------------------------
--
-- Table structure for table `s_shop_address`
--;
DROP TABLE IF EXISTS `s_shop_address`;
CREATE TABLE IF NOT EXISTS `s_shop_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) DEFAULT NULL,
  `country` varchar(40) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_shop_address`
--;
ALTER TABLE `s_shop_address`
  ADD CONSTRAINT `s_shop_address_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);

INSERT INTO `s_shop_address` (`id`, `shop_id`, `address1`, `address2`, `postcode`, `city`, `state`, `country`, `create_time`, `update_time`) VALUES
(-1, -1, 'Sample Shop Street', '', '018956', 'SG', '', 'Singapore', 1395457661, 1412566583);

-- --------------------------------------------------------
--
-- Table structure for table `s_shop_theme`
--;
DROP TABLE IF EXISTS `s_shop_theme`;
CREATE TABLE IF NOT EXISTS `s_shop_theme` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `theme` varchar(25) NOT NULL,
  `style` varchar(25) NOT NULL,
  `params` text,
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_shop_theme`
--;
ALTER TABLE `s_shop_theme`
  ADD CONSTRAINT `s_shop_theme_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_shop_setting`
--;
DROP TABLE IF EXISTS `s_shop_setting`;
CREATE TABLE IF NOT EXISTS `s_shop_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `marketing` text DEFAULT NULL COMMENT 'marketing tools, e.g. add shop to facebook page, manage facebook ads etc',
  `checkout` text DEFAULT NULL COMMENT 'e.g. returns and refunds policy, getting customer to accept marketing emails',
  `payments` text DEFAULT NULL COMMENT 'e.g. allow manual payment, online payments etc',
  `shipping` text DEFAULT NULL COMMENT 'e.g. allow manual shipping, third-party fulfillment services etc',
  `tax` text DEFAULT NULL COMMENT 'e.g. tax hanlding, gst etc',
  `navigation` text DEFAULT NULL COMMENT 'e.g. how navigation menu is structured and display in shop storefront',
  `orders` text DEFAULT NULL COMMENT 'e.g. how to process orders',
  `notifications` text DEFAULT NULL COMMENT 'e.g. indicate which notifications to receive, and customize email notification template',
  `brand` text DEFAULT NULL COMMENT 'configure shop brand such as custom domain url, favicon etc',
  `seo` text DEFAULT NULL COMMENT 'configure shop seo such as meta description etc',
  `chatbot` text DEFAULT NULL COMMENT 'chatbot integration config',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_shop_setting`
--;
ALTER TABLE `s_shop_setting`
  ADD CONSTRAINT `s_shop_setting_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);


-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Products', 1, 'Merchant Products', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.ImageGet', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.CkeditorImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.Import', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Management.ImportUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Category.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Category.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Category.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Category.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Category.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Category.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Attribute.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Attribute.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Attribute.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Attribute.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Products.Attribute.Delete', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Products');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.ImageGet');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.CkeditorImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.Import');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Management.ImportUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Category.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Category.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Category.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Category.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Category.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Category.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Attribute.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Attribute.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Attribute.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Attribute.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Products', 'Products.Attribute.Delete');

-- --------------------------------------------------------
--
-- Table structure for table `s_category`
--;
DROP TABLE IF EXISTS `s_category`;
CREATE TABLE IF NOT EXISTS `s_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `image` int(11) NULL COMMENT 'refer to s_media_association.id',
  `slug` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--
--;
-- Constraints for table `s_category`
--;
ALTER TABLE `s_category`
  ADD CONSTRAINT `s_category_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_category_sub`
--;
DROP TABLE IF EXISTS `s_category_sub`;
CREATE TABLE IF NOT EXISTS `s_category_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `slug` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_category_sub`
--;
ALTER TABLE `s_category_sub`
  ADD CONSTRAINT `s_category_sub_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `s_category` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_product`
--;
DROP TABLE IF EXISTS `s_product`;
CREATE TABLE IF NOT EXISTS `s_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `code` varchar(6) NOT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `image` int(11) NOT NULL COMMENT 'refer to s_image.id or s_media_association.id',
  `unit_price` decimal(10,2) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `spec` text,
  `slug` varchar(100) NOT NULL,
  `meta_tags` varchar(1000) DEFAULT NULL COMMENT 'json encode product seo meta tags',
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_product`
--;
ALTER TABLE `s_product`
  ADD CONSTRAINT `s_product_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_product_shipping`
--;

DROP TABLE IF EXISTS `s_product_shipping`;
CREATE TABLE IF NOT EXISTS `s_product_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT 'refer to s_product',
  `shipping_id` int(11) NOT NULL,
  `surcharge` decimal(10,2) DEFAULT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_product_shipping`
--;
ALTER TABLE `s_product_shipping`
  ADD CONSTRAINT `s_product_shipping_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `s_product` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_product_attribute`
--;
DROP TABLE IF EXISTS `s_product_attribute`;
CREATE TABLE IF NOT EXISTS `s_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT 'refer to s_product',
  `code` varchar(2) NOT NULL,
  `name` varchar(1000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 50 chars.',
  `type` tinyint(1) NOT NULL COMMENT 'Input type: 1=Select,2=Textfield',
  `share` char(1) NOT NULL COMMENT '1=Yes, 0=No',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_product_attribute`
--;
ALTER TABLE `s_product_attribute`
  ADD CONSTRAINT `s_product_attribute_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `s_product` (`id`);
-- --------------------------------------------------------
--
-- Table structure for table `s_product_attribute_option`
--;

DROP TABLE IF EXISTS `s_product_attribute_option`;
CREATE TABLE IF NOT EXISTS `s_product_attribute_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL COMMENT 'Refer to s_product_attribute',
  `code` varchar(2) NOT NULL,
  `name` varchar(1000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 50 chars.',
  `surcharge` decimal(10,2) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_product_attribute_option`
--;
ALTER TABLE `s_product_attribute_option`
  ADD CONSTRAINT `s_product_attribute_option_ibfk_1` FOREIGN KEY (`attr_id`) REFERENCES `s_product_attribute` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_product_import`
--;
DROP TABLE IF EXISTS `s_product_import`;
CREATE TABLE IF NOT EXISTS `s_product_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `summary` varchar(1000) NOT NULL COMMENT 'This column stored json encoded summary',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for table `s_product_import`
--;
ALTER TABLE `s_product_import`
  ADD CONSTRAINT `s_product_import_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_product_category`
--;
DROP TABLE IF EXISTS `s_product_category`;
CREATE TABLE IF NOT EXISTS `s_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT 'refer to s_product',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_product_category`
--;
ALTER TABLE `s_product_category`
  ADD CONSTRAINT `s_product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `s_product` (`id`);

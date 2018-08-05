-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Attributes', 1, 'Merchant Attributes', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Attributes.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Attributes.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Attributes.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Attributes.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Attributes.Management.Delete', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Attributes');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Attributes', 'Attributes.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Attributes', 'Attributes.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Attributes', 'Attributes.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Attributes', 'Attributes.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Attributes', 'Attributes.Management.Delete');
-- --------------------------------------------------------
--
-- Table structure for table `s_attribute`
--;
DROP TABLE IF EXISTS `s_attribute`;
CREATE TABLE IF NOT EXISTS `s_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'account_id=0 means System Attribute. Refer to s_account',
  `obj_type` varchar(20) NOT NULL DEFAULT 's_system' COMMENT 'Object type could contain user-defined set of attributes, table name e.g. s_product, s_campaign etc. Default as SYSTEM attribute',
  `code` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` int(1) NOT NULL COMMENT '1=Select,2=Textfield',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_attribute`
--;
ALTER TABLE `s_attribute`
  ADD CONSTRAINT `s_attribute_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);
--
-- Dumping data for table `s_attribute`
--;
-- --------------------------------------------------------
--
-- Table structure for table `s_attribute_option`
--;
DROP TABLE IF EXISTS `s_attribute_option`;
CREATE TABLE IF NOT EXISTS `s_attribute_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL COMMENT 'Refer to s_attribute',
  `code` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_attribute_option`
--;
ALTER TABLE `s_attribute_option`
  ADD CONSTRAINT `s_attribute_option_ibfk_1` FOREIGN KEY (`attr_id`) REFERENCES `s_attribute` (`id`);

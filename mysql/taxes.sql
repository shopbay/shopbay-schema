-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Taxes', 1, 'Merchant Taxes', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Taxes.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Taxes.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Taxes.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Taxes.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Taxes.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Taxes.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Taxes.Management.Deactivate', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Taxes');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Taxes', 'Taxes.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Taxes', 'Taxes.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Taxes', 'Taxes.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Taxes', 'Taxes.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Taxes', 'Taxes.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Taxes', 'Taxes.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Taxes', 'Taxes.Management.Deactivate');
-- --------------------------------------------------------
--
-- Table structure for table `s_tax`
--;
DROP TABLE IF EXISTS `s_tax`;
CREATE TABLE IF NOT EXISTS `s_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'account_id=0 means System Attribute. Refer to s_account',
  `shop_id` int(11) NOT NULL COMMENT 'Refer to s_shop',
  `name` varchar(1000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 50 chars.',
  `rate` decimal(10,2) NOT NULL COMMENT 'expressed in percentage, e.g. 0.07 = 7%',
  `status` varchar(10) NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_tax`
--;
ALTER TABLE `s_tax`
  ADD CONSTRAINT `s_tax_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);
--
-- Dumping data for table `s_tax`
--;
INSERT INTO `s_tax` (`id`, `account_id`, `shop_id`, `name`, `rate`,  `status`, `create_time`, `update_time`) VALUES
(-1, 0, -1, 'Demo Tax', 0.07, 'TAX;ON;', 1395456580, 1395457537);
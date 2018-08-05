-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Inventory', 1, 'Merchant Inventory', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Inventories.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Inventories.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Inventories.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Inventories.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Inventories.Management.Delete', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Inventory');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Inventory', 'Inventories.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Inventory', 'Inventories.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Inventory', 'Inventories.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Inventory', 'Inventories.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Inventory', 'Inventories.Management.Delete');

-- --------------------------------------------------------
--
-- Table structure for table `s_inventory`
--;
DROP TABLE IF EXISTS `s_inventory_history`;
DROP TABLE IF EXISTS `s_inventory`;
CREATE TABLE IF NOT EXISTS `s_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `obj_type` varchar(20) NOT NULL DEFAULT 's_system' COMMENT 'Object type could contain user-defined set of types, table name e.g. s_product, s_campaign etc. Default as SYSTEM attribute',
  `obj_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Depends on obj_type, e.g. product_id etc. Default as SYSTEM object',
  `sku` varchar(30) NOT NULL COMMENT 'format=[ObjectCode]+[AttributeCode+OptionCode][2][3]..[n]. length 30 supports up to n=6 attributes (total length 6 + 6x4 = 30)',
  `quantity` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT '0',
  `hold` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `bad` int(11) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_inventory`
--;
ALTER TABLE `s_inventory`
  ADD CONSTRAINT `s_inventory_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_inventory_history`
--;
CREATE TABLE IF NOT EXISTS `s_inventory_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=Inflow, 2=Outflow, 3=Within warehouse relocation etc',
  `movement` int(11) NOT NULL COMMENT 'stock movement based on type',
  `post_available` int(11) NOT NULL COMMENT 'inventory available after movement',
  `post_quantity` int(11) NOT NULL COMMENT 'inventory quantity after movement',
  `create_by` varchar(12) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_inventory_history`
--;

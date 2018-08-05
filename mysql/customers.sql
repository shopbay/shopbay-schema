-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Customers', 1, 'Merchant Customers', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Customers.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Customers.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Customers.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Customers.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Customers.Management.Delete', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Customers');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Customers', 'Customers.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Customers', 'Customers.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Customers', 'Customers.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Customers', 'Customers.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Customers', 'Customers.Management.Delete');

--
-- Rights settings for shop customers; They are also role 'Customer' , and create a new Task called 'Customer account';
-- but the access here are restricting to "shop" webapp
--;
INSERT INTO `s_auth_item` VALUES('Customer Account', 1, 'Customer Account', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Activation.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Profile.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Profile.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Profile.Password', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Profile.Email', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Profile.ImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Profile.Notifications', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Auth.Logout', 0, NULL, NULL, 'N;');
-- assign permissions;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Account');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Activation.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Profile.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Profile.Update');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Profile.Password');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Profile.Email');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Profile.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Profile.Notifications');
INSERT INTO `s_auth_itemchild` VALUES('Customer Account', 'Auth.Logout');

-- --------------------------------------------------------
--
-- Table structure for table `s_customer`
--;
DROP TABLE IF EXISTS `s_customer`;
CREATE TABLE IF NOT EXISTS `s_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Merchant account_id, owner of customer. Refer to s_account',
  `customer_id` varchar(120) DEFAULT NULL COMMENT 'Customer account_id. Refer to s_customer_account, for guest buyer this will be their email address',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `alias_name` varchar(50) DEFAULT NULL COMMENT 'Retrieved from s_order_address recipient',
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `locale` varchar(6) DEFAULT NULL,
  `image` int(11) DEFAULT NULL COMMENT 'store avatar image, refer to s_media_association.id',
  `address` varchar(500) DEFAULT NULL COMMENT 'json encoded customer address, refer to CustomerAddressData',
  `data` varchar(1000) DEFAULT NULL COMMENT 'json encoded customer data, refer to CustomerData',
  `tags` varchar(500) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_customer`
--;
ALTER TABLE `s_customer`
  ADD CONSTRAINT `s_customer_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);


-- --------------------------------------------------------
--
-- Table structure for table `s_customer_account`
--;
DROP TABLE IF EXISTS `s_customer_account`;
CREATE TABLE IF NOT EXISTS `s_customer_account` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL COMMENT 'hashed password',
  `status` varchar(20) NOT NULL COMMENT 'Refer to s_process for definition',
  `reg_ip` varchar(15) NOT NULL DEFAULT '0',
  `activate_str` varchar(50) DEFAULT NULL,
  `activate_time` int(10) DEFAULT NULL,
  `last_login_ip` varchar(15) DEFAULT NULL,
  `last_login_time` int(10) DEFAULT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`shop_id`,`email`),
  KEY `seq_customer_account_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


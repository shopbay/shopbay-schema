-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Customer Activities', 1, 'Customer Activities', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Activities.Customer.Index', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant Activities', 1, 'Merchant Activities', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Activities.Merchant.Index', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('User Activities View', 1, 'User Activities View', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Administrator Activities', 1, 'Administrator Activities', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Activities.Admin.Index', 0, NULL, NULL, 'N;');

-- Administrator;
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Administrator Activities');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Activities', 'Activities.Admin.Index');
-- Customer;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Activities');
INSERT INTO `s_auth_itemchild` VALUES('Customer Activities', 'Activities.Customer.Index');
-- Merchant;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Activities');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Activities', 'Activities.Merchant.Index');
-- --------------------------------------------------------
--
-- Table structure for table `s_activity`
--;
DROP TABLE IF EXISTS `s_activity`;
CREATE TABLE IF NOT EXISTS `s_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(12) NOT NULL,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `obj_url` varchar(500) NOT NULL,
  `icon_url` varchar(500) NOT NULL,
  `location` varchar(20) NOT NULL,
  `event` varchar(20) NOT NULL,
  `description` varchar(5000) NOT NULL COMMENT 'This column stored json encoded description in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Dumping data for table `s_activity`
--;
--
-- Constraints for table `s_activity`
--;

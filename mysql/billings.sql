-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
-- ;
INSERT INTO `s_auth_item` VALUES('Billings', 1, 'Billings', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Payment.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Payment.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Payment.Change', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Settings.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Subscriptions.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Subscription.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Subscription.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Receipt.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Billings.Receipt.Download', 0, NULL, NULL, 'N;');

-- Assign rights;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Billings');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Payment.Index');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Payment.Create');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Payment.Change');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Settings.Index');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Subscriptions.Index');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Subscription.View');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Subscription.Update');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Receipt.View');
INSERT INTO `s_auth_itemchild` VALUES('Billings', 'Billings.Receipt.Download');

-- --------------------------------------------------------
--
-- Table structure for table `s_billing`
-- ;
DROP TABLE IF EXISTS `s_billing`;
CREATE TABLE IF NOT EXISTS `s_billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL COMMENT 'customer id registered in payment gateway',
  `payment_method_token` varchar(25) NOT NULL,
  `billing_day_of_month` int(2) NOT NULL,
  `email` varchar(100) NOT NULL COMMENT 'the email to receive receipt',
  `billed_to` varchar(100) DEFAULT NULL COMMENT 'the billed to name, e.g. organization or individual name',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Table structure for table `s_receipt`
-- ;
DROP TABLE IF EXISTS `s_receipt`;
CREATE TABLE IF NOT EXISTS `s_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) NOT NULL COMMENT 'account billed to',
  `receipt_no` varchar(25) NOT NULL COMMENT 'receipt number',
  `items` varchar(5000) NOT NULL COMMENT 'receipt items, in json_encode array format',
  `amount` decimal(10,2) NOT NULL COMMENT 'receipt amount',
  `currency` varchar(3) NOT NULL COMMENT 'receipt currency',
  `receipt_file` varchar(500) DEFAULT NULL COMMENT 'the generated receipt file path',
  `reference` varchar(100) NOT NULL COMMENT 'e.g. subscription id',
  `create_time` int(11) NOT NULL COMMENT 'receipt creation date',
  `update_time` int(11) NOT NULL COMMENT 'receipt update date',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


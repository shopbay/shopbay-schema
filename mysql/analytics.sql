-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Analytics', 1, 'Analytics', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Analytics.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Analytics.Management.Chart', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Analytics.Management.Dashboard', 0, NULL, NULL, 'N;');

-- Customer ;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Analytics');
INSERT INTO `s_auth_itemchild` VALUES('Analytics', 'Analytics.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Analytics', 'Analytics.Management.Chart');
INSERT INTO `s_auth_itemchild` VALUES('Analytics', 'Analytics.Management.Dashboard');
-- Merchant;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Analytics');

-- --------------------------------------------------------
--
-- Table structure for table `s_metric`
--;
DROP TABLE IF EXISTS `s_metric`;
CREATE TABLE IF NOT EXISTS `s_metric` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` varchar(12) NOT NULL,
  `fact` varchar(30) NOT NULL,
  `value` varchar(50) NOT NULL COMMENT 'use varchar type, but can be numeric value also, or even json',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------
-- Below table are for data warehouse
-- TODO: Put them inside separate schema 
--
-- Table structure for table `s_dim_date`
--;

DROP TABLE IF EXISTS `s_dim_date`;
CREATE TABLE IF NOT EXISTS `s_dim_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `day` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Table structure for table `s_dim_currency`
--;

DROP TABLE IF EXISTS `s_dim_currency`;
CREATE TABLE IF NOT EXISTS `s_dim_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Table structure for table `s_fact_sale`
--;
DROP TABLE IF EXISTS `s_fact_sale`;
CREATE TABLE IF NOT EXISTS `s_fact_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `date_id` int(11) NOT NULL,
  `order_unit` int(11) NOT NULL DEFAULT '0',
  `item_unit` int(11) NOT NULL DEFAULT '0',
  `revenue` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `date_id` (`date_id`),
  KEY `currency_id` (`currency_id`),
  KEY `shop_id` (`shop_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Table structure for table `s_fact_purchase`
--;
DROP TABLE IF EXISTS `s_fact_purchase`;
CREATE TABLE IF NOT EXISTS `s_fact_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(12) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `date_id` int(11) NOT NULL,
  `order_unit` int(11) NOT NULL DEFAULT '0',
  `item_unit` int(11) NOT NULL DEFAULT '0',
  `expenditure` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `date_id` (`date_id`),
  KEY `currency_id` (`currency_id`),
  KEY `shop_id` (`shop_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Table structure for table `s_fact_visit`
--;
DROP TABLE IF EXISTS `s_fact_visit`;
CREATE TABLE IF NOT EXISTS `s_fact_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `date_id` int(11) NOT NULL,
  `visitor` varchar(20) NOT NULL COMMENT 'unique visitor count. For login user, this will be account_id. For guest, this will be IP address',
  `pageview` int(11) NOT NULL DEFAULT '0',
  `addcart` int(11) NOT NULL DEFAULT '0' COMMENT 'how many times visitor reach add to cart page',
  `checkout` int(11) NOT NULL DEFAULT '0' COMMENT 'how many times visitor reach checkout page',
  `purchased` int(11) NOT NULL DEFAULT '0' COMMENT 'how many times visitor reach confirmed order page',
  PRIMARY KEY (`id`),
  KEY `date_id` (`date_id`),
  KEY `shop_id` (`shop_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Table structure for table `s_fact_customer`
--;
DROP TABLE IF EXISTS `s_fact_customer`;
CREATE TABLE IF NOT EXISTS `s_fact_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `date_id` int(11) NOT NULL,
  `customer_id` varchar(12) NOT NULL,
  `order_unit` int(11) NOT NULL DEFAULT '0',
  `item_unit` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `date_id` (`date_id`),
  KEY `currency_id` (`currency_id`),
  KEY `shop_id` (`shop_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

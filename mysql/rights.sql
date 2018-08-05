-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- Table structure for table `s_auth_assignment`
--;
DROP TABLE IF EXISTS `s_auth_assignment`;
CREATE TABLE IF NOT EXISTS `s_auth_assignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Dumping data for table `s_auth_assignment`
--;
-- SYSTEM    = 0;
-- SUPERUSER = 1;
INSERT INTO `s_auth_assignment` VALUES('User',          '0', NULL, 'N;');
INSERT INTO `s_auth_assignment` VALUES('Customer',      '0', NULL, 'N;');
INSERT INTO `s_auth_assignment` VALUES('Merchant',      '0', NULL, 'N;');
INSERT INTO `s_auth_assignment` VALUES('Administrator', '0', NULL, 'N;');
-- Superuser is also assigned with Administrator role;
INSERT INTO `s_auth_assignment` VALUES('SUPERUSER',     '1', NULL, 'N;');
INSERT INTO `s_auth_assignment` VALUES('Administrator', '1', NULL, 'N;');

-- --------------------------------------------------------
--
-- Table structure for table `s_auth_item`
--;
DROP TABLE IF EXISTS `s_auth_item`;
CREATE TABLE IF NOT EXISTS `s_auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_auth_item`
--;
INSERT INTO `s_auth_item` VALUES('User', 2, 'User', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Customer', 2, 'Customer', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Merchant', 2, 'Merchant', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Administrator', 2, 'Administrator', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Activated', 1, 'Activated', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('My Object', 1, 'My Object', 'return $params["session_user"]==$params["model_owner"];', 'N;');
INSERT INTO `s_auth_item` VALUES('File.Download', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------
--
-- Table structure for table `s_auth_itemchild`
--;

DROP TABLE IF EXISTS `s_auth_itemchild`;
CREATE TABLE IF NOT EXISTS `s_auth_itemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_auth_itemchild`
--;
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'My Object');
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'My Object');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'My Object');

-- --------------------------------------------------------
--
-- Table structure for table `s_auth_rights`
--;

DROP TABLE IF EXISTS `s_auth_rights`;
CREATE TABLE IF NOT EXISTS `s_auth_rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_auth_rights`
--;

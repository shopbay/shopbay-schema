-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Accounts.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Management.Networks', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Management.Password', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Management.Email', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Authenticate.Logout', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Authenticate.OauthLink', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Authenticate.OauthUnlink', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Authenticate.OauthLogout', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Account', 1, 'Account', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Welcome.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Welcome.Dashboard', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Activate.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Profile.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Profile.ImageUpload', 0, NULL, NULL, 'N;');

--
-- User role get auto assigned after user sign up
--;
INSERT INTO `s_auth_itemchild` VALUES('User', 'Account');
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Account');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Account');
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Account');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Activate.Index');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Welcome.Index');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Profile.Index');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Profile.ImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Management.Networks');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Authenticate.Logout');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Authenticate.OauthLink');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Authenticate.OauthUnlink');
INSERT INTO `s_auth_itemchild` VALUES('Account', 'Accounts.Authenticate.OauthLogout');
-- Activated role get auto assigned after account activation;
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Accounts.Welcome.Dashboard');
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Accounts.Management.Email');
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Accounts.Management.Password');
-- Administrator role;
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Accounts.Welcome.Index');
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Accounts.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Accounts.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Accounts.Management.Password');
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Accounts.Authenticate.Logout');
-- Support account closure;
INSERT INTO `s_auth_item` VALUES('Account Closure', 1, 'Account Closure', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Accounts.Management.Close', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('User', 'Account Closure');
INSERT INTO `s_auth_itemchild` VALUES('Account Closure', 'Accounts.Management.Close');

-- --------------------------------------------------------
--
-- Table structure for table `s_account`
--;
DROP TABLE IF EXISTS `s_account`;
CREATE TABLE IF NOT EXISTS `s_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL COMMENT 'hashed password via CPasswordHelper',
  `email` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL COMMENT 'Refer to s_process for definition',
  `reg_ip` varchar(15) NOT NULL DEFAULT '0',
  `activate_str` varchar(50) DEFAULT NULL,
  `activate_time` int(10) DEFAULT NULL,
  `last_login_ip` varchar(15) DEFAULT NULL,
  `last_login_time` int(10) DEFAULT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10;
-- --------------------------------------------------------
-- AUTO_INCREMENT for `s_account` starts from 10, sequence 0 - 9 is reserved for future use
--;

-- --------------------------------------------------------
--
--
-- Table structure for table `s_account_profile`
--;

DROP TABLE IF EXISTS `s_account_profile`;
CREATE TABLE IF NOT EXISTS `s_account_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `alias_name` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `image` int(11) DEFAULT NULL COMMENT 'store avatar image, refer to s_media_association.id',
  `locale` varchar(6) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10;
-- --------------------------------------------------------
-- AUTO_INCREMENT for `s_account_profile` starts from 10, sequence 0 - 9 is reserved for future use
--;
--
-- Constraints for table `s_account_profile`
--;
ALTER TABLE `s_account_profile`
  ADD CONSTRAINT `s_account_profile_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_account_address`
--;
DROP TABLE IF EXISTS `s_account_address`;
CREATE TABLE IF NOT EXISTS `s_account_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) DEFAULT NULL,
  `country` varchar(40) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_account_address`
--;
ALTER TABLE `s_account_address`
  ADD CONSTRAINT `s_account_address_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);


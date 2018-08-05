-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Theme', 1, 'Merchant Theme', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Preview.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Buy.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Buy.Confirm', 0, NULL, NULL, 'N;');

-- Merchant permissions for theme management ;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Theme');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Theme', 'Themes.Preview.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Theme', 'Themes.Buy.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Theme', 'Themes.Buy.Confirm');

-- Admin permissions for theme adminstration ;
INSERT INTO `s_auth_item` VALUES('Themes Admin', 2, 'Themes Admin', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes', 1, 'Themes', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Admin.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Admin.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Admin.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Admin.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Admin.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Admin.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Themes.Admin.Deactivate', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Themes Admin', 'Themes');
INSERT INTO `s_auth_itemchild` VALUES('Themes', 'Themes.Admin.Index');
INSERT INTO `s_auth_itemchild` VALUES('Themes', 'Themes.Admin.View');
INSERT INTO `s_auth_itemchild` VALUES('Themes', 'Themes.Admin.Create');
INSERT INTO `s_auth_itemchild` VALUES('Themes', 'Themes.Admin.Update');
INSERT INTO `s_auth_itemchild` VALUES('Themes', 'Themes.Admin.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Themes', 'Themes.Admin.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Themes', 'Themes.Admin.Deactivate');


-- --------------------------------------------------------
--
-- Table structure for table `s_theme`
--;
DROP TABLE IF EXISTS `s_theme`;
CREATE TABLE IF NOT EXISTS `s_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `theme` varchar(25) NOT NULL COMMENT 'unique theme name',
  `theme_group` varchar(20) NOT NULL COMMENT 'theme group, e.g shop',
  `name` varchar(1000) NOT NULL COMMENT 'multi-lingual theme name for display',
  `desc` varchar(10000) DEFAULT NULL COMMENT 'multi-lingual theme description for display',
  `designer` varchar(100) NOT NULL COMMENT 'theme designer',
  `price` decimal(10,2) NOT NULL DEFAULT 0.0,
  `currency` varchar(3) DEFAULT NULL,
  `params` varchar(5000) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`theme`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100;

-- --------------------------------------------------------
--
-- Constraints for dumped tables
--;
--
-- Shop Themes ;
--;
INSERT INTO `s_theme` (`id`, `account_id`, `theme`, `theme_group`, `name`, `designer`, `price`, `currency`, `params`, `status`, `create_time`, `update_time`) VALUES
(1, 0, 'simple', 'shop', '{"en_sg":"Simple","zh_cn":"简约"}', 'Shopbay', '0.00', 'SGD', NULL, 'TH;OFF;', 1480695738, 1480695738);
INSERT INTO `s_theme` (`id`, `account_id`, `theme`, `theme_group`, `name`, `designer`, `price`, `currency`, `params`, `status`, `create_time`, `update_time`) VALUES
(2, 0, 'neat', 'shop', '{"en_sg":"Neat","zh_cn":"整齐"}', 'Shopbay', '0.00', 'SGD', NULL, 'TH;OFF;', 1480695738, 1480695738);
INSERT INTO `s_theme` (`id`, `account_id`, `theme`, `theme_group`, `name`, `designer`, `price`, `currency`, `params`, `status`, `create_time`, `update_time`) VALUES
(3, 0, 'light', 'shop', '{"en_sg":"Light","zh_cn":"光色"}', 'Shopbay', '0.00', 'SGD', NULL, 'TH;OFF;', 1480695738, 1480695738);

--
-- Constraints for table `s_theme`
--;
ALTER TABLE `s_theme`
  ADD CONSTRAINT `s_theme_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

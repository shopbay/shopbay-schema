-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
-- ;
INSERT INTO `s_auth_item` VALUES('WCM Manager', 2, 'WCM Manager', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Web Content', 1, 'Web Content', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Wcm.Page.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Wcm.Page.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Wcm.Page.Seo', 0, NULL, NULL, 'N;');
-- Assign rights;
INSERT INTO `s_auth_itemchild` VALUES('WCM Manager', 'Web Content');
INSERT INTO `s_auth_itemchild` VALUES('Web Content', 'Wcm.Page.Index');
INSERT INTO `s_auth_itemchild` VALUES('Web Content', 'Wcm.Page.Update');
INSERT INTO `s_auth_itemchild` VALUES('Web Content', 'Wcm.Page.Seo');
-- --------------------------------------------------------
--
-- Table structure for table `s_wcm_page`
-- ;
DROP TABLE IF EXISTS `s_wcm_page`;
CREATE TABLE IF NOT EXISTS `s_wcm_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'page name, can be meant for whole page or page segment',
  `content` text NOT NULL COMMENT 'page content',
  `params` varchar(5000) DEFAULT NULL COMMENT 'pages specific parameters (JSON format), such as layout, SEO settings',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=100;


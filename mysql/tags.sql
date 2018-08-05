-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Tags Manager', 2, 'Tags Manager', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tags', 1, 'Tags', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tags.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tags.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tags.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tags.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tags.Management.Delete', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Tags Manager', 'Tags');
INSERT INTO `s_auth_itemchild` VALUES('Tags', 'Tags.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Tags', 'Tags.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Tags', 'Tags.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Tags', 'Tags.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Tags', 'Tags.Management.Delete');

-- --------------------------------------------------------
--
-- Table structure for table `s_tag`
--;
DROP TABLE IF EXISTS `s_tag`;
CREATE TABLE IF NOT EXISTS `s_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'tag name',
  `display_name` varchar(2000) NOT NULL COMMENT 'tag display name, json_encoded multilang',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Comments', 1, 'Comments', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Comments.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Comments.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Comments.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Comments.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Comments.Management.Delete', 0, NULL, NULL, 'N;');

-- Customer ;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Comments');
INSERT INTO `s_auth_itemchild` VALUES('Comments', 'Comments.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Comments', 'Comments.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Comments', 'Comments.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Comments', 'Comments.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Comments', 'Comments.Management.Delete');
-- Merchant;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Comments');

-- --------------------------------------------------------
--
-- Table structure for table `s_comment`
--;
DROP TABLE IF EXISTS `s_comment`;
CREATE TABLE IF NOT EXISTS `s_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `comment_by` varchar(12) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
-- --------------------------------------------------------
--
-- Constraints for dumped tables
--;

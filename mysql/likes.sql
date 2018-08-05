-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Customer Likes', 1, 'Customer Likes', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Merchant Likes', 1, 'Merchant Likes', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Likes.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Likes.Management.Toggle', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Likes.Management.Undo', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Likes.Management.Batch', 0, NULL, NULL, 'N;');
-- Customer;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Likes');
INSERT INTO `s_auth_itemchild` VALUES('Customer Likes', 'Likes.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Likes', 'Likes.Management.Toggle');
INSERT INTO `s_auth_itemchild` VALUES('Customer Likes', 'Likes.Management.Undo');
INSERT INTO `s_auth_itemchild` VALUES('Customer Likes', 'Likes.Management.Batch');
-- Merchant;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Likes');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Likes', 'Likes.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Likes', 'Likes.Management.Toggle');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Likes', 'Likes.Management.Undo');

-- --------------------------------------------------------
--
-- Table structure for table `s_like`
--;
DROP TABLE IF EXISTS `s_like`;
CREATE TABLE IF NOT EXISTS `s_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(12) NOT NULL,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `obj_name` varchar(100) NOT NULL,
  `obj_url` varchar(255) NOT NULL,
  `obj_pic_url` varchar(255) NOT NULL,
  `obj_src_id` int(11) NULL,
  `status` char(1) NOT NULL COMMENT 'Y=Yes,N=No',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
-- --------------------------------------------------------
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_like`
--;
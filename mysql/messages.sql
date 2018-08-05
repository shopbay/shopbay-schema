-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Messages', 1, 'Messages', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Messages.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Messages.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Messages.Management.Compose', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Messages.Management.Reply', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Messages.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Messages.Management.Sent', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Messages.Management.Unread', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Messages');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Messages');
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Messages');
INSERT INTO `s_auth_itemchild` VALUES('Messages', 'Messages.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Messages', 'Messages.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Messages', 'Messages.Management.Compose');
INSERT INTO `s_auth_itemchild` VALUES('Messages', 'Messages.Management.Reply');
INSERT INTO `s_auth_itemchild` VALUES('Messages', 'Messages.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Messages', 'Messages.Management.Sent');
INSERT INTO `s_auth_itemchild` VALUES('Messages', 'Messages.Management.Unread');

-- --------------------------------------------------------
--
-- Table structure for table `s_message`
--;

DROP TABLE IF EXISTS `s_message`;
CREATE TABLE IF NOT EXISTS `s_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(12) NOT NULL,
  `recipient` varchar(100) NOT NULL COMMENT 'multiple recipients use delimiter comma',
  `subject` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) NOT NULL,
  `receive_time` int(11) DEFAULT NULL,
  `metadata` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
-- --------------------------------------------------------
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_message`
--;

-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Tickets Manager', 2, 'Tickets Manager', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tickets', 1, 'Tickets', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tickets.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tickets.Management.View', 0, NULL, NULL, 'N;');
-- ticketing permission;
INSERT INTO `s_auth_item` VALUES('Manage Tickets', 1, 'Manage Tickets', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tickets.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tickets.Management.Close', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Reply Tickets', 1, 'Reply Tickets', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tickets.Management.Reply', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_itemchild` VALUES('Tickets Manager', 'Tickets');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Tickets');
INSERT INTO `s_auth_itemchild` VALUES('Tickets', 'Tickets.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Tickets', 'Tickets.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Tickets Manager', 'Reply Tickets');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Reply Tickets');
INSERT INTO `s_auth_itemchild` VALUES('Reply Tickets', 'Tickets.Management.Reply');
-- Assign submit ticket rights;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Manage Tickets');
INSERT INTO `s_auth_itemchild` VALUES('Manage Tickets', 'Tickets.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Manage Tickets', 'Tickets.Management.Close');

-- --------------------------------------------------------
--
-- Table structure for table `s_ticket`
--;
DROP TABLE IF EXISTS `s_ticket`;
CREATE TABLE IF NOT EXISTS `s_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NULL,
  `subject` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;
-- --------------------------------------------------------
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_ticket`
--;
ALTER TABLE `s_ticket`
  ADD CONSTRAINT `s_ticket_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

--
-- Dumping data for table `s_ticket`
--;
INSERT INTO `s_ticket` (`id`, `account_id`, `shop_id`, `subject`, `content`, `status`, `create_time`, `update_time`) VALUES
(-1, -1, -1, 'Test Ticket', 'Test Ticket Content', 'TKT;S;', 1440825922, 1440826050);

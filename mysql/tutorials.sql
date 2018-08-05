-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Tutorials Creator', 2, 'Tutorials Creator', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorial Series Creator', 2, 'Tutorial Series Creator', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials', 1, 'Tutorials', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.Write', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.Edit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.CkeditorImageUpload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.Submit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorial Series', 1, 'Tutorial Series', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Series.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Series.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Series.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Series.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Series.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Series.Submit', 0, NULL, NULL, 'N;');
-- publishing permission;
INSERT INTO `s_auth_item` VALUES('Tutorials Publisher', 2, 'Tutorials Publisher', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorial Series Publisher', 2, 'Tutorial Series Publisher', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Publish Tutorials', 1, 'Publish Tutorials', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Management.Publish', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Publish Tutorial Series', 1, 'Publish Tutorial Series', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials.Series.Publish', 0, NULL, NULL, 'N;');

--;
INSERT INTO `s_auth_itemchild` VALUES('Tutorials Creator', 'Tutorials');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series Creator', 'Tutorial Series');

INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Tutorials');

INSERT INTO `s_auth_itemchild` VALUES('Tutorials', 'Tutorials.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials', 'Tutorials.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials', 'Tutorials.Management.Write');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials', 'Tutorials.Management.Edit');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials', 'Tutorials.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials', 'Tutorials.Management.CkeditorImageUpload');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials', 'Tutorials.Management.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series', 'Tutorials.Series.Index');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series', 'Tutorials.Series.View');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series', 'Tutorials.Series.Create');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series', 'Tutorials.Series.Update');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series', 'Tutorials.Series.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series', 'Tutorials.Series.Submit');
-- Assign publish rights;
INSERT INTO `s_auth_itemchild` VALUES('Tutorials Publisher', 'Publish Tutorials');
INSERT INTO `s_auth_itemchild` VALUES('Publish Tutorials', 'Tutorials.Management.Publish');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series Publisher', 'Publish Tutorial Series');
INSERT INTO `s_auth_itemchild` VALUES('Publish Tutorial Series', 'Tutorials.Series.Publish');

-- --------------------------------------------------------
--
-- Table structure for table `s_tutorial`
--;
DROP TABLE IF EXISTS `s_tutorial`;
CREATE TABLE IF NOT EXISTS `s_tutorial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `content` text NOT NULL,
  `difficulty` char(1) NOT NULL COMMENT 'B=Beginner,I=Intermediate,A=Advanced',
  `tags` varchar(500) DEFAULT NULL,
  `slug` varchar(256) NOT NULL,
  `params` varchar(5000) DEFAULT NULL COMMENT 'specific parameters (JSON format), such as SEO settings',
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Dumping data for table `s_tutorial`
--;
--
-- Constraints for table `s_tutorial`
--;
ALTER TABLE `s_tutorial`
  ADD CONSTRAINT `s_tutorial_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);

--
-- Dumping data for table `s_tutorial`
--;

INSERT INTO `s_tutorial` (`id`, `account_id`, `name`, `content`, `difficulty`, `tags`, `slug`, `status`, `create_time`, `update_time`) VALUES
(-1, -1, 'How to write a tutorial', '<p>This is a test tutorial for demo purpose</p>', 'I', 'shop,product,payment method', 'how-to-write-a-tutorial', 'T;D;', 1421212616, 1421278516);

-- --------------------------------------------------------
--
-- Table structure for table `s_tutorial_series`
--;
DROP TABLE IF EXISTS `s_tutorial_series`;
CREATE TABLE IF NOT EXISTS `s_tutorial_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `desc` text DEFAULT NULL,
  `tutorials` varchar(500) NOT NULL COMMENT 'json encoded data: tutorials to be put in this series',
  `tags` varchar(500) DEFAULT NULL,
  `slug` varchar(256) NOT NULL,
  `params` varchar(5000) DEFAULT NULL COMMENT 'specific parameters (JSON format), such as SEO settings',
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

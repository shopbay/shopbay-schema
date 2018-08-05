-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Customer Questions', 1, 'Customer Questions', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.Ask', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.Answer', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Customer.Deactivate', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant Questions', 1, 'Merchant Questions', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.Ask', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.Answer', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Merchant.Deactivate', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant Shop Questions', 1, 'Merchant Shop Questions', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Management.Answer', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Questions.Management.Deactivate', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Questions');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.View');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.Ask');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.Answer');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.Update');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Customer Questions', 'Questions.Customer.Deactivate');

INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Questions');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.Ask');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.Answer');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Questions', 'Questions.Merchant.Deactivate');

INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Shop Questions');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop Questions', 'Questions.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop Questions', 'Questions.Management.Answer');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop Questions', 'Questions.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop Questions', 'Questions.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop Questions', 'Questions.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Shop Questions', 'Questions.Management.Deactivate');

-- --------------------------------------------------------
--
-- Table structure for table `s_question`
--;
DROP TABLE IF EXISTS `s_question`;
CREATE TABLE IF NOT EXISTS `s_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '0=Private, 1=Public',
  `title` varchar(256) DEFAULT NULL,
  `question` text NOT NULL,
  `question_by` varchar(12) NOT NULL,
  `question_time` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `answer_by` int(11) DEFAULT NULL,
  `answer_time` int(11) DEFAULT NULL,
  `tags` varchar(500) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `status` varchar(10) NOT NULL COMMENT 'refer to s_workflow',
  PRIMARY KEY (`id`),
  KEY `question_by` (`question_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Constraints for dumped tables
--;

INSERT INTO `s_question` (`id`, `obj_type`, `obj_id`, `question`, `question_by`, `question_time`, `answer`, `answer_by`, `answer_time`, `type`, `status`) VALUES
(-1, 's_shop', -1, 'Sample Question', -1, 1402664767, 'Sample Answer', -1, 1402664767, 0, 'Q;');
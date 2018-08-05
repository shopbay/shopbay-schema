-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant News', 1, 'Merchant News', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Management.ImageUpload', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Customer News', 1, 'Customer News', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Customer.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('News.Customer.View', 0, NULL, NULL, 'N;');

--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant News');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant News', 'News.Management.ImageUpload');

INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer News');
INSERT INTO `s_auth_itemchild` VALUES('Customer News', 'News.Customer.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer News', 'News.Customer.View');
-- --------------------------------------------------------
--
-- Table structure for table `s_news`
--;
DROP TABLE IF EXISTS `s_news`;
CREATE TABLE IF NOT EXISTS `s_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `headline` varchar(2000) NOT NULL COMMENT 'This column stored json encoded headline in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `content` text NOT NULL COMMENT 'This column stored json encoded content in different languages.',
  `image` int(11) NULL COMMENT 'refer to s_media_association.id',
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Dumping data for table `s_news`
--;
--
-- Constraints for table `s_news`
--;
ALTER TABLE `s_news`
  ADD CONSTRAINT `s_news_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);


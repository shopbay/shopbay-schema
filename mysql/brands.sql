-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Brands', 1, 'Merchant Brands', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Brands.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Brands.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Brands.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Brands.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Brands.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Brands.Management.ImageUpload', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Brands');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Brands', 'Brands.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Brands', 'Brands.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Brands', 'Brands.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Brands', 'Brands.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Brands', 'Brands.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Brands', 'Brands.Management.ImageUpload');

-- --------------------------------------------------------
--
-- Table structure for table `s_brand`
--;
DROP TABLE IF EXISTS `s_brand`;
CREATE TABLE IF NOT EXISTS `s_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `image` int(11) NULL COMMENT 'reference to s_media_association.id',
  `description` text COMMENT 'This column stored json encoded description in different languages.',
  `slug` varchar(100) NOT NULL,
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
-- Constraints for table `s_brand`
--;
ALTER TABLE `s_brand`
  ADD CONSTRAINT `s_brand_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);
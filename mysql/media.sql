-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Media', 1, 'Media', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Upload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Download', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Assets', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Management.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Media.Download.Attachment', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Upload');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Download');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Assets');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Media', 'Media.Management.Deactivate');
-- Assign Merchant Files rights;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Media');
-- Assign Administrator Files rights;
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Media');
-- Assign attachment download rights;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Media.Download.Attachment');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Media.Download.Attachment');

-- --------------------------------------------------------
--
-- Table structure for table `s_media`
--;
DROP TABLE IF EXISTS `s_media`;
CREATE TABLE IF NOT EXISTS `s_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `src_url` varchar(2000) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL COMMENT 'unit in bytes',
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


-- --------------------------------------------------------
--
-- Table structure for table `s_media_association`
--;
DROP TABLE IF EXISTS `s_media_association`;
CREATE TABLE IF NOT EXISTS `s_media_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) NOT NULL,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `media_group` varchar(50) DEFAULT NULL COMMENT 'Grouping of multiple media files',
  `description` varchar(500) DEFAULT NULL COMMENT 'The media association description',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_id` (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Constraints for table `s_media_association`
--;
ALTER TABLE `s_media_association`
  ADD CONSTRAINT `s_media_association_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `s_media` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_attachment`
--;
DROP TABLE IF EXISTS `s_attachment`;
CREATE TABLE IF NOT EXISTS `s_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL COMMENT 'Attachments grouping per object',
  `name` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `src_url` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL COMMENT 'unit in bytes',
  `create_by` varchar(12) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------
--
-- Table structure for table `s_image`
--;
DROP TABLE IF EXISTS `s_image`;
CREATE TABLE IF NOT EXISTS `s_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(20) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `src_url` varchar(2000) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL COMMENT 'unit in bytes',
  `create_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;
--
--
-- --------------------------------------------------------
-- Load default image
--
--;
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(0, 's_system', 0, 'default.jpg', 'default.jpg', '/files/images/default.jpg', 'image/jpeg', 12000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(1, 's_product', 0, 'default-product.png', 'default-product.png', '/files/images/default-product.png', 'image/png', 12000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(2, 's_category', 0, 'default-category.png', 'default-category.png', '/files/images/default-category.png', 'image/png', 12000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(3, 's_shop', 0, 'default-shop.png', 'default-shop.png', '/files/images/default-shop.png', 'image/png', 12000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(4, 's_brand', 0, 'default-brand.jpg', 'default-brand.jpg', '/files/images/default-brand.jpg', 'image/jpeg', 12000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(5, 's_account_profile', 0, 'default-account.jpg', 'default-account.jpg', '/files/images/default-account.jpg', 'image/jpeg', 6000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(6, 's_campaign_bga', 0, 'default-campaign-bga.png', 'default-campaign-bga.png', '/files/images/default-campaign-bga.png', 'image/png', 12000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(7, 's_campaign_sale', 0, 'default-campaign-sale.png', 'default-campaign-sale.png', '/files/images/default-campaign-sale.png', 'image/png', 12000, 0, 1375003208);
INSERT INTO `s_image` (`id`, `obj_type`, `obj_id`, `name`, `filename`, `src_url`, `mime_type`, `size`, `create_by`, `create_time`) VALUES
(8, 's_news', 0, 'default-news.png', 'default-news.png', '/files/images/default-news.png', 'image/png', 12000, 0, 1375003208);


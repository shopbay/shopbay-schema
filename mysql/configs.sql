-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Config' module
-- ;

--
-- End Config management rights
-- ;
INSERT INTO `s_auth_item` VALUES('Configs Manager', 2, 'Configs Manager', NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Configs Default', 1, 'Configs Default', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Default.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Default.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Default.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Default.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Default.System', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Default.Business', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Default.All', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Configs Account', 1, 'Configs Account', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Account.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Account.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Account.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Account.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Account.System', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Account.Business', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.Account.All', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Shop Plans Manager', 2, 'Shop Plans Manager', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs Shop Plan', 1, 'Configs Shop Plan', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.ShopPlan.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Configs.ShopPlan.Update', 0, NULL, NULL, 'N;');
--
-- Configs administration rights
-- RESERVED for SUPERUSER only;
INSERT INTO `s_auth_itemchild` VALUES('Configs Manager', 'Configs Default');
INSERT INTO `s_auth_itemchild` VALUES('Configs Manager', 'Configs Account');
INSERT INTO `s_auth_itemchild` VALUES('Shop Plans Manager', 'Configs Shop Plan');

INSERT INTO `s_auth_itemchild` VALUES('Configs Default', 'Configs.Default.Index');
INSERT INTO `s_auth_itemchild` VALUES('Configs Default', 'Configs.Default.View');
INSERT INTO `s_auth_itemchild` VALUES('Configs Default', 'Configs.Default.Create');
INSERT INTO `s_auth_itemchild` VALUES('Configs Default', 'Configs.Default.Update');
INSERT INTO `s_auth_itemchild` VALUES('Configs Default', 'Configs.Default.System');
INSERT INTO `s_auth_itemchild` VALUES('Configs Default', 'Configs.Default.Business');
INSERT INTO `s_auth_itemchild` VALUES('Configs Default', 'Configs.Default.All');

INSERT INTO `s_auth_itemchild` VALUES('Configs Account', 'Configs.Account.Index');
INSERT INTO `s_auth_itemchild` VALUES('Configs Account', 'Configs.Account.View');
INSERT INTO `s_auth_itemchild` VALUES('Configs Account', 'Configs.Account.Create');
INSERT INTO `s_auth_itemchild` VALUES('Configs Account', 'Configs.Account.Update');
INSERT INTO `s_auth_itemchild` VALUES('Configs Account', 'Configs.Account.System');
INSERT INTO `s_auth_itemchild` VALUES('Configs Account', 'Configs.Account.Business');
INSERT INTO `s_auth_itemchild` VALUES('Configs Account', 'Configs.Account.All');

INSERT INTO `s_auth_itemchild` VALUES('Configs Shop Plan', 'Configs.ShopPlan.Index');
INSERT INTO `s_auth_itemchild` VALUES('Configs Shop Plan', 'Configs.ShopPlan.Update');
-- --------------------------------------------------------
--
-- Table structure for table `s_config`
--;
DROP TABLE IF EXISTS `s_config`;
CREATE TABLE IF NOT EXISTS `s_config` (
  `id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_config`
--;
INSERT INTO `s_config` VALUES(1000, 'system', 'record_per_page', '20');
INSERT INTO `s_config` VALUES(1001, 'system', 'default_password', 'Password1');
INSERT INTO `s_config` VALUES(1002, 'system', 'email_notification', 'on');
INSERT INTO `s_config` VALUES(1003, 'system', 'subscription_dunning_days', '30');
INSERT INTO `s_config` VALUES(1004, 'system', 'email_contact', 'unset');
INSERT INTO `s_config` VALUES(1005, 'system', 'email_mode', 'async');
INSERT INTO `s_config` VALUES(1006, 'system', 'news_per_page', '3');
INSERT INTO `s_config` VALUES(1007, 'system', 'bga_per_page', '4');
INSERT INTO `s_config` VALUES(1008, 'system', 'activation_period', '14');
-- The product import files are located at merchat/www/files
-- ;
INSERT INTO `s_config` VALUES(1009, 'system', 'product_import_guide', 'ProductImportGuide_ver1-0.xlsx');
INSERT INTO `s_config` VALUES(1010, 'system', 'product_import_template', 'ProductImportTemplate_ver1-0.xlsx');
INSERT INTO `s_config` VALUES(1011, 'system', 'media_mime_type', 'text/plain text/csv text/richtext image/x-icon image/jpeg image/gif image/png image/tiff application/ogg audio/ogg audio/midi audio/mpeg audio/mp4 audio/wav audio/x-wav video/mpeg video/ogg video/mp4 video/webm');
INSERT INTO `s_config` VALUES(1012, 'system', 'media_max_size', '5000000');
INSERT INTO `s_config` VALUES(1013, 'system', 'features_default_page', 'highlights');
INSERT INTO `s_config` VALUES(1014, 'system', 'wcm_color_scheme', 'white');
INSERT INTO `s_config` VALUES(1015, 'system', 'facebook_link', 'https://www.facebook.com/shopbay.org');
INSERT INTO `s_config` VALUES(1016, 'system', 'twitter_link', 'https://www.twitter.com/shopbayorg');
INSERT INTO `s_config` VALUES(1017, 'system', 'linkedin_link', 'https://www.linkedin.com');
INSERT INTO `s_config` VALUES(1018, 'system', 'shop_theme_default', 'simple');
INSERT INTO `s_config` VALUES(1019, 'system', 'signup_capacity', '100');
INSERT INTO `s_config` VALUES(1020, 'system', 'chatbot_demo_link', 'https://www.messenger.com/t/toytoywonderland');
INSERT INTO `s_config` VALUES(1021, 'system', 'shop_demo_link', 'https://toytoywonderland.shopbay.org');
INSERT INTO `s_config` VALUES(1022, 'system', 'repo_source_link', 'https://github.com/shopbay/shopbay.org');

INSERT INTO `s_config` VALUES(2000, 'business', 'limit_product_image', '5');
INSERT INTO `s_config` VALUES(2001, 'business', 'new_product_criteria', '3');
INSERT INTO `s_config` VALUES(2002, 'business', 'catalog_item_per_page', '12');
INSERT INTO `s_config` VALUES(2003, 'business', 'show_promotion_page', 'true');
INSERT INTO `s_config` VALUES(2004, 'business', 'limit_shop_banner', '3');
INSERT INTO `s_config` VALUES(2005, 'business', 'refund_shipping_fee', 'false');
-- Default storage limit per user is 100M Bytes ;
INSERT INTO `s_config` VALUES(2007, 'business', 'media_storage_limit', '104857600');
INSERT INTO `s_config` VALUES(2008, 'business', 'media_mount_point', 'mount_point_1');
INSERT INTO `s_config` VALUES(2009, 'business', 'limit_navitem', '10');

-- --------------------------------------------------------
--
-- Table structure for table `s_config_account`
-- The idea is to have account level configuration, that can override system default configuration (s_config)
--;
DROP TABLE IF EXISTS `s_config_account`;
CREATE TABLE IF NOT EXISTS `s_config_account` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(12) NOT NULL,
  `category` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;




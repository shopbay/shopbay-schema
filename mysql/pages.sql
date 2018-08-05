-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
-- ;
INSERT INTO `s_auth_item` VALUES('Merchant Pages', 1, 'Merchant Pages', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Management.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Management.Deactivate', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant PageLayout Editor', 1, 'Merchant PageLayout Editor', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Layout.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Layout.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Layout.Category', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Layout.ListItem', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Pages.Layout.Reset', 0, NULL, NULL, 'N;');

-- Assign rights;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Pages');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Pages', 'Pages.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Pages', 'Pages.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Pages', 'Pages.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Pages', 'Pages.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Pages', 'Pages.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Pages', 'Pages.Management.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Pages', 'Pages.Management.Deactivate');

INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant PageLayout Editor');
INSERT INTO `s_auth_itemchild` VALUES('Merchant PageLayout Editor', 'Pages.Layout.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant PageLayout Editor', 'Pages.Layout.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant PageLayout Editor', 'Pages.Layout.Category');
INSERT INTO `s_auth_itemchild` VALUES('Merchant PageLayout Editor', 'Pages.Layout.ListItem');
INSERT INTO `s_auth_itemchild` VALUES('Merchant PageLayout Editor', 'Pages.Layout.Reset');

-- --------------------------------------------------------
--
-- Table structure for table `s_page`
-- ;
DROP TABLE IF EXISTS `s_page`;
CREATE TABLE IF NOT EXISTS `s_page` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) NOT NULL,
  `owner_id` int(11) NOT NULL COMMENT 'The page owner id',
  `owner_type` varchar(25) NOT NULL COMMENT 'The owner type, e.g. shop or any entity that owns the page',
  `title` varchar(1500) NOT NULL COMMENT 'page title',
  `desc` varchar(2500) DEFAULT NULL COMMENT 'page description',
  `slug` varchar(100) NOT NULL COMMENT 'page url slug',
  `content` text DEFAULT NULL COMMENT 'page content',
  `params` varchar(5000) DEFAULT NULL COMMENT 'pages specific parameters (JSON format), such as layout, SEO settings',
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Constraints for table `s_page`
--;
ALTER TABLE `s_page`
  ADD CONSTRAINT `s_page_config_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `s_account` (`id`);


-- --------------------------------------------------------
--
-- Table structure for table `s_page_layout`
--;
DROP TABLE IF EXISTS `s_page_layout`;
CREATE TABLE IF NOT EXISTS `s_page_layout` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL COMMENT 'The page layout owner id',
  `owner_type` varchar(25) NOT NULL COMMENT 'The owner type, e.g. shop or any entity that owns the page layout',
  `theme_id` int(11) NOT NULL,
  `theme` varchar(25) NOT NULL COMMENT 'unique theme name',
  `name` varchar(25) NOT NULL COMMENT 'page layout name',
  `page` varchar(25) DEFAULT NULL COMMENT 'page name. Either null (default page) or refer to s_page.id or in-built page',
  `layout` text NOT NULL COMMENT 'json-based the page layout design',
  `params` varchar(1000) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Constraints for dumped tables
--;
--
-- Constraints for table `s_page_layout`
--;
ALTER TABLE `s_page_layout`
  ADD CONSTRAINT `s_page_layout_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `s_theme` (`id`);
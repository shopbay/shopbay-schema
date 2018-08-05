-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Administrator Help', 1, 'Administrator Help', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Help.Admin.Index', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant Help', 1, 'Merchant Help', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Help.Merchant.Index', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Customer Help', 1, 'Customer Help', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Help.Customer.Index', 0, NULL, NULL, 'N;');

--;
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Administrator Help');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Help', 'Help.Admin.Index');

--
-- Activated role get auto assigned necessary rights for help access ;
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Merchant Help');
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Customer Help');
-- Merchant role get auto assigned necessary rights for help access ;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Help');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Help', 'Help.Merchant.Index');

INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Help');
INSERT INTO `s_auth_itemchild` VALUES('Customer Help', 'Help.Customer.Index');

-- --------------------------------------------------------
--
-- Table structure for table `s_wizard`
--;
DROP TABLE IF EXISTS `s_wizard`;
CREATE TABLE IF NOT EXISTS `s_wizard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caller` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

--
-- Dumping data for table `s_wizard` : default setup
--;

INSERT INTO `s_wizard` (`id`, `caller`, `profile`, `status`, `create_time`, `update_time`, `name`) VALUES
(1, 'merchant:accounts/welcome/index', 'WorkflowWizardReminderProfile', 'Y', 1394540120, 1413972311, 'WorkflowWizard'),
(2, 'merchant:accounts/welcome/index', 'MerchantWizardHelpProfile', 'Y', 1394540120, 1413972311, 'MerchantWizard'),
(3, 'merchant:accounts/management/email', 'AccountWizardChangeEmailProfile', 'Y', 1394540120, 1413972311, 'AccountWizard'),
(4, 'merchant:accounts/management/password', 'AccountWizardChangePasswordProfile', 'Y', 1394540120, 1413972311, 'AccountWizard'),
(5, 'customer:accounts/welcome/index', 'WorkflowWizardReminderProfile', 'Y', 1394540120, 1413972311, 'WorkflowWizard'),
(6, 'customer:accounts/management/password', 'AccountWizardChangePasswordProfile', 'Y', 1394540120, 1413972311, 'AccountWizard'),
(7, 'customer:accounts/management/email', 'AccountWizardChangeEmailProfile', 'Y', 1394540120, 1413972311, 'AccountWizard'),
(8, 'admin:accounts/welcome/index', 'WorkflowWizardReminderProfile', 'Y', 1394540120, 1413972311, 'WorkflowWizard'),
(9, 'merchant:shops/management/index', 'MerchantWizardHelpProfile', 'Y', 1394540120, 1413972311, 'MerchantWizard'),
(10, 'merchant:shops/management/view', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(11, 'merchant:shops/management/update', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(12, 'merchant:products/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(13, 'merchant:products/management/view', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(14, 'merchant:payments/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(15, 'merchant:taxes/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(16, 'merchant:brands/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(17, 'merchant:news/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(18, 'merchant:questions/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(19, 'merchant:campaigns/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(20, 'merchant:campaigns/sale/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(21, 'merchant:campaigns/bga/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(22, 'merchant:campaigns/promocode/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(23, 'merchant:shippings/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(24, 'merchant:shippings/management/index', 'ShippingWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShippingWizard'),
(25, 'merchant:shippings/zone/index', 'ShippingWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShippingWizard'),
(26, 'merchant:inventories/management/index', 'ShopWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShopWizard'),
(27, 'merchant:inventories/management/index', 'InventoryWizardStarterProfile', 'Y', 1394540120, 1413972311, 'InventoryWizard'),
(28, 'merchant:inventories/management/create', 'InventoryWizardStarterProfile', 'Y', 1394540120, 1413972311, 'InventoryWizard'),
(29, 'merchant:shippings/management/create', 'ShippingWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ShippingWizard'),
(30, 'shop:profile/email', 'AccountWizardChangeEmailProfile', 'Y', 1394540120, 1413972311, 'AccountWizard'),
(31, 'shop:accounts/welcome/index', 'WorkflowWizardReminderProfile', 'Y', 1394540120, 1413972311, 'WorkflowWizard'),
(32, 'merchant:products/management/view', 'ProductWizardStarterProfile', 'Y', 1394540120, 1413972311, 'ProductWizard');

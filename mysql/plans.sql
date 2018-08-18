-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
-- ;
INSERT INTO `s_auth_item` VALUES('Plans Creator', 2, 'Plans Creator', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Packages Creator', 2, 'Packages Creator', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans', 1, 'Plans', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.Submit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Packages', 1, 'Packages', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Package.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Package.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Package.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Package.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Package.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Package.Submit', 0, NULL, NULL, 'N;');
-- subscribe/unsubscribe permission;
INSERT INTO `s_auth_item` VALUES('Plans Subscription', 1, 'Plans Subscription', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.Checkout', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.Billing', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.Complete', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.Pending', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.Cancel', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.RetryCharge', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.Pastdue', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Subscription.Suspend', 0, NULL, NULL, 'N;');
-- ;
INSERT INTO `s_auth_itemchild` VALUES('Plans Creator', 'Plans');
INSERT INTO `s_auth_itemchild` VALUES('Plans', 'Plans.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Plans', 'Plans.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Plans', 'Plans.Management.Create');
INSERT INTO `s_auth_itemchild` VALUES('Plans', 'Plans.Management.Update');
INSERT INTO `s_auth_itemchild` VALUES('Plans', 'Plans.Management.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Plans', 'Plans.Management.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Packages Creator', 'Packages');
INSERT INTO `s_auth_itemchild` VALUES('Packages', 'Plans.Package.Index');
INSERT INTO `s_auth_itemchild` VALUES('Packages', 'Plans.Package.View');
INSERT INTO `s_auth_itemchild` VALUES('Packages', 'Plans.Package.Create');
INSERT INTO `s_auth_itemchild` VALUES('Packages', 'Plans.Package.Update');
INSERT INTO `s_auth_itemchild` VALUES('Packages', 'Plans.Package.Delete');
INSERT INTO `s_auth_itemchild` VALUES('Packages', 'Plans.Package.Submit');
-- Assign subscribe/unsubscribe rights;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Plans Subscription');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.Checkout');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.Billing');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.Complete');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.Pending');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.Cancel');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.RetryCharge');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.Pastdue');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Subscription.Suspend');

-- --------------------------------------------------------
-- Following permissions are specific to shopbay-api app
-- Only API support following actions
-- ;
INSERT INTO `s_auth_item` VALUES('Subscriptions', 1, 'Subscriptions', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Subscriptions.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Subscriptions.Management.View', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Subscriptions.Management.Check', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Subscriptions');
-- --------------------------------------------------------
-- Support admin users to be able to subcribe to plan/package (for storage plan to store media files)
-- ;
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Subscriptions');

INSERT INTO `s_auth_itemchild` VALUES('Subscriptions', 'Subscriptions.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Subscriptions', 'Subscriptions.Management.View');
INSERT INTO `s_auth_itemchild` VALUES('Subscriptions', 'Subscriptions.Management.Check');

INSERT INTO `s_auth_item` VALUES('Plans.Management.Subscribe', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.Unsubscribe', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Management.Subscribe');
INSERT INTO `s_auth_itemchild` VALUES('Plans Subscription', 'Plans.Management.Unsubscribe');

INSERT INTO `s_auth_item` VALUES('Plans Approver', 2, 'Plans Approver', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Packages Approver', 2, 'Packages Approver', NULL, 'N;');

-- approve permission;
INSERT INTO `s_auth_item` VALUES('Plans Approval', 1, 'Plans Approval', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Management.Approve', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Packages Approval', 1, 'Packages Approval', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans.Package.Approve', 0, NULL, NULL, 'N;');
-- Assign approve rights;
INSERT INTO `s_auth_itemchild` VALUES('Plans Approver', 'Plans Approval');
INSERT INTO `s_auth_itemchild` VALUES('Plans Approval', 'Plans.Management.Approve');
INSERT INTO `s_auth_itemchild` VALUES('Packages Approver', 'Packages Approval');
INSERT INTO `s_auth_itemchild` VALUES('Packages Approval', 'Plans.Package.Approve');

-- --------------------------------------------------------
--
-- Table structure for table `s_plan`
-- ;
DROP TABLE IF EXISTS `s_plan`;
CREATE TABLE IF NOT EXISTS `s_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'plan name',
  `type` char(1) NOT NULL COMMENT 'F=Fixed, R=Recurring, T=Trial',
  `price` decimal(10,2) NOT NULL COMMENT 'price according to type, e.g. one monthly price, yearly price',
  `currency` varchar(3) NOT NULL COMMENT 'plan price currency',
  `recurring` char(1) NULL COMMENT 'recurring type, M=Monthly, Y=Yearly',
  `duration` int(2) NULL COMMENT 'trial duration in number of days',
  `status` varchar(10) NOT NULL COMMENT 'plan status, online or offline',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;
-- --------------------------------------------------------
--
-- Table structure for table `s_plan_item`
-- ;
DROP TABLE IF EXISTS `s_plan_item`;
CREATE TABLE IF NOT EXISTS `s_plan_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL COMMENT 'name of plan item',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_id` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;
--
-- Constraints for table `s_plan_item`
-- ;
ALTER TABLE `s_plan_item`
  ADD CONSTRAINT `s_plan_item_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `s_plan` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_package`
-- ;
DROP TABLE IF EXISTS `s_package`;
CREATE TABLE IF NOT EXISTS `s_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) NOT NULL,
  `name` varchar(500) NOT NULL COMMENT 'package name',
  `type` char(1) NOT NULL COMMENT 'F=Fixed, R=Recurring, T=Trial',
  `plans` varchar(100) NOT NULL COMMENT 'plans id delimiter by comma',
  `params` varchar(500) DEFAULT NULL COMMENT 'json_encode additional control parameters',
  `status` varchar(10) NOT NULL COMMENT 'package status, online or offline',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

-- --------------------------------------------------------
--
-- Table structure for table `s_subscription`
-- ;
DROP TABLE IF EXISTS `s_subscription`;
CREATE TABLE IF NOT EXISTS `s_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) NOT NULL,
  `shop_id` int(11) DEFAULT NULL COMMENT 'the shop associated with the subscription, for free trial, this field will be blank',
  `subscription_no` varchar(25) NOT NULL COMMENT 'subscription no generated by payment gateway after payment confirmation',
  `package_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `start_date` date NOT NULL COMMENT 'start date/time of subscription',
  `end_date` date NOT NULL COMMENT 'end date/time of subscription',
  `status` varchar(10) NOT NULL COMMENT 'subscription status, further control such as expired, past due etc',
  `payment_token` varchar(25) DEFAULT NULL COMMENT 'the payment token used to pay subscription',
  `charged` char(1) NOT NULL DEFAULT 'N' COMMENT 'charged status. Y=Yes, N=No',
  `transaction_data` varchar(5000) DEFAULT NULL COMMENT 'json encoded transaction data, contains transaction id, credit card info etc',
  `create_time` int(11) NOT NULL COMMENT 'subscription date, can be interpret as purchase date',
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


-- --------------------------------------------------------
--
-- Table structure for table `s_subscription_plan`
-- ;
DROP TABLE IF EXISTS `s_subscription_plan`;
CREATE TABLE IF NOT EXISTS `s_subscription_plan` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscription_no` varchar(25) NOT NULL COMMENT 'subscription no',
  `plan_id` int(11) NOT NULL,
  `item_name` varchar(500) NOT NULL COMMENT 'name of plan item',
  `item_params` varchar(500) DEFAULT NULL COMMENT 'json_encode additional control parameters',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
--
-- Constraints for table `s_subscription_plan`
-- ;
ALTER TABLE `s_subscription_plan`
  ADD CONSTRAINT `s_subscription_plan_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `s_plan` (`id`);
ALTER TABLE `s_subscription_plan`
  ADD CONSTRAINT `s_subscription_plan_ibfk_2` FOREIGN KEY (`subscription_id`) REFERENCES `s_subscription` (`id`);
ALTER TABLE `s_subscription_plan`
  ADD CONSTRAINT `s_subscription_plan_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `s_shop` (`id`);

-- --------------------------------------------------------
--
-- Table structure for table `s_feature`
-- ;
DROP TABLE IF EXISTS `s_feature`;
CREATE TABLE IF NOT EXISTS `s_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `params` varchar(500) DEFAULT NULL COMMENT 'json_encode additional control parameters',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10000;




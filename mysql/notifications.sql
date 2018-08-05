-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
-- --------------------------------------------------------;
INSERT INTO `s_auth_item` VALUES('Notification Templates Manager', 2, 'Notification Templates Manager', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Admin Notifications', 1, 'Admin Notifications', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Notifications.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Notifications.Management.Template', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('System Emails', 1, 'System Emails', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Notifications.EmailTrail.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Notifications.EmailTrail.View', 0, NULL, NULL, 'N;');
-- for notification subscriptions ;
INSERT INTO `s_auth_item` VALUES('Subscribe Notifications', 1, 'Subscribe Notifications', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Notifications.Subscription.Index', 0, NULL, NULL, 'N;');

--;
INSERT INTO `s_auth_itemchild` VALUES('Notification Templates Manager', 'Admin Notifications');
INSERT INTO `s_auth_itemchild` VALUES('Admin Notifications', 'Notifications.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Admin Notifications', 'Notifications.Management.Template');
INSERT INTO `s_auth_itemchild` VALUES('System Emails', 'Notifications.EmailTrail.Index');
INSERT INTO `s_auth_itemchild` VALUES('System Emails', 'Notifications.EmailTrail.View');
-- All app users can subscribe to respective notfications ;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Subscribe Notifications');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Subscribe Notifications');
INSERT INTO `s_auth_itemchild` VALUES('Subscribe Notifications', 'Notifications.Subscription.Index');
-- --------------------------------------------------------
--
-- Table structure for table `s_notification`
--;
DROP TABLE IF EXISTS `s_notification`;
CREATE TABLE IF NOT EXISTS `s_notification` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT 'the notification name',
  `type` tinyint(4) NOT NULL COMMENT '0=Message(Inbox), 1=Email, 2=SMS, 3=Facebook Messenger',
  `event_type` varchar(20) DEFAULT NULL COMMENT 'If not null this is the Transitional object table name',
  `event` varchar(50) DEFAULT NULL COMMENT 'If not null it means this notification is linked to Transitional object with a status',
  `recipient_type` tinyint(4) NOT NULL COMMENT '0=User, 1=ObjectOwner format[<object>.<owner_field>], 2=Role',
  `recipient` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_notification`
--;

INSERT INTO `s_notification` VALUES(1, 'question_ask', 0, 's_question', 'Q;', 1, 'shop.shopId', 'You have a question', 'common.modules.notifications.templates.message.question.ask');
INSERT INTO `s_notification` VALUES(2, 'question_ask', 1, 's_question', 'Q;', 1, 'shop.shopId', 'You have a question', 'common.modules.notifications.templates.email.question.ask');
INSERT INTO `s_notification` VALUES(3, 'question_answer', 0, 's_question', 'Q;OFF;', 0, 'question_by', 'Your question is answered', 'common.modules.notifications.templates.message.question.answer');
INSERT INTO `s_notification` VALUES(4, 'question_answer', 1, 's_question', 'Q;OFF;', 0, 'question_by', 'Your question is answered', 'common.modules.notifications.templates.email.question.answer');


INSERT INTO `s_notification` VALUES(20, 'shop_request', 0, 's_shop', 'SHOP;PD;', 2, 'Shops Manager', 'New Shop Application', 'common.modules.notifications.templates.message.shop.request');
INSERT INTO `s_notification` VALUES(21, 'shop_request', 1, 's_shop', 'SHOP;PD;', 2, 'Shops Manager', 'New Shop Application', 'common.modules.notifications.templates.email.shop.request');
INSERT INTO `s_notification` VALUES(22, 'shop_approve', 0, 's_shop', 'SHOP;AC;', 0, 'account_id', 'Shop Application Approval Notice', 'common.modules.notifications.templates.message.shop.approve');
INSERT INTO `s_notification` VALUES(23, 'shop_approve', 1, 's_shop', 'SHOP;AC;', 0, 'account_id', 'Shop Application Approval Notice', 'common.modules.notifications.templates.email.shop.approve');
INSERT INTO `s_notification` VALUES(24, 'shop_reject', 0, 's_shop', 'SHOP;RJ;', 0, 'account_id', 'Unsuccessful Shop Application Notice', 'common.modules.notifications.templates.message.shop.reject');
INSERT INTO `s_notification` VALUES(25, 'shop_reject', 1, 's_shop', 'SHOP;RJ;', 0, 'account_id', 'Unsuccessful Shop Application Notice', 'common.modules.notifications.templates.email.shop.reject');

INSERT INTO `s_notification` VALUES(30, 'account_welcome', 0, 's_account', 'A;SIGN;', 0, 'id', 'Welcome to {app}!', 'common.modules.notifications.templates.message.account.welcome');
INSERT INTO `s_notification` VALUES(31, 'account_welcome', 1, 's_account', 'A;SIGN;', 0, 'email', 'Welcome to {app}!', 'common.modules.notifications.templates.email.account.welcome');
INSERT INTO `s_notification` VALUES(32, 'account_activate', 1, 's_account', 'A;SIGN;', 0, 'email', 'Thanks for signing up {app}!', 'common.modules.notifications.templates.email.account.activate');
INSERT INTO `s_notification` VALUES(33, 'account_resetpassword', 1, 's_account', 'A;PWD;', 0, 'email', 'Account Password Reset', 'common.modules.notifications.templates.email.account.resetpassword');
INSERT INTO `s_notification` VALUES(34, 'account_resetemail', 1, 's_account', 'A;EML;', 0, 'email', 'Account Email Reset', 'common.modules.notifications.templates.email.account.resetemail');
INSERT INTO `s_notification` VALUES(35, 'account_welcome', 0, 's_account', 'A;PRESIGN;', 0, 'id', 'Welcome to {app}!', 'common.modules.notifications.templates.message.account.welcome');
INSERT INTO `s_notification` VALUES(36, 'account_welcome', 1, 's_account', 'A;PRESIGN;', 0, 'email', 'Welcome to {app}!', 'common.modules.notifications.templates.email.account.welcome');
INSERT INTO `s_notification` VALUES(37, 'account_presignup', 1, 's_account', 'A;PRESIGN;', 0, 'email', 'Thanks for signing up {app}!', 'common.modules.notifications.templates.email.account.presignup');
INSERT INTO `s_notification` VALUES(38, 'account_new', 1, 's_account', 'A;NEW;', 0, 'email', 'Welcome to {app}!', 'common.modules.notifications.templates.email.account.new');
INSERT INTO `s_notification` VALUES(39, 'account_closed', 1, 's_account', 'A;CLOSED;', 0, 'email', 'Thanks for using {app}', 'common.modules.notifications.templates.email.account.closed');

INSERT INTO `s_notification` VALUES(40, 'order_pending', 0, 's_order', 'PY;', 0, 'account_id', 'Purchase Order Acknowledgement {order_no}', 'common.modules.notifications.templates.message.order.pending');
INSERT INTO `s_notification` VALUES(41, 'order_pending', 1, 's_order', 'PY;', 3, 'notification', 'Purchase Order Acknowledgement {order_no}', 'common.modules.notifications.templates.email.order.pending');
INSERT INTO `s_notification` VALUES(42, 'order_confirm', 0, 's_order', 'O;', 0, 'account_id', 'Purchase Order Confirmation {order_no}', 'common.modules.notifications.templates.message.order.confirm');
INSERT INTO `s_notification` VALUES(43, 'order_confirm', 1, 's_order', 'O;', 3, 'notification', 'Purchase Order Confirmation {order_no}', 'common.modules.notifications.templates.email.order.confirm');
INSERT INTO `s_notification` VALUES(44, 'order_pay', 0, 's_order', 'U;', 0, 'account_id', 'Please make payment for Purchase Order {order_no}', 'common.modules.notifications.templates.message.order.pay');
INSERT INTO `s_notification` VALUES(45, 'order_pay', 1, 's_order', 'U;', 3, 'notification', 'Please make payment for Purchase Order {order_no}', 'common.modules.notifications.templates.email.order.pay');
INSERT INTO `s_notification` VALUES(46, 'order_cancel', 0, 's_order', 'CCL;', 0, 'account_id', 'Your order {order_no} is canceled', 'common.modules.notifications.templates.message.order.cancel');
INSERT INTO `s_notification` VALUES(47, 'order_cancel', 1, 's_order', 'CCL;', 3, 'notification', 'Your order {order_no} is canceled', 'common.modules.notifications.templates.email.order.cancel');
INSERT INTO `s_notification` VALUES(48, 'order_confirm', 0, 's_order', 'D;', 0, 'account_id', 'Purchase Order Confirmation {order_no}', 'common.modules.notifications.templates.message.order.confirm');
INSERT INTO `s_notification` VALUES(49, 'order_confirm', 1, 's_order', 'D;', 3, 'notification', 'Purchase Order Confirmation {order_no}', 'common.modules.notifications.templates.email.order.confirm');
INSERT INTO `s_notification` VALUES(50, 'order_cancel', 0, 's_order', 'D;CCL;', 0, 'account_id', 'Your order {order_no} is canceled', 'common.modules.notifications.templates.message.order.cancel');
INSERT INTO `s_notification` VALUES(51, 'order_cancel', 1, 's_order', 'D;CCL;', 3, 'notification', 'Your order {order_no} is canceled', 'common.modules.notifications.templates.email.order.cancel');
INSERT INTO `s_notification` VALUES(52, 'order_unpaid', 1, 's_order', 'U;', 3, 'merchantNotification', 'You have new unpaid Purchase Order {order_no}', 'common.modules.notifications.templates.email.order.unpaid');
INSERT INTO `s_notification` VALUES(53, 'order_reject', 0, 's_order', 'O;RJ;', 0, 'account_id', 'Unsuccessful Payment Verification {order_no}', 'common.modules.notifications.templates.message.order.reject');
INSERT INTO `s_notification` VALUES(54, 'order_reject', 1, 's_order', 'O;RJ;', 3, 'notification', 'Unsuccessful Payment Verification {order_no}', 'common.modules.notifications.templates.email.order.reject');
INSERT INTO `s_notification` VALUES(55, 'order_verify', 0, 's_order', 'PY;', 1, 'shop.shop_id', 'You have order {order_no} pending payment verification', 'common.modules.notifications.templates.message.order.pending_merchant');
INSERT INTO `s_notification` VALUES(56, 'order_verify', 1, 's_order', 'PY;', 3, 'merchantNotification', 'You have order {order_no} pending payment verification', 'common.modules.notifications.templates.email.order.pending_merchant');

INSERT INTO `s_notification` VALUES(62, 'shippingorder_process', 0, 's_shipping_order', 'O;', 0, 'account_id', 'You have Order {order_no} pending processing - {shippingname}', 'common.modules.notifications.templates.message.shippingorder.process');
INSERT INTO `s_notification` VALUES(63, 'shippingorder_process', 1, 's_shipping_order', 'O;', 0, 'account_id', 'You have Order {order_no} pending processing - {shippingname}', 'common.modules.notifications.templates.email.shippingorder.process');
INSERT INTO `s_notification` VALUES(64, 'shippingorder_process', 0, 's_shipping_order', 'D;', 0, 'account_id', 'You have Order {order_no} pending processing - {shippingname}', 'common.modules.notifications.templates.message.shippingorder.process');
INSERT INTO `s_notification` VALUES(65, 'shippingorder_process', 1, 's_shipping_order', 'D;', 0, 'account_id', 'You have Order {order_no} pending processing - {shippingname}', 'common.modules.notifications.templates.email.shippingorder.process');
INSERT INTO `s_notification` VALUES(66, 'shippingorder_refund', 0, 's_shipping_order', 'RF;', 1, 'order.order_id', 'Refund Notice {order_no}', 'common.modules.notifications.templates.message.shippingorder.refund');
INSERT INTO `s_notification` VALUES(67, 'shippingorder_refund', 1, 's_shipping_order', 'RF;', 1, 'order.order_id', 'Refund Notice {order_no}', 'common.modules.notifications.templates.email.shippingorder.refund');

INSERT INTO `s_notification` VALUES(70, 'item_ship', 0, 's_item', 'S;', 0, 'account_id', 'Shipping Notice {name}', 'common.modules.notifications.templates.message.item.ship');
INSERT INTO `s_notification` VALUES(71, 'item_ship', 1, 's_item', 'S;', 3, 'notification', 'Shipping Notice {name}', 'common.modules.notifications.templates.email.item.ship');
INSERT INTO `s_notification` VALUES(72, 'item_receive', 0, 's_item', 'RC;', 1, 'shop.shop_id', 'Receipt Notice {name}', 'common.modules.notifications.templates.message.item.receive');
INSERT INTO `s_notification` VALUES(73, 'item_receive', 1, 's_item', 'RC;', 1, 'shop.shop_id', 'Receipt Notice {name}', 'common.modules.notifications.templates.email.item.receive');
INSERT INTO `s_notification` VALUES(74, 'item_review', 0, 's_item', 'RV;', 1, 'shop.shop_id', 'Review Notice {name}', 'common.modules.notifications.templates.message.item.review');
INSERT INTO `s_notification` VALUES(75, 'item_review', 1, 's_item', 'RV;', 1, 'shop.shop_id', 'Review Notice {name}', 'common.modules.notifications.templates.email.item.review');
-- below is a repeat email of s_shipping_order RF; but at item level;
INSERT INTO `s_notification` VALUES(76, 'item_refund', 0, 's_item', 'RF;', 0, 'account_id', 'Refund Notice for {name}', 'common.modules.notifications.templates.message.item.refund');
INSERT INTO `s_notification` VALUES(77, 'item_refund', 1, 's_item', 'RF;', 3, 'notification', 'Refund Notice for {name}', 'common.modules.notifications.templates.email.item.refund');
-- return notification support;
INSERT INTO `s_notification` VALUES(78, 'item_return', 0, 's_item', 'RT;PD;', 1, 'shop.shop_id', 'Return Request for {name}', 'common.modules.notifications.templates.message.item.returnrequest');
INSERT INTO `s_notification` VALUES(79, 'item_return', 1, 's_item', 'RT;PD;', 1, 'shop.shop_id', 'Return Request for {name}', 'common.modules.notifications.templates.email.item.returnrequest');
-- note id jump to 81 as 80 is occupied by s_message notification;
INSERT INTO `s_notification` VALUES(81, 'item_return_approve', 0, 's_item', 'RT;AC;', 0, 'account_id', 'Return request approved for {name}', 'common.modules.notifications.templates.message.item.returnapprove');
INSERT INTO `s_notification` VALUES(82, 'item_return_approve', 1, 's_item', 'RT;AC;', 3, 'notification', 'Return request approved for {name}', 'common.modules.notifications.templates.email.item.returnapprove');
INSERT INTO `s_notification` VALUES(83, 'item_return_reject', 0, 's_item', 'RT;RJ;', 0, 'account_id', 'Return request rejected for {name}', 'common.modules.notifications.templates.message.item.returnreject');
INSERT INTO `s_notification` VALUES(84, 'item_return_reject', 1, 's_item', 'RT;RJ;', 3, 'notification', 'Return request rejected for {name}', 'common.modules.notifications.templates.email.item.returnreject');
INSERT INTO `s_notification` VALUES(85, 'item_cancel', 0, 's_item', 'CCL;', 0, 'account_id', 'Order for {name} is canceled', 'common.modules.notifications.templates.message.item.cancel');
INSERT INTO `s_notification` VALUES(86, 'item_cancel', 1, 's_item', 'CCL;', 3, 'notification', 'Order for {name} is canceled', 'common.modules.notifications.templates.email.item.cancel');

-- message.subject and content is directly retrieved from Message model object;
INSERT INTO `s_notification` VALUES(80, 'message_reply', 1, 's_message', 'OK', 0, 'recipient', 'You have a message', 'common.modules.notifications.templates.email.message.reply');

INSERT INTO `s_notification` VALUES(90, 'tutorial_submit', 0, 's_tutorial', 'T;S;', 2, 'Tutorials Publisher', 'Tutorial Submission - {name}', 'common.modules.notifications.templates.message.tutorial.submit');
INSERT INTO `s_notification` VALUES(91, 'tutorial_submit', 1, 's_tutorial', 'T;S;', 2, 'Tutorials Publisher', 'Tutorial Submission - {name}', 'common.modules.notifications.templates.email.tutorial.submit');
INSERT INTO `s_notification` VALUES(92, 'tutorial_approve', 0, 's_tutorial', 'T;P;', 0, 'account_id', 'Tutorial Approval - {name}', 'common.modules.notifications.templates.message.tutorial.approve');
INSERT INTO `s_notification` VALUES(93, 'tutorial_approve', 1, 's_tutorial', 'T;P;', 0, 'account_id', 'Tutorial Approval - {name}', 'common.modules.notifications.templates.email.tutorial.approve');
INSERT INTO `s_notification` VALUES(94, 'tutorial_amend', 0, 's_tutorial', 'T;D;', 0, 'account_id', 'Tutorial Amendment - {name}', 'common.modules.notifications.templates.message.tutorial.amend');
INSERT INTO `s_notification` VALUES(95, 'tutorial_amend', 1, 's_tutorial', 'T;D;', 0, 'account_id', 'Tutorial Amendment - {name}', 'common.modules.notifications.templates.email.tutorial.amend');

-- notification instruction to send low inventory notice;
INSERT INTO `s_notification` VALUES(100, 'inventory_low', 0, 's_product', 'PRD;LOW;', 1, 'shop.shop_id', 'Low Inventory Notice', 'common.modules.notifications.templates.message.inventory.lowstock');
INSERT INTO `s_notification` VALUES(101, 'inventory_low', 1, 's_product', 'PRD;LOW;', 1, 'shop.shop_id', 'Low Inventory Notice', 'common.modules.notifications.templates.email.inventory.lowstock');

INSERT INTO `s_notification` VALUES(110, 'ticket_submit', 0, 's_ticket', 'TKT;S;', 2, 'Tickets Manager', '[New Ticket:{id}] {subject}', 'common.modules.notifications.templates.message.ticket.submit');
INSERT INTO `s_notification` VALUES(111, 'ticket_submit', 1, 's_ticket', 'TKT;S;', 2, 'Tickets Manager', '[New Ticket:{id}] {subject}', 'common.modules.notifications.templates.email.ticket.submit');
-- notification instruction to send reply notice;
INSERT INTO `s_notification` VALUES(112, 'ticket_reply', 0, 's_ticket', 'TKT;R;', 3, 'notificationRecipient', '[Ticket:{id}] {subject}', 'common.modules.notifications.templates.message.ticket.reply');
INSERT INTO `s_notification` VALUES(113, 'ticket_reply', 1, 's_ticket', 'TKT;R;', 3, 'notificationRecipient', '[Ticket:{id}] {subject}', 'common.modules.notifications.templates.email.ticket.reply');

-- notification instruction for subscription;
INSERT INTO `s_notification` VALUES(120, 'subscription_confirm', 0, 's_subscription', 'SUB;A;', 0, 'account_id', 'You have subscribed to plan {name} successfully', 'common.modules.notifications.templates.message.subscription.confirm');
INSERT INTO `s_notification` VALUES(121, 'subscription_confirm', 1, 's_subscription', 'SUB;A;', 0, 'account_id', 'You have subscribed to plan {name} successfully', 'common.modules.notifications.templates.email.subscription.confirm');
INSERT INTO `s_notification` VALUES(122, 'subscription_cancel', 0, 's_subscription', 'SUB;CCL;', 0, 'account_id', 'Your subscription {name} is canceled', 'common.modules.notifications.templates.message.subscription.cancel');
INSERT INTO `s_notification` VALUES(123, 'subscription_cancel', 1, 's_subscription', 'SUB;CCL;', 0, 'account_id', 'Your subscription {name} is canceled', 'common.modules.notifications.templates.email.subscription.cancel');
INSERT INTO `s_notification` VALUES(124, 'subscription_pastdue', 1, 's_subscription', 'SUB;PDUE;', 0, 'account_id', 'Your subscription {name} is past due for payment', 'common.modules.notifications.templates.email.subscription.pastdue');
INSERT INTO `s_notification` VALUES(125, 'subscription_suspend', 1, 's_subscription', 'SUB;SUSP;', 0, 'account_id', 'Your subscription {name} is suspended', 'common.modules.notifications.templates.email.subscription.suspend');

-- for customer account;
INSERT INTO `s_notification` VALUES(140, 'account_activate', 1, 's_customer_account', 'A;SIGN;', 0, 'email', 'Welcome to {shopName}!', 'common.modules.notifications.templates.email.customer.activate');
INSERT INTO `s_notification` VALUES(141, 'account_resetpassword', 1, 's_customer_account', 'A;PWD;', 0, 'email', 'Account Password Reset', 'common.modules.notifications.templates.email.customer.resetpassword');
INSERT INTO `s_notification` VALUES(142, 'account_resetemail', 1, 's_customer_account', 'A;EML;', 0, 'email', 'Account Email Reset', 'common.modules.notifications.templates.email.customer.resetemail');
INSERT INTO `s_notification` VALUES(143, 'account_presignup', 1, 's_customer_account', 'A;PRESIGN;', 0, 'email', 'Welcome to {shopName}!', 'common.modules.notifications.templates.email.customer.presignup');


-- subscription-based notification;
-- For Messenger type, if subject column matches any of MessengerPayload, it will used the template view in Messenger;
INSERT INTO `s_notification` VALUES(200, 'product_updates', 3, NULL, NULL, 0, 'subscriber', 'product_updates', 'common.modules.notifications.templates.messenger.product.updates');
INSERT INTO `s_notification` VALUES(201, 'order_confirm', 3, 's_order', 'O;', 0, 'account_id', 'order_confirm', 'common.modules.notifications.templates.messenger.order.confirm');
INSERT INTO `s_notification` VALUES(202, 'item_ship', 3, 's_item', 'S;', 0, 'account_id', 'item_ship', 'common.modules.notifications.templates.messenger.item.ship');

-- --------------------------------------------------------
--
-- Table structure for table `s_notification_subscription`
--;
DROP TABLE IF EXISTS `s_notification_subscription`;
CREATE TABLE IF NOT EXISTS `s_notification_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(30) NOT NULL COMMENT 'refer to s_notification.name',
  `scope` varchar(100) NOT NULL COMMENT 'Notification scope, based on account or for a specific shop',
  `channel` tinyint(4) NOT NULL COMMENT 'Notification channel, refer to s_notification.type',
  `subscriber` varchar(200) DEFAULT NULL COMMENT 'for non-account subscribers, json encoded data: e.g. {"email":"guest@shopbay.org","mobile":"123456"}',
  `account_subscriber` varchar(12) DEFAULT NULL COMMENT 'for existing account subscribers',
  `params` varchar(1000) DEFAULT NULL COMMENT 'notification parameters',
  `status` varchar(20) NOT NULL,
  `batch_status` varchar(20) DEFAULT NULL COMMENT 'used for batch processing',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------
--
-- Table structure for table `s_message_queue`
--;
DROP TABLE IF EXISTS `s_message_queue`;
CREATE TABLE IF NOT EXISTS `s_message_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT 'Refer to s_notification.type',
  `message` text NOT NULL COMMENT 'serialized message object to process',
  `status` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


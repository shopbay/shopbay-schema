-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Administrator Workflow', 1, 'Administrator Workflow', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Admin.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Workflow.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Workflow.Interrupt', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Workflow.Upload', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Shop.Approve', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Tutorial.Submit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Tutorial.Publish', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.TutorialSeries.Submit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.TutorialSeries.Publish', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Plan.Submit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Plan.Approve', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Package.Submit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Package.Approve', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Theme.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Theme.Deactivate', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Merchant Workflow', 1, 'Merchant Workflow', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Merchant.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Product.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Product.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.CampaignBga.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.CampaignBga.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.CampaignSale.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.CampaignSale.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.CampaignPromocode.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.CampaignPromocode.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Verify', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Process', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Deliver', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Cancel', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Refund', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Fulfill', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.ShippingOrder.Process', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.ShippingOrder.Refund', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.ShippingOrder.Fulfill', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Verify', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Pick', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Pack', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Ship', 0, NULL, NULL, 'N;');
-- For 1 step item processing use ;
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Process', 0, NULL, NULL, 'N;');
-- For ItemController use ;
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Return', 0, NULL, NULL, 'N;');
-- For s_workflow use ;
INSERT INTO `s_auth_item` VALUES('Tasks.Item.ReturnItem', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Refund', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Rollback', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.ReviewReply', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Shipping.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Shipping.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Tax.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Tax.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.News.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.News.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Shop.Apply', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Shop.Change', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Shop.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Shop.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.PaymentMethod.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.PaymentMethod.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Question.Answer', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Question.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Question.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Subscription.Cancel', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Subscription.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Subscription.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Subscription.Pastdue', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Subscription.Suspend', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Media.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Media.Deactivate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Page.Activate', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Page.Deactivate', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Customer Workflow', 1, 'Customer Workflow', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Customer.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Purchase', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Pay', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Order.Repay', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Purchase', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Pay', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Repay', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Receive', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Item.Review', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Question.Ask', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Cart.Checkout', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Cart.FillShippingAddress', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Cart.SelectPaymentMethod', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Cart.Confirm', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Ticket.Submit', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Ticket.Close', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Ticket.Reopen', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tasks.Ticket.Reply', 0, NULL, NULL, 'N;');

--
-- Activated role get auto assigned necessary rights for shop workflows ;
INSERT INTO `s_auth_itemchild` VALUES('Activated', 'Tasks.Shop.Apply');
-- Administrator permissions for workflows ;
INSERT INTO `s_auth_itemchild` VALUES('Administrator', 'Administrator Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Admin.Index');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Workflow.Index');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Workflow.Upload');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Workflow.Interrupt');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Subscription.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Subscription.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Subscription.Pastdue');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Subscription.Suspend');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Theme.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Administrator Workflow', 'Tasks.Theme.Deactivate');
-- Ticket admin workflow;
INSERT INTO `s_auth_item` VALUES('Tickets Workflow', 1, 'Tickets Workflow', NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('Tickets Manager', 'Tickets Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Tickets Workflow', 'Tasks.Ticket.Reply');
-- Tutorials admin workflow;
INSERT INTO `s_auth_item` VALUES('Tutorials Submit Workflow', 1, 'Tutorials Submit Workflow', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorials Publish Workflow', 1, 'Tutorials Publish Workflow', NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials Creator', 'Tutorials Submit Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials Publisher', 'Tutorials Publish Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials Submit Workflow', 'Tasks.Tutorial.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Tutorials Publish Workflow', 'Tasks.Tutorial.Publish');
-- Tutorial Series admin workflow;
INSERT INTO `s_auth_item` VALUES('Tutorial Series Submit Workflow', 1, 'Tutorial Series Submit Workflow', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Tutorial Series Publish Workflow', 1, 'Tutorial Series Publish Workflow', NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series Creator', 'Tutorial Series Submit Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series Publisher', 'Tutorial Series Publish Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series Submit Workflow', 'Tasks.TutorialSeries.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Tutorial Series Publish Workflow', 'Tasks.TutorialSeries.Publish');
-- Plan admin workflow;
INSERT INTO `s_auth_item` VALUES('Plans Submit Workflow', 1, 'Plans Submit Workflow', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Plans Approve Workflow', 1, 'Plans Approve Workflow', NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('Plans Creator', 'Plans Submit Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Plans Approver', 'Plans Approve Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Plans Submit Workflow', 'Tasks.Plan.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Plans Approve Workflow', 'Tasks.Plan.Approve');
-- Package admin workflow;
INSERT INTO `s_auth_item` VALUES('Packages Submit Workflow', 1, 'Packages Submit Workflow', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Packages Approve Workflow', 1, 'Packages Approve Workflow', NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('Packages Creator', 'Packages Submit Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Packages Approver', 'Packages Approve Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Packages Submit Workflow', 'Tasks.Package.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Packages Approve Workflow', 'Tasks.Package.Approve');

-- Shop admin workflow;
INSERT INTO `s_auth_item` VALUES('Shops Approve Workflow', 1, 'Shops Approve Workflow', NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('Shops Manager', 'Shops Approve Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Shops Approve Workflow', 'Tasks.Shop.Approve');

-- Media workflow;
INSERT INTO `s_auth_item` VALUES('Media Workflow', 1, 'Media Workflow', NULL, 'N;');
INSERT INTO `s_auth_itemchild` VALUES('Media Workflow', 'Tasks.Media.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Media Workflow', 'Tasks.Media.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Media Workflow');

-- Merchant permissions for workflows ;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Workflow.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Workflow.Upload');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Merchant.Index');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Product.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Product.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.CampaignBga.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.CampaignBga.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.CampaignSale.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.CampaignSale.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.CampaignPromocode.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.CampaignPromocode.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Order.Verify');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Order.Process');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Order.Deliver');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Order.Cancel');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Order.Refund');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Order.Fulfill');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.ShippingOrder.Process');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.ShippingOrder.Refund');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.ShippingOrder.Fulfill');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Verify');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Pick');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Pack');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Ship');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Process');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Return');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.ReturnItem');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Refund');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.Rollback');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Item.ReviewReply');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Question.Answer');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Question.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Question.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Shipping.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Shipping.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Tax.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Tax.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.News.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.News.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Shop.Apply');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Shop.Change');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Shop.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Shop.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.PaymentMethod.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.PaymentMethod.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Tutorial.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Ticket.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Ticket.Close');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Ticket.Reopen');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Subscription.Cancel');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Page.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Workflow', 'Tasks.Page.Deactivate');

INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Workflow');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Workflow.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Workflow.Upload');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Customer.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Order.Purchase');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Order.Pay');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Order.Repay');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Item.Purchase');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Item.Pay');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Item.Repay');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Item.Receive');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Item.Review');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Question.Ask');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Question.Activate');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Question.Deactivate');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Cart.Checkout');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Cart.FillShippingAddress');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Cart.SelectPaymentMethod');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Cart.Confirm');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Ticket.Submit');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Ticket.Close');
INSERT INTO `s_auth_itemchild` VALUES('Customer Workflow', 'Tasks.Ticket.Reopen');

-- --------------------------------------------------------
--
-- Table structure for table `s_process`
--;
DROP TABLE IF EXISTS `s_process`;
CREATE TABLE IF NOT EXISTS `s_process` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `color` varchar(20) NOT NULL DEFAULT '#FFA500',
  `text` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_process`
--
-- Account status
--;
INSERT INTO `s_process` VALUES(1, 'A;ON;', 'Active Account', '#90EE90', 'Active');
INSERT INTO `s_process` VALUES(2, 'A;OFF;', 'Inactive Account', '#CCC', 'Inactive');
INSERT INTO `s_process` VALUES(3, 'A;SIGN;', 'Account Sign Up', '#CBBBBC', 'Sign Up');
INSERT INTO `s_process` VALUES(4, 'A;SUSP;', 'Account Suspended', '#000000', 'Suspended');
INSERT INTO `s_process` VALUES(5, 'A;PWD;', 'Account Password Reset', '#3DE667', 'Password Reset');
INSERT INTO `s_process` VALUES(6, 'A;EML;', 'Account Email Reset', '#57BA81', 'Email Reset');
INSERT INTO `s_process` VALUES(7, 'A;PRESIGN;', 'Account Pre-Sign Up', '#529BFA', 'Pre-Sign Up');
--
-- Cart status
--;
INSERT INTO `s_process` VALUES(8,  'CART;', 'Add to Cart', '#000000', 'Add to Cart');
INSERT INTO `s_process` VALUES(9,  'CHK;', 'Checkout', '#000000', 'Checkout');
INSERT INTO `s_process` VALUES(10, 'CHK;ADDR;', 'Shipping Address', '#000000', 'Shipping Address');
INSERT INTO `s_process` VALUES(11, 'CHK;PY;', 'Payment Method', '#000000', 'Payment Method');
INSERT INTO `s_process` VALUES(12, 'CHK;CFM;', 'Confirmed', '#000000', 'Cart Confirmed');
--
-- News status
--;
INSERT INTO `s_process` VALUES(15, 'NW;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(16, 'NW;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Question status
--;
INSERT INTO `s_process` VALUES(20, 'ASK;', 'Ask', '#DD4B39', 'Ask');
INSERT INTO `s_process` VALUES(21, 'Q;', 'Asked', '#FFD700', 'Asked');
INSERT INTO `s_process` VALUES(22, 'Q;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(23, 'Q;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Shop status
--;
INSERT INTO `s_process` VALUES(40, 'SHOP;REQ;', 'Shop Request', '#DD4B39', 'Shop Request');
INSERT INTO `s_process` VALUES(41, 'SHOP;PD;', 'Shop Pending', '#CBBBBC', 'Pending');
INSERT INTO `s_process` VALUES(42, 'SHOP;AC;', 'Shop Approved', '#87CEFA', 'Approved');
INSERT INTO `s_process` VALUES(43, 'SHOP;RJ;', 'Shop Rejected', '#B52253', 'Rejected');
INSERT INTO `s_process` VALUES(44, 'SHOP;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(45, 'SHOP;ON;', 'Bring Online', '#3BB502', 'Online');
INSERT INTO `s_process` VALUES(46, 'SHOP;PTT;', 'Shop Prototype', '#CCC', 'unset');
INSERT INTO `s_process` VALUES(47, 'SHOP;SUSP;', 'Shop Suspended', '#000000', 'Suspended');
--
-- Shipping status
--;
INSERT INTO `s_process` VALUES(48, 'SHP;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(49, 'SHP;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Product status
--;
INSERT INTO `s_process` VALUES(50, 'PRD;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(51, 'PRD;ON;', 'Bring Online', '#3BB502', 'Online');
INSERT INTO `s_process` VALUES(52, 'PRD;LOW;', 'Product Inventory Low', '#B52253', 'Low Stock');
--
-- Campaign status
--;
INSERT INTO `s_process` VALUES(60, 'CPG;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(61, 'CPG;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Payment status
--;
INSERT INTO `s_process` VALUES(62, 'PAY;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(63, 'PAY;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Tax status
--;
INSERT INTO `s_process` VALUES(64, 'TAX;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(65, 'TAX;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Order/Item status
--;
INSERT INTO `s_process` VALUES(69, 'COM;', 'Submit', '#B0C4DE', 'Submitted');
INSERT INTO `s_process` VALUES(70, 'U;', 'Unpaid', '#FFDD00', 'Unpaid');
INSERT INTO `s_process` VALUES(71, 'D;', 'Deferred Payment', '#FAAA9F', 'Deferred');
INSERT INTO `s_process` VALUES(72, 'PY;', 'Paid', '#3DE667', 'Paid');
INSERT INTO `s_process` VALUES(73, 'O;', 'Ordered', '#FFA500', 'Ordered');
INSERT INTO `s_process` VALUES(74, 'PI;AC;', 'Picked', '#DDA0DD', 'Picked');
INSERT INTO `s_process` VALUES(75, 'PI;RJ;', 'Item Pick Rejected', '#FA0720', 'Out of Stock');
INSERT INTO `s_process` VALUES(76, 'PA;AC;', 'Packed', '#87CEFA', 'Packed');
INSERT INTO `s_process` VALUES(77, 'PA;RJ;', 'Item Pack Rejected', '#CCC', 'QC Failed');
INSERT INTO `s_process` VALUES(78, 'S;', 'Shipped', '#9ACD32', 'Shipped');
INSERT INTO `s_process` VALUES(79, 'C;', 'Collected', '#3DE667', 'Collected');
INSERT INTO `s_process` VALUES(80, 'RC;', 'Received', '#529BFA', 'Received');
INSERT INTO `s_process` VALUES(81, 'RV;', 'Reviewed', '#57BA81', 'Reviewed');
INSERT INTO `s_process` VALUES(82, 'RV;ANS;', 'Review Replied', '#CC913D', 'Replied');
INSERT INTO `s_process` VALUES(83, 'CCL;', 'Cancelled', '#ABABAB', 'Cancelled');
INSERT INTO `s_process` VALUES(84, 'D;CCL;', 'Deferred Cancelled', '#ABABAB', 'Cancelled');
INSERT INTO `s_process` VALUES(85, 'RT;PD;', 'Pending Return', '#970392', 'Pending Return');
INSERT INTO `s_process` VALUES(86, 'RT;AC;', 'Returned', '#6A0662', 'Returned');
INSERT INTO `s_process` VALUES(87, 'RT;RJ;', 'Return request rejected', '#6A0662', 'Rejected');
INSERT INTO `s_process` VALUES(88, 'RF;', 'Refund', '#F1534F', 'Refunded');
--
-- ShippingOrder status
--;
INSERT INTO `s_process` VALUES(90, 'O;FFL;', 'Order Fulfilled', '#39C44E', 'Fulfilled');
--
-- Order status
--;
INSERT INTO `s_process` VALUES(91, 'O;RJ;', 'Order Rejected', '#B52253', 'Rejected');
INSERT INTO `s_process` VALUES(92, 'O;FFL;P;', 'Order Partial Fulfilled', '#996633', 'Partial Fulfilled');
--
-- Add on item status
--;
INSERT INTO `s_process` VALUES(93, 'D;PI;AC;', 'Deferred Picked', '#DDA0DD', 'Picked');
INSERT INTO `s_process` VALUES(94, 'D;PA;AC;', 'Deferred Packed', '#87CEFA', 'Packed');
--
-- Tutorial status
--;
INSERT INTO `s_process` VALUES(95, 'T;D;', 'Tutorial Draft', '#CCC', 'Draft');
INSERT INTO `s_process` VALUES(96, 'T;S;', 'Tutorial Submitted', '#3DE667', 'Submitted');
INSERT INTO `s_process` VALUES(97, 'T;P;', 'Tutorial Published', '#3BB502', 'Published');
--
-- General 
--;
INSERT INTO `s_process` VALUES(100, 'IRPT;', 'Process Interrupt', '#966A3E', 'Interrupt');
INSERT INTO `s_process` VALUES(101, 'PRC;', 'Processing', '#F08080', 'Processing');
--
-- Ticket status
--;
INSERT INTO `s_process` VALUES(110, 'TKT;D;', 'Ticket Draft', '#CCC', 'Draft');
INSERT INTO `s_process` VALUES(111, 'TKT;S;', 'Ticket Submitted', '#3DE667', 'Submitted');
INSERT INTO `s_process` VALUES(112, 'TKT;C;', 'Ticket Closed', '#ABABAB', 'Closed');
INSERT INTO `s_process` VALUES(113, 'TKT;R;', 'Ticket Replied', '#CC913D', 'Replied');
--
-- Object soft delete status
--;
INSERT INTO `s_process` VALUES(120, 'DEL;', 'Object Deleted', '#000000', 'Deleted');
--
-- Plan status
--;
INSERT INTO `s_process` VALUES(130, 'P;D;', 'Plan Draft', '#CCC', 'Draft');
INSERT INTO `s_process` VALUES(131, 'P;S;', 'Plan Submitted', '#3DE667', 'Submitted');
INSERT INTO `s_process` VALUES(132, 'P;A;', 'Plan Approved', '#87CEFA', 'Approved');
--
-- Subscription status
--;
INSERT INTO `s_process` VALUES(140, 'SUB;A;', 'Subscription Active', '#3BB502', 'Active');
INSERT INTO `s_process` VALUES(141, 'SUB;EXP;', 'Subscription Expired', '#6A0662', 'Expired');
INSERT INTO `s_process` VALUES(142, 'SUB;CCL;', 'Subscription Cancelled', '#ABABAB', 'Cancelled');
INSERT INTO `s_process` VALUES(143, 'SUB;SUSP;', 'Subscription Suspended', '#000000', 'Suspended');
INSERT INTO `s_process` VALUES(144, 'SUB;PDUE;', 'Subscription Overdue', '#FFDD00', 'Overdue');
INSERT INTO `s_process` VALUES(145, 'SUB;PD;', 'Subscription Pending', '#CBBBBC', 'Pending');
INSERT INTO `s_process` VALUES(146, 'SUB;PCCL;', 'Subscription Pending Cancel', '#CBBBBC', 'Pending');
--
-- Package status
--;
INSERT INTO `s_process` VALUES(150, 'PKG;D;', 'Package Draft', '#CCC', 'Draft');
INSERT INTO `s_process` VALUES(151, 'PKG;S;', 'Package Submitted', '#3DE667', 'Submitted');
INSERT INTO `s_process` VALUES(152, 'PKG;A;', 'Package Approved', '#87CEFA', 'Approved');
--
-- Tutorial Series status
--;
INSERT INTO `s_process` VALUES(160, 'TS;D;', 'Tutorial Series Draft', '#CCC', 'Draft');
INSERT INTO `s_process` VALUES(161, 'TS;S;', 'Tutorial Series Submitted', '#3DE667', 'Submitted');
INSERT INTO `s_process` VALUES(162, 'TS;P;', 'Tutorial Series Published', '#3BB502', 'Published');
--
-- Additional Account status
--;
INSERT INTO `s_process` VALUES(170, 'A;NEW;', 'New Account', '#CBBBBC', 'New');
INSERT INTO `s_process` VALUES(171, 'A;NEW;PWD;', 'New Password Change', '#CBBBBC', 'Password Change');
INSERT INTO `s_process` VALUES(172, 'A;CLOSED;', 'Account Closed', '#000000', 'Closed');
--
-- Media status
--;
INSERT INTO `s_process` VALUES(180, 'M;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(181, 'M;ON;', 'Bring Online', '#3BB502', 'Online');

--
-- Chatbot status
--;
INSERT INTO `s_process` VALUES(210, 'BOT;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(211, 'BOT;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Notification subscription status
--;
INSERT INTO `s_process` VALUES(220, 'N;SUB;', 'Notification Subscribed', '#CCC', 'Subscribed');
INSERT INTO `s_process` VALUES(221, 'N;USUB;', 'Notification Unsubscribed', '#3BB502', 'Unsubscribed');
--
-- Page status
--;
INSERT INTO `s_process` VALUES(230, 'PG;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(231, 'PG;ON;', 'Bring Online', '#3BB502', 'Online');
--
-- Theme status
--;
INSERT INTO `s_process` VALUES(240, 'TH;OFF;', 'Bring Offline', '#CCC', 'Offline');
INSERT INTO `s_process` VALUES(241, 'TH;ON;', 'Bring Online', '#3BB502', 'Online');
-- --------------------------------------------------------
--
-- Table structure for table `s_workflow`
--;
DROP TABLE IF EXISTS `s_workflow`;
CREATE TABLE IF NOT EXISTS `s_workflow` (
  `id` int(11) NOT NULL,
  `obj_type` varchar(30) NOT NULL,
  `start_process` varchar(20) NOT NULL,
  `start_by` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `decision` varchar(30) DEFAULT NULL,
  `end_process` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_workflow`
--;
INSERT INTO `s_workflow` VALUES(1, 's_cart', 'CART;', 'Customer', 'Checkout', NULL, 'CHK;');
INSERT INTO `s_workflow` VALUES(2, 's_cart', 'CHK;', 'Customer', 'FillShippingAddress', NULL, 'CHK;ADDR;');
INSERT INTO `s_workflow` VALUES(3, 's_cart', 'CHK;ADDR;', 'Customer', 'SelectPaymentMethod', NULL, 'CHK;PY;');
INSERT INTO `s_workflow` VALUES(4, 's_cart', 'CHK;PY;', 'Customer', 'Confirm', NULL, 'CHK;CFM;');

INSERT INTO `s_workflow` VALUES(10, 's_question', 'ASK;', 'Customer', 'Ask', NULL, 'Q;');
INSERT INTO `s_workflow` VALUES(11, 's_question', 'Q;', 'Merchant', 'Answer', NULL, 'Q;OFF;');
INSERT INTO `s_workflow` VALUES(12, 's_question', 'Q;OFF;', 'Customer', 'Activate', 'Yes||No', '{"Yes":"Q;ON;","No":"Q;OFF;"}');
INSERT INTO `s_workflow` VALUES(13, 's_question', 'Q;ON;', 'Customer', 'Deactivate', 'Yes||No', '{"Yes":"Q;OFF;","No":"Q;ON;"}');

INSERT INTO `s_workflow` VALUES(20, 's_news', 'NW;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"NW;ON;","No":"NW;OFF;"}');
INSERT INTO `s_workflow` VALUES(21, 's_news', 'NW;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"NW;OFF;","No":"NW;ON;"}');

INSERT INTO `s_workflow` VALUES(30, 's_shipping', 'SHP;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"SHP;ON;","No":"SHP;OFF;"}');
INSERT INTO `s_workflow` VALUES(31, 's_shipping', 'SHP;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"SHP;OFF;","No":"SHP;ON;"}');

INSERT INTO `s_workflow` VALUES(40, 's_payment_method', 'PAY;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"PAY;ON;","No":"PAY;OFF;"}');
INSERT INTO `s_workflow` VALUES(41, 's_payment_method', 'PAY;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"PAY;OFF;","No":"PAY;ON;"}');

INSERT INTO `s_workflow` VALUES(50, 's_product', 'PRD;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"PRD;ON;","No":"PRD;OFF;"}');
INSERT INTO `s_workflow` VALUES(51, 's_product', 'PRD;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"PRD;OFF;","No":"PRD;ON;"}');

INSERT INTO `s_workflow` VALUES(60, 's_shop', 'SHOP;REQ;', 'Merchant', 'Apply', NULL, 'SHOP;PD;');
INSERT INTO `s_workflow` VALUES(61, 's_shop', 'SHOP;PD;', 'Administrator', 'Approve', 'Accept||Reject', '{"Accept":"SHOP;AC;","Reject":"SHOP;RJ;"}');
INSERT INTO `s_workflow` VALUES(62, 's_shop', 'SHOP;AC;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"SHOP;ON;","No":"SHOP;OFF;"}');
INSERT INTO `s_workflow` VALUES(63, 's_shop', 'SHOP;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"SHOP;ON;","No":"SHOP;OFF;"}');
INSERT INTO `s_workflow` VALUES(64, 's_shop', 'SHOP;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"SHOP;OFF;","No":"SHOP;ON;"}');
INSERT INTO `s_workflow` VALUES(65, 's_shop', 'SHOP;PTT;', 'Merchant', 'Change', NULL, 'SHOP;OFF;');

INSERT INTO `s_workflow` VALUES(80, 's_campaign_bga', 'CPG;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"CPG;ON;","No":"CPG;OFF;"}');
INSERT INTO `s_workflow` VALUES(81, 's_campaign_bga', 'CPG;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"CPG;OFF;","No":"CPG;ON;"}');
INSERT INTO `s_workflow` VALUES(82, 's_campaign_sale', 'CPG;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"CPG;ON;","No":"CPG;OFF;"}');
INSERT INTO `s_workflow` VALUES(83, 's_campaign_sale', 'CPG;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"CPG;OFF;","No":"CPG;ON;"}');
INSERT INTO `s_workflow` VALUES(84, 's_campaign_promocode', 'CPG;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"CPG;ON;","No":"CPG;OFF;"}');
INSERT INTO `s_workflow` VALUES(85, 's_campaign_promocode', 'CPG;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"CPG;OFF;","No":"CPG;ON;"}');

INSERT INTO `s_workflow` VALUES(90, 's_tax', 'TAX;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"TAX;ON;","No":"TAX;OFF;"}');
INSERT INTO `s_workflow` VALUES(91, 's_tax', 'TAX;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"TAX;OFF;","No":"TAX;ON;"}');

INSERT INTO `s_workflow` VALUES(110, 's_item', 'COM;', 'Customer', 'Purchase', 'Order||Hold||Defer', '{"Order":"O;","Hold":"U;","Defer":"D;"}');
INSERT INTO `s_workflow` VALUES(111, 's_item', 'U;', 'Customer', 'Pay', 'Pay||Cancel', '{"Pay":"PY;","Cancel":"CCL;"}');
INSERT INTO `s_workflow` VALUES(112, 's_item', 'PY;', 'Merchant', 'Verify', 'Accept||Reject', '{"Accept":"O;","Reject":"O;RJ;"}');
INSERT INTO `s_workflow` VALUES(113, 's_item', 'O;', 'Merchant', 'Pick', 'HasStock||NoStock||Cancel', '{"HasStock":"PI;AC;","NoStock":"PI;RJ;","Cancel":"CCL;"}');
INSERT INTO `s_workflow` VALUES(114, 's_item', 'D;', 'Merchant', 'Pick', 'HasStock||Cancel', '{"HasStock":"D;PI;AC;","Cancel":"D;CCL;"}');
INSERT INTO `s_workflow` VALUES(115, 's_item', 'PI;AC;', 'Merchant', 'Pack', 'Accept||Reject', '{"Accept":"PA;AC;","Reject":"PA;RJ;"}');
INSERT INTO `s_workflow` VALUES(116, 's_item', 'PA;AC;', 'Merchant', 'Ship', 'Ship||Collect', '{"Ship":"S;","Collect":"C;"}');
INSERT INTO `s_workflow` VALUES(117, 's_item', 'S;', 'Customer', 'Receive', 'Receive||Return', '{"Receive":"RC;","Return":"RT;PD;"}');
INSERT INTO `s_workflow` VALUES(118, 's_item', 'C;', 'Customer', 'Receive', 'Receive||Return', '{"Receive":"RC;","Return":"RT;PD;"}');
INSERT INTO `s_workflow` VALUES(119, 's_item', 'RC;', 'Customer', 'Review', NULL, 'RV;');
-- cannot use word "Return" for action as it is a reserved word in php;
INSERT INTO `s_workflow` VALUES(120, 's_item', 'RT;PD;', 'Merchant', 'ReturnItem', 'Accept||Reject', '{"Accept":"RT;AC;","Reject":"RT;RJ;"}');
INSERT INTO `s_workflow` VALUES(121, 's_item', 'PI;RJ;', 'Merchant', 'Refund', NULL, 'RF;');
INSERT INTO `s_workflow` VALUES(122, 's_item', 'PA;RJ;', 'Merchant', 'Refund', NULL, 'RF;');
INSERT INTO `s_workflow` VALUES(123, 's_item', 'RT;AC;', 'Merchant', 'Refund', NULL, 'RF;');
INSERT INTO `s_workflow` VALUES(124, 's_item', 'CCL;', 'Merchant', 'Refund', NULL, 'RF;');
-- below are for 1-step item process;
INSERT INTO `s_workflow` VALUES(125, 's_item', 'O;', 'Merchant', 'Process', 'Ship||Cancel', '{"Ship":"S;","Cancel":"CCL;"}');
INSERT INTO `s_workflow` VALUES(126, 's_item', 'D;', 'Merchant', 'Process', 'Ship||Cancel', '{"Ship":"S;","Cancel":"D;CCL;"}');
-- additional support order rejection for item repay;
INSERT INTO `s_workflow` VALUES(127, 's_item', 'O;RJ;', 'Customer', 'Repay', 'Repay||Cancel', '{"Repay":"PY;","Cancel":"CCL;"}');
-- additional support 3 steps item workflow for deferred payment;
INSERT INTO `s_workflow` VALUES(128, 's_item', 'D;PI;AC;', 'Merchant', 'Pack', 'Accept||Cancel', '{"Accept":"D;PA;AC;","Cancel":"D;CCL;"}');
INSERT INTO `s_workflow` VALUES(129, 's_item', 'D;PA;AC;', 'Merchant', 'Ship', 'Ship||Collect||Cancel', '{"Ship":"S;","Collect":"C;","Cancel":"D;CCL;"}');

INSERT INTO `s_workflow` VALUES(130, 's_order', 'COM;', 'Customer', 'Purchase', 'Order||Hold||Defer', '{"Order":"O;","Hold":"U;","Defer":"D;"}');
INSERT INTO `s_workflow` VALUES(131, 's_order', 'U;', 'Customer', 'Pay', 'Pay||Cancel', '{"Pay":"PY;","Cancel":"CCL;"}');
INSERT INTO `s_workflow` VALUES(132, 's_order', 'PY;', 'Merchant', 'Verify', 'Accept||Reject', '{"Accept":"O;","Reject":"O;RJ;"}');
INSERT INTO `s_workflow` VALUES(133, 's_order', 'O;', 'Merchant', 'Process', 'Fulfill||Partial||Cancel', '{"Fulfill":"O;FFL;","Partial":"O;FFL;P;","Cancel":"CCL;"}');
INSERT INTO `s_workflow` VALUES(134, 's_order', 'CCL;', 'Merchant', 'Refund', NULL, 'RF;');
INSERT INTO `s_workflow` VALUES(135, 's_order', 'D;', 'Merchant', 'Deliver', 'Fulfill||Partial||Cancel', '{"Fulfill":"O;FFL;","Partial":"O;FFL;P;","Cancel":"D;CCL;"}');
-- additional support order rejection for order repay;
INSERT INTO `s_workflow` VALUES(136, 's_order', 'O;RJ;', 'Customer', 'Repay', 'Repay||Cancel', '{"Repay":"PY;","Cancel":"CCL;"}');
-- additional support order partial fulfillment
INSERT INTO `s_workflow` VALUES(137, 's_order', 'O;FFL;P;', 'Merchant', 'Fulfill', 'Yes||No', '{"Fulfill":"O;FFL;","No":"O;FFL;P;"}');

INSERT INTO `s_workflow` VALUES(141, 's_shipping_order', 'D;', 'Merchant', 'Process', 'Fulfill||Partial||Cancel', '{"Fulfill":"O;FFL;","Partial":"O;FFL;P;","Cancel":"D;CCL;"}');
INSERT INTO `s_workflow` VALUES(142, 's_shipping_order', 'O;', 'Merchant', 'Process', 'Fulfill||Partial||Cancel', '{"Fulfill":"O;FFL;","Partial":"O;FFL;P;","Cancel":"CCL;"}');
INSERT INTO `s_workflow` VALUES(143, 's_shipping_order', 'CCL;', 'Merchant', 'Refund', NULL, 'RF;');
INSERT INTO `s_workflow` VALUES(144, 's_shipping_order', 'O;FFL;P;', 'Merchant', 'Fulfill', 'Yes||No', '{"Fulfill":"O;FFL;","No":"O;FFL;P;"}');

INSERT INTO `s_workflow` VALUES(150, 's_tutorial', 'T;D;', 'Merchant', 'Submit', NULL, 'T;S;');
INSERT INTO `s_workflow` VALUES(151, 's_tutorial', 'T;S;', 'Administrator', 'Publish', 'Yes||No', '{"Yes":"T;P;","No":"T;D;"}');

INSERT INTO `s_workflow` VALUES(160, 's_ticket', 'TKT;D;', 'Merchant', 'Submit', NULL, 'TKT;S;');
INSERT INTO `s_workflow` VALUES(161, 's_ticket', 'TKT;D;', 'Customer', 'Submit', NULL, 'TKT;S;');
INSERT INTO `s_workflow` VALUES(162, 's_ticket', 'TKT;S;', 'Merchant', 'Close', 'Yes||No', '{"Yes":"TKT;C;","No":"TKT;S;"}');
INSERT INTO `s_workflow` VALUES(163, 's_ticket', 'TKT;S;', 'Customer', 'Close', 'Yes||No', '{"Yes":"TKT;C;","No":"TKT;S;"}');
INSERT INTO `s_workflow` VALUES(164, 's_ticket', 'TKT;C;', 'Merchant', 'Reopen', 'Yes||No', '{"Yes":"TKT;S;","No":"TKT;C;"}');
INSERT INTO `s_workflow` VALUES(165, 's_ticket', 'TKT;C;', 'Customer', 'Reopen', 'Yes||No', '{"Yes":"TKT;S;","No":"TKT;C;"}');
INSERT INTO `s_workflow` VALUES(166, 's_ticket', 'TKT;S;', 'Administrator', 'Reply', NULL, 'TKT;S;');

INSERT INTO `s_workflow` VALUES(170, 's_plan', 'P;D;', 'Administrator', 'Submit', NULL, 'P;S;');
INSERT INTO `s_workflow` VALUES(171, 's_plan', 'P;S;', 'Administrator', 'Approve', 'Yes||No', '{"Yes":"P;A;","No":"P;D;"}');

INSERT INTO `s_workflow` VALUES(180, 's_subscription', 'SUB;A;', 'Merchant', 'Cancel', NULL, 'SUB;PCCL;');
INSERT INTO `s_workflow` VALUES(181, 's_subscription', 'SUB;A;', 'Administrator', 'ForceSuspend', NULL, 'SUB;SUSP;');
INSERT INTO `s_workflow` VALUES(182, 's_subscription', 'SUB;PD;', 'Administrator', 'Activate', 'Yes||No', '{"Yes":"SUB;A;","No":"SUB;PD;"}');
INSERT INTO `s_workflow` VALUES(183, 's_subscription', 'SUB;A;', 'Administrator', 'Pastdue', NULL, 'SUB;PDUE;');
INSERT INTO `s_workflow` VALUES(184, 's_subscription', 'SUB;PCCL;', 'Administrator', 'Deactivate', 'Yes||No', '{"Yes":"SUB;CCL;","No":"SUB;PCCL;"}');
INSERT INTO `s_workflow` VALUES(185, 's_subscription', 'SUB;A;', 'Administrator', 'Expire', NULL, 'SUB;EXP;');
INSERT INTO `s_workflow` VALUES(186, 's_subscription', 'SUB;PDUE;', 'Administrator', 'Suspend', NULL, 'SUB;SUSP;');
INSERT INTO `s_workflow` VALUES(187, 's_subscription', 'SUB;PDUE;', 'Administrator', 'Reactivate', 'Yes||Hold||No', '{"Yes":"SUB;A;","Hold":"SUB;PD;","No":"SUB;PDUE;"}')

INSERT INTO `s_workflow` VALUES(190, 's_package', 'PKG;D;', 'Administrator', 'Submit', NULL, 'PKG;S;');
INSERT INTO `s_workflow` VALUES(191, 's_package', 'PKG;S;', 'Administrator', 'Approve', 'Yes||No', '{"Yes":"PKG;A;","No":"PKG;D;"}');

INSERT INTO `s_workflow` VALUES(200, 's_process', 'START', 'Administrator', 'Interrupt', NULL, 'IRPT;');

INSERT INTO `s_workflow` VALUES(210, 's_tutorial_series', 'TS;D;', 'Administrator', 'Submit', NULL, 'TS;S;');
INSERT INTO `s_workflow` VALUES(211, 's_tutorial_series', 'TS;S;', 'Administrator', 'Publish', 'Yes||No', '{"Yes":"TS;P;","No":"TS;D;"}');

INSERT INTO `s_workflow` VALUES(220, 's_media', 'M;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"M;ON;","No":"M;OFF;"}');
INSERT INTO `s_workflow` VALUES(221, 's_media', 'M;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"M;OFF;","No":"M;ON;"}');

INSERT INTO `s_workflow` VALUES(250, 's_chatbot', 'BOT;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"BOT;ON;","No":"BOT;OFF;"}');
INSERT INTO `s_workflow` VALUES(251, 's_chatbot', 'BOT;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"BOT;OFF;","No":"BOT;ON;"}');

INSERT INTO `s_workflow` VALUES(260, 's_notification_subscription', 'N;USUB;', 'Customer', 'Subscribe', 'Yes||No', '{"Yes":"N;SUB;","No":"N;USUB;"}');
INSERT INTO `s_workflow` VALUES(261, 's_notification_subscription', 'N;SUB;', 'Customer', 'Unsubscribe', 'Yes||No', '{"Yes":"N;USUB;","No":"N;SUB;"}');

INSERT INTO `s_workflow` VALUES(270, 's_page', 'PG;OFF;', 'Merchant', 'Activate', 'Yes||No', '{"Yes":"PG;ON;","No":"PG;OFF;"}');
INSERT INTO `s_workflow` VALUES(271, 's_page', 'PG;ON;', 'Merchant', 'Deactivate', 'Yes||No', '{"Yes":"PG;OFF;","No":"PG;ON;"}');

INSERT INTO `s_workflow` VALUES(280, 's_theme', 'TH;OFF;', 'Administrator', 'Activate', 'Yes||No', '{"Yes":"TH;ON;","No":"TH;OFF;"}');
INSERT INTO `s_workflow` VALUES(281, 's_theme', 'TH;ON;', 'Administrator', 'Deactivate', 'Yes||No', '{"Yes":"TH;OFF;","No":"TH;ON;"}');
-- --------------------------------------------------------
--
-- Table structure for table `s_transition`
--;

DROP TABLE IF EXISTS `s_transition`;
CREATE TABLE IF NOT EXISTS `s_transition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(20) NOT NULL COMMENT 'table name, e.g. s_order',
  `obj_id` int(11) NOT NULL COMMENT 'depends on obj_type, e.g. order_id',
  `process_from` varchar(20) NOT NULL DEFAULT '<empty>',
  `process_to` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `decision` varchar(20) DEFAULT NULL,
  `condition1` text NOT NULL,
  `condition2` text DEFAULT NULL,
  `transition_by` varchar(12) NOT NULL,
  `transition_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

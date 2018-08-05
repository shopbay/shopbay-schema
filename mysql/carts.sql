-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Customer Cart', 1, 'Customer Cart', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Carts.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Carts.Management.Checkout', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Carts.Management.FillShippingAddress', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Carts.Management.SelectPaymentMethod', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Carts.Management.Confirm', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Carts.Management.PaypalExpressCheckout', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Carts.Management.PaypalExpressReview', 0, NULL, NULL, 'N;');
--;
INSERT INTO `s_auth_itemchild` VALUES('Customer', 'Customer Cart');
INSERT INTO `s_auth_itemchild` VALUES('Customer Cart', 'Carts.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Customer Cart', 'Carts.Management.Checkout');
INSERT INTO `s_auth_itemchild` VALUES('Customer Cart', 'Carts.Management.FillShippingAddress');
INSERT INTO `s_auth_itemchild` VALUES('Customer Cart', 'Carts.Management.SelectPaymentMethod');
INSERT INTO `s_auth_itemchild` VALUES('Customer Cart', 'Carts.Management.Confirm');
INSERT INTO `s_auth_itemchild` VALUES('Customer Cart', 'Carts.Management.PaypalExpressCheckout');
INSERT INTO `s_auth_itemchild` VALUES('Customer Cart', 'Carts.Management.PaypalExpressReview');

-- --------------------------------------------------------
--
-- Table structure for table `s_cart`
--;
DROP TABLE IF EXISTS `s_cart`;
CREATE TABLE IF NOT EXISTS `s_cart` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `shopper` varchar(20) NOT NULL COMMENT 'shopper id. For login user, this will be account_id. For guest, this will be IP address',
  `shop_id` int(11) NOT NULL COMMENT 'refer to s_shop.id',
  `product_id` int(11) NOT NULL COMMENT 'refer to s_product.id',
  `shipping_id` int(11) NOT NULL COMMENT 'refer to s_shipping.id',
  `itemkey` varchar(200) NOT NULL,
  `name` varchar(2000) NOT NULL COMMENT 'This column stored json encoded name in different languages. It buffers about 20 languages, assuming each take 100 chars.',
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `payment_method` varchar(1500) DEFAULT NULL COMMENT 'schema refer to PaymentFormBehavior. This column stored json encoded payment_method in different languages. It buffers about 20 languages, assuming each takes 50 chars.',
  `campaign` varchar(5000) DEFAULT NULL COMMENT 'json encoding (multi-lang)',
  `options` varchar(5000) DEFAULT NULL COMMENT 'This column stored json encoded options in different languages. It buffers about 20 languages and 5 options, assuming each option takes 50 chars.',
  `option_fee` decimal(10,2) DEFAULT '0.00',
  `shipping_surcharge` decimal(10,2) DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `currency` varchar(3) NOT NULL,
  `weight_unit` varchar(3) NOT NULL,
  `status` varchar(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Rights' module
--;
INSERT INTO `s_auth_item` VALUES('Merchant Chatbot', 1, 'Merchant Chatbot', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Chatbots.Plugin.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Chatbots.Support.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Chatbots.AdvancedSettings.Update', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Chatbots.AdvancedSettings.SendGreetingText', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Chatbots.AdvancedSettings.SendGetStartedButton', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Chatbots.AdvancedSettings.SendPersistentMenu', 0, NULL, NULL, 'N;');
-- Merchant permissions for chatbot management ;
INSERT INTO `s_auth_itemchild` VALUES('Merchant', 'Merchant Chatbot');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Chatbot', 'Chatbots.Plugin.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Chatbot', 'Chatbots.Support.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Chatbot', 'Chatbots.AdvancedSettings.Update');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Chatbot', 'Chatbots.AdvancedSettings.SendGreetingText');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Chatbot', 'Chatbots.AdvancedSettings.SendGetStartedButton');
INSERT INTO `s_auth_itemchild` VALUES('Merchant Chatbot', 'Chatbots.AdvancedSettings.SendPersistentMenu');

-- --------------------------------------------------------
--
-- Table structure for table `s_chatbot`
--;
DROP TABLE IF EXISTS `s_chatbot`;
CREATE TABLE IF NOT EXISTS `s_chatbot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(50) NOT NULL COMMENT 'The chatbot client id',
  `owner_id` int(11) NOT NULL COMMENT 'The chatbot owner id',
  `owner_type` varchar(20) NOT NULL COMMENT 'The owner type, e.g. shop or any entity that owns the chatbot',
  `provider` varchar(20) NOT NULL COMMENT 'The chatbot provider, e.g. facebook messenger, slack etc',
  `settings` text DEFAULT NULL COMMENT 'The chatbot settings',
  `status` varchar(20) NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`owner_id`,`owner_type`,`provider`),
  UNIQUE KEY (`client_id`),
  KEY `sequence_chatbot_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Table structure for table `s_chatbot_user`
--;
DROP TABLE IF EXISTS `s_chatbot_user`;
CREATE TABLE IF NOT EXISTS `s_chatbot_user` (
  `client_id` varchar(50) NOT NULL COMMENT 'The chatbot client id',
  `app_id` varchar(200) NOT NULL COMMENT 'The chatbot provider side app id, e.g. for messenger facebook page id',
  `user_id` varchar(200) NOT NULL COMMENT 'The chatbot user id, e.g. provided by chatbot provider',
  `user_data` text DEFAULT NULL COMMENT 'The json encoded user data, e.g. user profile, any other info related to user',
  `account_id` varchar(12) DEFAULT NULL COMMENT 'Account id to be linked to chatbot user',
  `session_data` text DEFAULT NULL COMMENT 'The json encoded session data for authentication',
  PRIMARY KEY (`client_id`,`app_id`,`user_id`),
  KEY `chatbot_account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

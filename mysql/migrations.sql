-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
-- --------------------------------------------------------
--;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- --------------------------------------------------------
--
-- Table structure for table `s_migration`
--;
CREATE TABLE IF NOT EXISTS `s_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_migration`
--;
INSERT INTO `s_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1441891280),
('m151001_201000_release_0_2', 1443710549),
('m151004_085637_feature_shop_management', 1443949227),
('m151011_201000_feature_free_shipping_offer', 1444531427),
('m151203_083000_feature_braintree', 1449120986),
('m151204_203000_feature_subdomain', 1450103184),
('m151219_103000_feature_favicon', 1450492322),
('m151225_153000_wizard_update', 1451026830),
('m151227_183000_feature_api', 1451205713),
('m160103_193000_mailer_update', 1451821149),
('m160108_150000_subscription_plan', 1452250710),
('m160117_153000_oauth2server', 1453026977),
('m160124_183000_billing', 1453026977),
('m160228_103000_subscription', 1459358054),
('m160417_223000_billing', 1459358054),
('m160422_201000_guest_checkout', 1459358054),
('m160504_181000_shop_design', 1459358054),
('m160508_103000_tag', 1459358054),
('m160509_123000_release_0_9_3', 1459358054),
('m160511_004500_shop_layout', 1459358054),
('m160513_213000_account_management', 1459358054),
('m160517_203000_release_0_10_1', 1459358054),
('m160522_003000_wcm_rights', 1459358054),
('m160523_010000_release_0_10_3', 1459358054),
('m160524_133000_seo', 1459358054),
('m160609_003000_media_module', 1459358054),
('m160715_235959_admin_console', 1468601425),
('m160716_134000_markets_module', 1468647583),
('m160814_190000_media_storage', 1471166047),
('m160816_134500_config_account', 1471166047),
('m160830_211500_chatbot', 1472562886),
('m160919_201500_notification_subscription', 1474289123),
('m160930_114500_shop', 1474289123),
('m161002_125700_customer', 1474289123),
('m161009_164500_oauth', 1474289123),
('m161010_000500_chatbotuser', 1474289123),
('m161014_151000_storage', 1476429161),
('m161015_144500_plan', 1476510496),
('m161028_124500_subscription', 1477988914),
('m161105_000100_page', 1479142245),
('m161122_203000_wcm', 1479818950),
('m161123_105000_social_media', 1479869786),
('m161203_001500_theme', 1483196908),
('m170118_000955_layout_pages', 1484705481),
('m170125_000955_theme_store', 1485393955),
('m170127_135500_pages', 1485496967),
('m170203_230000_market_layout', 1487090183),
('m170218_184500_tutorial', 1487470499),
('m170220_224000_tag', 1487601666),
('m170223_223000_usability', 1487860481),
('m170318_093000_freemium', 1489800771);

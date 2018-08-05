-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
-- --------------------------------------------------------
--;
--
-- Dumping data for table `s_account`
--;
INSERT INTO `s_account` VALUES(-1, 'GUEST', 'NOPASSWORD', 'guest-account@shopbay.org', 'RESERVED;', '0', NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `s_account` VALUES(0, 'SYSTEM', 'NOPASSWORD', 'support@shopbay.org', 'RESERVED;', '0', NULL, NULL, NULL, NULL, 0, 0);
-- default password: Password1
--;
INSERT INTO `s_account` VALUES(1, 'SUPERUSER', '$2y$13$LMsMKYGwoLWIRKxC9BQltuWrZLL.ZxRfT48R3R3RL6P6wBN/j5O/C', 'email-to-change-upon-login@shopbay.org', 'A;NEW;PWD;', '0', NULL, NULL, NULL, NULL, 0, 0);

--
-- Dumping data for table `s_account_profile`
--;
-- For guest account profile;
INSERT INTO `s_account_profile` VALUES (-1, -1, 'GUEST', NULL, NULL, NULL, NULL, NULL, NULL, 'en_sg', 1399908878, 1399908978);
-- For system account profile;
INSERT INTO `s_account_profile` VALUES (0, 0, 'SYSTEM', NULL, NULL, NULL, NULL, NULL, NULL, 'en_sg', 1399908878, 1399908978);
-- For superuser account profile;
INSERT INTO `s_account_profile` VALUES (1, 1, 'SUPERUSER', NULL, NULL, NULL, NULL, NULL, NULL, 'en_sg', 1399908878, 1399908978);

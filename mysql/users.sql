-- --------------------------------------------------------
-- This file is part of Shopbay.org (http://shopbay.org)
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code. 
--;
-- --------------------------------------------------------
--
-- For 'Users' module - users management module
-- ;

--
-- End Users management rights
-- ;
INSERT INTO `s_auth_item` VALUES('Users', 1, 'Users', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Management.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Management.View', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Users Ops', 1, 'Users Ops', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Management.Suspend', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Management.Resume', 0, NULL, NULL, 'N;');

-- Assign rights;
INSERT INTO `s_auth_itemchild` VALUES('Users', 'Users.Management.Index');
INSERT INTO `s_auth_itemchild` VALUES('Users', 'Users.Management.View');

INSERT INTO `s_auth_itemchild` VALUES('Users Ops', 'Users.Management.Suspend');
INSERT INTO `s_auth_itemchild` VALUES('Users Ops', 'Users.Management.Resume');

--
-- Users administration rights
-- RESERVED for SUPERUSER only;
INSERT INTO `s_auth_item` VALUES('Admin Users', 1, 'Admin Users', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Admin.Index', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Admin.Create', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Admin.View', 0, NULL, NULL, 'N;');

INSERT INTO `s_auth_item` VALUES('Admin Users Ops', 1, 'Admin Users Ops', NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Admin.Suspend', 0, NULL, NULL, 'N;');
INSERT INTO `s_auth_item` VALUES('Users.Admin.Resume', 0, NULL, NULL, 'N;');

-- Assign rights;
INSERT INTO `s_auth_itemchild` VALUES('Admin Users', 'Users.Admin.Index');
INSERT INTO `s_auth_itemchild` VALUES('Admin Users', 'Users.Admin.Create');
INSERT INTO `s_auth_itemchild` VALUES('Admin Users', 'Users.Admin.View');

INSERT INTO `s_auth_itemchild` VALUES('Admin Users Ops', 'Users.Admin.Suspend');
INSERT INTO `s_auth_itemchild` VALUES('Admin Users Ops', 'Users.Admin.Resume');



DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190110011307');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190110011307');
-- Add your query below.


UPDATE `creature` SET `position_x` = -11065.4, `position_y` = 503.794, `position_z` = 22.6767, `orientation` = 2.46632, `spawndist` = 0,`MovementType` = 2 WHERE `guid` = 66989;
DELETE FROM `creature_movement` WHERE `id` = 66989;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`, `waittime`) VALUES
(66989, 1, -11072.2, 508.853, 24.8021, 0),
(66989, 2, -11080.5, 515.885, 26.1464, 0),
(66989, 3, -11092.1, 525.413, 29.6541, 0),
(66989, 4, -11100.2, 529.407, 31.2408, 0),
(66989, 5, -11103.7, 534.984, 32.6456, 0),
(66989, 6, -11107, 546.109, 33.8103, 0),
(66989, 7, -11105.5, 554.917, 33.4921, 0),
(66989, 8, -11106.7, 564.058, 33.2482, 0),
(66989, 9, -11110.5, 571.955, 33.3912, 0),
(66989, 10, -11116.3, 576.251, 33.3609, 3000),
(66989, 11, -11112.4, 576.758, 33.6797, 0),
(66989, 12, -11108.1, 572.881, 33.6452, 0),
(66989, 13, -11104.9, 567.346, 33.5479, 0),
(66989, 14, -11102.7, 558.91, 33.437, 0),
(66989, 15, -11102.7, 552.037, 33.6585, 0),
(66989, 16, -11104.2, 543.763, 33.6709, 0),
(66989, 17, -11099.8, 534.054, 32.1437, 0),
(66989, 18, -11091.1, 527.534, 29.8738, 0),
(66989, 19, -11078.8, 517.76, 26.1589, 0),
(66989, 20, -11070.2, 509.893, 24.6128, 0),
(66989, 21, -11064, 504.684, 22.4856, 0),
(66989, 22, -11065.9, 504.269, 22.9024, 3000);
DELETE FROM `creature_groups` WHERE `leader_guid` = 66989;
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES 
(66989, 66989, 0, 0, 1),
(66989, 66990, 3, 90, 1);

UPDATE `creature` SET `spawndist` = 0,`MovementType` = 2 WHERE `guid` = 66992;
UPDATE `creature` SET `spawndist` = 0,`MovementType` = 0 WHERE `guid` = 66993;
DELETE FROM `creature_movement` WHERE `id` = 66992;
INSERT INTO creature_movement (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(66992, 1, -11103.2, 530.823, 31.8316, 0, 0, 4.65353),
(66992, 2, -11105, 519.364, 30.8736, 0, 0, 4.28204),
(66992, 3, -11106.8, 511.95, 31.1417, 3000, 0, 4.08176),
(66992, 4, -11114.1, 505.521, 30.9313, 0, 0, 3.66472),
(66992, 5, -11127.2, 500.049, 31.919, 0, 0, 3.19505),
(66992, 6, -11142.9, 504.602, 32.1449, 0, 0, 2.61543),
(66992, 7, -11157.8, 512.947, 30.8424, 0, 0, 2.64684),
(66992, 8, -11170.1, 520.713, 32.6791, 0, 0, 2.26592),
(66992, 9, -11169.5, 539.733, 33.3686, 0, 0, 1.57477),
(66992, 10, -11170.2, 552.948, 34.0339, 0, 0, 1.18207),
(66992, 11, -11160.4, 573.238, 33.3233, 0, 0, 0.981012),
(66992, 12, -11146.9, 585.606, 35.0119, 0, 0, 0.509772),
(66992, 13, -11134.1, 590.105, 34.7976, 0, 0, 0.144562),
(66992, 14, -11121.6, 588.518, 34.5425, 0, 0, 5.96829),
(66992, 15, -11112.1, 582.693, 34.3821, 0, 0, 5.51984),
(66992, 16, -11104.8, 572.473, 33.868, 0, 0, 5.01247),
(66992, 17, -11103.4, 560.609, 33.3978, 0, 0, 4.80827),
(66992, 18, -11102.8, 544.496, 33.6181, 0, 0, 4.67083);
DELETE FROM `creature_groups` WHERE `leader_guid` = 66992;
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES 
(66992, 66992, 0, 0, 1),
(66992, 66993, 3, 90, 1);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;

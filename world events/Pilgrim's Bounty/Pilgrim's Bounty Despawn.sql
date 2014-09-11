DELETE FROM `creature_quest_starter` WHERE `quest` IN (14022,14023,14024,14028,14030,14033,14035,14036,14037,14040,14041,14043,14044,14047,14048,14051,14053,14054,14055,14058,14059,14060,14061,14062,14064,14065);
DELETE FROM `creature_quest_finisher` WHERE `quest` IN (14022,14023,14024,14028,14030,14033,14035,14036,14037,14040,14041,14043,14044,14047,14048,14051,14053,14054,14055,14058,14059,14060,14061,14062,14064,14065);

SET @CGUID := 430000;
SET @GGUID := 590000;

DELETE FROM `gameobject_spawns` WHERE `id` BETWEEN @CGUID+1 AND @GGUID+592;
DELETE FROM `creature_spawns` WHERE `id` BETWEEN @CGUID+1 AND @CGUID+3999;
DELETE FROM `npc_gossip_textid` WHERE `creatureid` IN (18927,19148,19169,19171,19172,19173,19175,19176,19177,19178,20102);

CREATE TABLE IF NOT EXISTS `active_event_id` (
  `active_event` int(10) unsigned NOT NULL,
  `name` text COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`active_event`)
);

DELETE FROM `active_event_id` WHERE `active_event`=13;
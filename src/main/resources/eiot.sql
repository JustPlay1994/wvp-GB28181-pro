/*
Navicat MySQL Data Transfer

Source Server         : cg-10.60.9.84-3306
Source Server Version : 50732
Source Host           : 10.60.9.84:3306
Source Database       : eiot

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-03-01 20:04:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `deviceId` text COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin,
  `manufacturer` text COLLATE utf8_bin,
  `model` text COLLATE utf8_bin,
  `firmware` text COLLATE utf8_bin,
  `transport` text COLLATE utf8_bin,
  `streamMode` text COLLATE utf8_bin,
  `online` text COLLATE utf8_bin,
  `registerTimeMillis` int(11) DEFAULT NULL,
  `ip` text COLLATE utf8_bin NOT NULL,
  `port` int(11) NOT NULL,
  `hostAddress` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for device_channel
-- ----------------------------
DROP TABLE IF EXISTS `device_channel`;
CREATE TABLE `device_channel` (
  `channelId` text COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin,
  `manufacture` text COLLATE utf8_bin,
  `model` blob,
  `owner` text COLLATE utf8_bin,
  `civilCode` text COLLATE utf8_bin,
  `block` text COLLATE utf8_bin,
  `address` text COLLATE utf8_bin,
  `parentId` text COLLATE utf8_bin,
  `safetyWay` int(11) DEFAULT NULL,
  `registerWay` int(11) DEFAULT NULL,
  `certNum` text COLLATE utf8_bin,
  `certifiable` int(11) DEFAULT NULL,
  `errCode` int(11) DEFAULT NULL,
  `endTime` text COLLATE utf8_bin,
  `secrecy` text COLLATE utf8_bin,
  `ipAddress` text COLLATE utf8_bin,
  `port` int(11) DEFAULT NULL,
  `password` text COLLATE utf8_bin,
  `PTZType` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `streamId` text COLLATE utf8_bin,
  `deviceId` text COLLATE utf8_bin NOT NULL,
  `parental` text COLLATE utf8_bin,
  `hasAudio` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for device_mobile_position
-- ----------------------------
DROP TABLE IF EXISTS `device_mobile_position`;
CREATE TABLE `device_mobile_position` (
  `deviceId` text COLLATE utf8_bin NOT NULL,
  `deviceName` text COLLATE utf8_bin,
  `time` text COLLATE utf8_bin NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `altitude` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `direction` double DEFAULT NULL,
  `reportSource` text COLLATE utf8_bin,
  `geodeticSystem` text COLLATE utf8_bin,
  `cnLng` text COLLATE utf8_bin,
  `cnLat` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for parent_platform
-- ----------------------------
DROP TABLE IF EXISTS `parent_platform`;
CREATE TABLE `parent_platform` (
  `enable` blob,
  `name` text COLLATE utf8_bin,
  `serverGBId` text COLLATE utf8_bin,
  `serverGBDomain` text COLLATE utf8_bin,
  `serverIP` text COLLATE utf8_bin,
  `serverPort` int(11) DEFAULT NULL,
  `deviceGBId` text COLLATE utf8_bin NOT NULL,
  `deviceIp` text COLLATE utf8_bin,
  `devicePort` text COLLATE utf8_bin,
  `username` text COLLATE utf8_bin,
  `password` text COLLATE utf8_bin,
  `expires` text COLLATE utf8_bin,
  `keepTimeout` text COLLATE utf8_bin,
  `transport` text COLLATE utf8_bin,
  `characterSet` text COLLATE utf8_bin,
  `PTZEnable` blob,
  `rtcp` blob,
  `status` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for platform_gb_channel
-- ----------------------------
DROP TABLE IF EXISTS `platform_gb_channel`;
CREATE TABLE `platform_gb_channel` (
  `channelId` text COLLATE utf8_bin NOT NULL,
  `deviceId` text COLLATE utf8_bin NOT NULL,
  `platformId` text COLLATE utf8_bin NOT NULL,
  `deviceAndChannelId` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS `sqlite_sequence`;
CREATE TABLE `sqlite_sequence` (
  `name` text COLLATE utf8_bin NOT NULL,
  `seq` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

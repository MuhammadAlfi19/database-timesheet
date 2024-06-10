/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : timesheet

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 08/06/2024 22:59:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan`  (
  `id_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kegiatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `judul_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_proyek` int NULL DEFAULT NULL,
  `tgl_mulai` date NULL DEFAULT NULL,
  `tgl_berakhir` date NULL DEFAULT NULL,
  `waktu_mulai` time NULL DEFAULT NULL,
  `waktu_berakhir` time NULL DEFAULT NULL,
  `durasi` time NULL DEFAULT NULL,
  `crtx_date` datetime NULL DEFAULT NULL,
  `updt_date` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------

-- ----------------------------
-- Table structure for proyek
-- ----------------------------
DROP TABLE IF EXISTS `proyek`;
CREATE TABLE `proyek`  (
  `id_proyek` int NOT NULL AUTO_INCREMENT,
  `nama_proyek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_proyek`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proyek
-- ----------------------------
INSERT INTO `proyek` VALUES (1, 'Aplikasi Website');
INSERT INTO `proyek` VALUES (2, 'Desain UI');
INSERT INTO `proyek` VALUES (3, 'Asisten Virtual');
INSERT INTO `proyek` VALUES (4, 'Desain Logo');
INSERT INTO `proyek` VALUES (5, 'Aplikasi Timesheet');
INSERT INTO `proyek` VALUES (6, 'Developer Mobile');
INSERT INTO `proyek` VALUES (7, 'Developer Web');
INSERT INTO `proyek` VALUES (12, 'Mobile Developer');
INSERT INTO `proyek` VALUES (14, 'Mobile Apps');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rate` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `crtx_date` datetime NULL DEFAULT NULL,
  `updt_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('A-001', 'Muhammad Alfi Nur Azhuri', 12000, 1, '2024-06-07 21:15:22', NULL);

SET FOREIGN_KEY_CHECKS = 1;

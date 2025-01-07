/*
 Navicat Premium Data Transfer

 Source Server         : Info Kencana
 Source Server Type    : MySQL
 Source Server Version : 100512
 Source Host           : 45.13.252.103:3306
 Source Schema         : u431581746_dbkencankargo

 Target Server Type    : MySQL
 Target Server Version : 100512
 File Encoding         : 65001

 Date: 10/03/2022 05:57:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_akun` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_rek` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES (2, 'BCA', 'ASAN', ' 808 5432 555', 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang ', 1, '2021-07-21 10:57:13', 'admin');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `alamat` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (8, 'Freedy', '\\', 'freedysetiawan@rocketmail.com', '', 'Toko Roda Jaya, Jalan Griya Loka, Sektor 1-2 Blok RC 4 no 11, RT 010, RW 04, Serpong, Tangerang Selatan', NULL, '2021-08-30 04:11:48', 'admin');
INSERT INTO `customer` VALUES (9, 'DEBBI', '-', 'dresstokillpeople@gmail.com', '', '-', NULL, '2021-07-25 17:43:47', 'admin');
INSERT INTO `customer` VALUES (10, 'Farid/ Mujiono', '-', 'rabkadirf@gmail.com', '', 'Jalan Rancabolang No. 27, Kelurahan Manjahlega, Kecamatan Rancasari, 40286 Kota BANDUNG', NULL, '2021-07-22 05:03:44', 'admin');
INSERT INTO `customer` VALUES (11, 'Imad', '', 'bredel.inc@gmail.com', '', 'Jl. Sariwates Indah VII No. 5 rt 04 rw 13 Antapani Kidul 40291 BANDUNG', NULL, '2021-07-23 07:08:56', 'admin');
INSERT INTO `customer` VALUES (12, 'Aziz', '', 'aziz.eepis@.com', '', 'Green semanggi mangrove cluster osbornia blok d44 SURABAYA', NULL, '2021-09-03 09:18:53', 'admin');
INSERT INTO `customer` VALUES (13, 'Jessy', '6281288', 'koreaorganictoothpaste@gmail.com', '', 'Victor Jl. Semarang 28-D\r\nSurabaya Telp: 0851000655 SURABAYA', NULL, '2021-08-30 08:58:59', 'admin');
INSERT INTO `customer` VALUES (14, 'Ahen', '', 'suhendra_hadi@yahoo.com', '', 'Harco Glodok Jakarta', NULL, '2021-08-05 13:51:59', 'admin');
INSERT INTO `customer` VALUES (15, 'Erlina', '62856118108', 'erlina.widaya@gmail.com', '', 'JL. KOTA BARU III PAGAR\r\nPUTIH  40252   BANDUNG', NULL, '2021-08-30 04:10:04', 'admin');
INSERT INTO `customer` VALUES (16, 'Dede', '6281295066', 'dede.wadi@gmail.com', '', 'Komplek permata biru 2, jl\r\nedelweis v blok h2 no 35, desa\r\ncinunuk, cileunyi BANDUNG', NULL, '2021-07-26 07:25:52', 'admin');
INSERT INTO `customer` VALUES (17, 'ASIM', '628121333602', 'asimma@hotmail.com', '', 'Tanah Abang - Jakarta', NULL, '2021-07-26 07:25:37', 'admin');
INSERT INTO `customer` VALUES (18, 'SABINDO ALICE', '-', 'halokencana@gmail.com', '', '-', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (19, 'Kim / Rahma', '-', 'halokencana@gmail.com', '', 'TEBET JAKARTA', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (20, 'Barry/ Mega', '-', '-', '', '-', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (21, 'Danny', '6287788895601', 'danny.f@gmail.com', '', 'Jakarta Bekasi', NULL, '2021-07-27 10:08:00', 'admin');
INSERT INTO `customer` VALUES (22, 'Cici', '', 'asa.dinamikautama@gmail.com', '', 'Perum Cikarang Baru jln Kancil V no 79 Cikarang Timur', NULL, '2021-08-03 08:29:38', 'admin');
INSERT INTO `customer` VALUES (23, 'Faisal', '+62 8121286304', 'faisal@indera.co ', '', 'Tangerang', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (24, 'Ary', '-', '-', '', 'JASIMA CARGO', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (25, 'PT. Yobrey Pass Blessindo', '-', 'halokencana@gmail.com', '', 'BLESSINDO', NULL, '2021-09-01 07:22:02', 'admin');
INSERT INTO `customer` VALUES (26, 'Hari', '-', 'teknindosahabat@gmail.com', '', 'bekasi', NULL, '2021-08-30 04:11:04', 'admin');
INSERT INTO `customer` VALUES (27, 'Michael ', '-', '-', '', 'Jaktim', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (28, 'RUDON ', '6281807759889', 'rudon.kosasih@gmail.com', '', 'Pamulang Bekasi', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (29, 'PANCA', '628197856292', 'pancahadi99@gmail.com', '', '-', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (30, 'FARHAN', '62 877-2277-0800', 'farenaldi.mail@gmail.com ', '', 'jl kakap raya ad10 perum kopassus kedayutama..sukatani..tapos', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (31, 'DONALD', '08119209944', 'Warehouse.ibo@gmail.com ', '', '', NULL, '2022-01-15 07:55:13', 'admin');
INSERT INTO `customer` VALUES (32, 'Jordy', '6287886812511', 'jordykartika@gmail.com', '', 'puri mansion ', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (33, 'DARRYL / ACIL', '62 812-8209-2594', 'tandaryl10@gmail.com', '', '', NULL, '2021-11-25 06:24:27', 'admin');
INSERT INTO `customer` VALUES (34, 'Yuni', '081286068888', 'YUYUNI875@GMAIL.COM', '', 'apt. Teluk Intan topaz 8', NULL, '2021-12-02 15:54:47', 'admin');
INSERT INTO `customer` VALUES (35, 'Khoirus Soleh', '', 'solehkhoirus143@gmail.com', '', 'PT. Trunojoyo Medika Prima Indonesia Jl. Manggis, Rw. V, Gn. Sekar, Kec. Sampang, Kabupaten Sampang, Jawa Timur 69216', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (36, 'Rais ', '', 'rais.fikri18@gmail.com', '', 'Citra Indah City, CLUSTER DAHLIA DB 17/20, RT 02 RW 15 Kec. Jonggol, Kel. Singajaya (16830)', NULL, '2021-11-25 06:34:03', 'admin');
INSERT INTO `customer` VALUES (37, 'Anri', '+62 853-9859-8855', 'akmakkasau@gmail.com', '', 'makassar', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (38, 'IQBAL', '', 'smsbaru@gmail.com', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (39, 'Hendro ', '+62 813-8509-1986', 'hendrosuryadi@gmail.com', '', 'sby', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (40, 'MAHA', '', '', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (41, 'YASIN', '', 'ysnbanu.s@gmail.com', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (42, 'TRI', '', 'triseptyaniw19@gmail.com', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (43, 'Yuanita', '', '', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (44, 'Jackie', '', '', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (45, 'DECKO', '', 'denny.perpani@gmail.com', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (46, 'SUKMA', '', 'purchasing02@maxqgroup.net', '', '', NULL, '2022-02-21 08:12:38', 'admin');
INSERT INTO `customer` VALUES (47, 'Vincent', '', 'Vincentsolid@hotmail.com', '', 'Jln Seikera no 59\r\nKec. Medan timur\r\nKel. Sidodadi\r\n20234\r\nMedan , sumatera utara', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (48, 'LITA', '', 'lita_hanifurizal@lintasmandiriarthaprima.com', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (49, 'LITA', '', 'lita_hanifurizal@lintasmandiriarthaprima.com', '', '', NULL, NULL, 'admin');
INSERT INTO `customer` VALUES (50, 'WANG', '', 'purchase@wellmatic.co.id', '', '', NULL, NULL, 'admin');

-- ----------------------------
-- Table structure for history_tracking
-- ----------------------------
DROP TABLE IF EXISTS `history_tracking`;
CREATE TABLE `history_tracking`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `trans_id` int NULL DEFAULT NULL,
  `status_tracking` int NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_by` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trans_id`(`trans_id` ASC) USING BTREE,
  INDEX `status_tracking`(`status_tracking` ASC) USING BTREE,
  CONSTRAINT `history_tracking_ibfk_1` FOREIGN KEY (`trans_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `history_tracking_ibfk_2` FOREIGN KEY (`status_tracking`) REFERENCES `status_tracking` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_tracking
-- ----------------------------
INSERT INTO `history_tracking` VALUES (1, 118, 1, '2021-09-24', '2021-09-27 08:51:58', '2021-09-27 08:51:58', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (3, 119, 1, '2021-09-27', '2021-09-27 08:57:00', '2021-09-27 08:57:00', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (4, 120, 1, '2021-09-28', '2021-09-28 04:12:56', '2021-09-28 04:12:56', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (5, 121, 1, '2021-09-30', '2021-09-30 07:23:42', '2021-09-30 07:23:42', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (6, 122, 1, '2021-10-05', '2021-10-05 07:37:56', '2021-10-05 07:37:56', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (7, 123, 1, '2021-09-01', '2021-10-08 06:55:20', '2021-10-08 06:55:20', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (8, 124, 1, '2021-10-11', '2021-10-11 06:14:40', '2021-10-11 06:14:40', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (9, 125, 1, '2021-10-11', '2021-10-11 06:15:28', '2021-10-11 06:15:28', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (10, 126, 1, '2021-10-12', '2021-10-19 06:38:36', '2021-10-19 06:38:36', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (11, 127, 1, '2021-10-19', '2021-10-19 06:40:07', '2021-10-19 06:40:07', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (12, 128, 1, '2021-10-13', '2021-10-19 06:41:29', '2021-10-19 06:41:29', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (13, 129, 1, '2021-10-19', '2021-10-19 07:24:29', '2021-10-19 07:24:29', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (14, 130, 1, '2021-10-05', '2021-10-19 08:09:15', '2021-10-19 08:09:15', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (16, 132, 1, '2021-10-27', '2021-10-27 05:15:41', '2021-10-27 05:15:41', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (17, 133, 1, '2021-10-27', '2021-10-27 05:19:12', '2021-10-27 05:19:12', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (18, 134, 1, '2021-10-27', '2021-10-27 05:22:51', '2021-10-27 05:22:51', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (19, 135, 1, '2021-10-27', '2021-10-27 05:25:38', '2021-10-27 05:25:38', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (20, 136, 1, '2021-11-10', '2021-11-10 07:41:53', '2021-11-10 07:41:53', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (21, 137, 1, '2021-11-11', '2021-11-11 07:29:31', '2021-11-11 07:29:31', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (22, 138, 1, '2021-11-11', '2021-11-11 07:31:31', '2021-11-11 07:31:31', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (23, 139, 1, '2021-11-15', '2021-11-15 06:26:35', '2021-11-15 06:26:35', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (24, 140, 1, '2021-11-15', '2021-11-15 09:39:15', '2021-11-15 09:39:15', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (25, 141, 1, '2021-11-19', '2021-11-19 17:36:57', '2021-11-19 17:36:57', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (26, 142, 1, '2021-11-19', '2021-11-19 17:38:57', '2021-11-19 17:38:57', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (27, 143, 1, '2021-11-19', '2021-11-19 17:44:52', '2021-11-19 17:44:52', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (28, 144, 1, '2021-11-19', '2021-11-19 17:47:06', '2021-11-19 17:47:06', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (29, 145, 1, '2021-11-19', '2021-11-19 17:51:38', '2021-11-19 17:51:38', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (30, 146, 1, '2021-11-19', '2021-11-19 17:53:57', '2021-11-19 17:53:57', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (31, 147, 1, '2021-11-19', '2021-11-19 18:01:16', '2021-11-19 18:01:16', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (32, 148, 1, '2021-11-24', '2021-11-24 05:34:10', '2021-11-24 05:34:10', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (33, 149, 1, '2021-11-25', '2021-11-25 06:32:14', '2021-11-25 06:32:14', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (34, 150, 1, '2021-11-25', '2021-11-25 06:39:52', '2021-11-25 06:39:52', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (35, 151, 1, '2021-11-25', '2021-11-25 07:22:51', '2021-11-25 07:22:51', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (36, 152, 1, '2021-11-25', '2021-11-25 08:20:00', '2021-11-25 08:20:00', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (37, 153, 1, '2021-11-25', '2021-11-25 10:13:25', '2021-11-25 10:13:25', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (38, 154, 1, '2021-11-27', '2021-11-27 07:58:11', '2021-11-27 07:58:11', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (39, 155, 1, '2021-10-23', '2021-12-02 07:59:57', '2021-12-02 07:59:57', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (40, 156, 1, '2021-11-27', '2021-12-02 08:03:26', '2021-12-02 08:03:26', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (41, 157, 1, '2021-12-02', '2021-12-02 08:13:57', '2021-12-02 08:13:57', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (42, 158, 1, '2021-11-27', '2021-12-02 15:53:27', '2021-12-02 15:53:27', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (43, 159, 1, '2021-11-18', '2021-12-02 15:55:46', '2021-12-02 15:55:46', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (44, 160, 1, '2021-11-25', '2021-12-02 15:57:39', '2021-12-02 15:57:39', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (45, 161, 1, '2021-12-01', '2021-12-02 15:59:40', '2021-12-02 15:59:40', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (46, 162, 1, '2021-11-25', '2021-12-02 16:01:47', '2021-12-02 16:01:47', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (47, 163, 1, '2021-11-24', '2021-12-02 16:04:07', '2021-12-02 16:04:07', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (48, 164, 1, '2021-11-20', '2021-12-02 16:06:30', '2021-12-02 16:06:30', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (49, 165, 1, '2021-11-18', '2021-12-02 16:07:32', '2021-12-02 16:07:32', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (50, 166, 1, '2021-11-15', '2021-12-02 16:10:00', '2021-12-02 16:10:00', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (51, 167, 1, '2021-11-12', '2021-12-02 16:11:13', '2021-12-02 16:11:13', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (52, 168, 1, '2021-11-08', '2021-12-02 16:16:26', '2021-12-02 16:16:26', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (53, 169, 1, '2021-12-03', '2021-12-03 06:58:30', '2021-12-03 06:58:30', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (54, 170, 1, '2021-12-03', '2021-12-03 08:04:04', '2021-12-03 08:04:04', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (55, 171, 1, '2021-12-03', '2021-12-03 10:33:53', '2021-12-03 10:33:53', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (56, 172, 1, '2021-10-26', '2021-12-03 10:42:05', '2021-12-03 10:42:05', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (57, 173, 1, '2021-12-08', '2021-12-08 04:40:37', '2021-12-08 04:40:37', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (58, 174, 1, '2021-12-11', '2021-12-11 14:59:55', '2021-12-11 14:59:55', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (59, 175, 1, '2021-12-11', '2021-12-11 15:01:50', '2021-12-11 15:01:50', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (60, 176, 1, '2021-12-12', '2021-12-12 10:09:34', '2021-12-12 10:09:34', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (61, 177, 1, '2021-12-12', '2021-12-12 10:10:42', '2021-12-12 10:10:42', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (62, 178, 1, '2021-12-12', '2021-12-12 10:23:43', '2021-12-12 10:23:43', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (63, 179, 1, '2021-12-12', '2021-12-12 11:00:21', '2021-12-12 11:00:21', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (64, 180, 1, '2021-12-15', '2021-12-15 09:34:02', '2021-12-15 09:34:02', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (65, 181, 1, '2021-12-15', '2021-12-15 09:37:16', '2021-12-15 09:37:16', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (66, 182, 1, '2021-12-15', '2021-12-15 09:40:20', '2021-12-15 09:40:20', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (67, 183, 1, '2021-12-14', '2021-12-15 09:42:27', '2021-12-15 09:42:27', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (68, 184, 1, '2021-12-14', '2021-12-15 09:48:33', '2021-12-15 09:48:33', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (69, 185, 1, '2021-12-13', '2021-12-15 09:49:26', '2021-12-15 09:49:26', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (70, 186, 1, '2021-12-15', '2021-12-15 09:51:23', '2021-12-15 09:51:23', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (71, 187, 1, '2021-12-14', '2021-12-15 09:53:30', '2021-12-15 09:53:30', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (72, 188, 1, '2021-12-07', '2021-12-15 09:58:49', '2021-12-15 09:58:49', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (73, 189, 1, '2021-12-14', '2021-12-20 06:46:08', '2021-12-20 06:46:08', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (74, 190, 1, '2021-12-15', '2021-12-20 07:27:53', '2021-12-20 07:27:53', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (75, 191, 1, '2021-12-17', '2021-12-20 07:31:52', '2021-12-20 07:31:52', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (76, 192, 1, '2021-12-20', '2021-12-20 07:56:59', '2021-12-20 07:56:59', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (77, 193, 1, '2021-12-20', '2021-12-20 07:58:54', '2021-12-20 07:58:54', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (78, 194, 1, '2021-12-20', '2021-12-20 08:04:56', '2021-12-20 08:04:56', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (79, 195, 1, '2021-12-20', '2021-12-20 09:06:15', '2021-12-20 09:06:15', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (80, 196, 1, '2021-12-24', '2021-12-24 09:09:40', '2021-12-24 09:09:40', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (82, 198, 1, '2021-12-27', '2021-12-27 03:27:42', '2021-12-27 03:27:42', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (83, 199, 1, '2021-12-30', '2021-12-30 07:07:06', '2021-12-30 07:07:06', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (84, 200, 1, '2022-01-03', '2022-01-03 03:45:06', '2022-01-03 03:45:06', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (86, 202, 1, '2022-01-04', '2022-01-04 18:58:55', '2022-01-04 18:58:55', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (87, 203, 1, '2021-12-29', '2022-01-04 19:01:40', '2022-01-04 19:01:40', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (88, 204, 1, '2021-12-30', '2022-01-04 19:03:31', '2022-01-04 19:03:31', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (89, 205, 1, '2022-01-07', '2022-01-07 06:09:48', '2022-01-07 06:09:48', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (90, 206, 1, '2022-01-07', '2022-01-07 06:13:51', '2022-01-07 06:13:51', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (91, 207, 1, '2021-12-22', '2022-01-10 17:18:18', '2022-01-10 17:18:18', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (92, 208, 1, '2021-12-22', '2022-01-10 17:20:18', '2022-01-10 17:20:18', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (93, 209, 1, '2022-01-09', '2022-01-10 17:39:37', '2022-01-10 17:39:37', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (95, 211, 1, '2022-01-13', '2022-01-13 04:19:31', '2022-01-13 04:19:31', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (96, 212, 1, '2022-01-13', '2022-01-13 04:19:54', '2022-01-13 04:19:54', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (97, 213, 1, '2022-01-18', '2022-01-18 04:38:54', '2022-01-18 04:38:54', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (98, 214, 1, '2022-01-18', '2022-01-18 05:10:13', '2022-01-18 05:10:13', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (99, 215, 1, '2022-01-19', '2022-01-19 04:36:05', '2022-01-19 04:36:05', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (102, 218, 1, '2022-01-19', '2022-01-19 05:51:34', '2022-01-19 05:51:34', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (103, 219, 1, '2022-01-19', '2022-01-19 05:51:55', '2022-01-19 05:51:55', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (104, 220, 1, '2022-01-19', '2022-01-19 09:12:49', '2022-01-19 09:12:49', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (105, 221, 1, '2022-01-27', '2022-01-27 05:55:48', '2022-01-27 05:55:48', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (106, 222, 1, '2022-01-27', '2022-01-27 09:15:35', '2022-01-27 09:15:35', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (107, 223, 1, '2022-01-28', '2022-01-28 08:42:52', '2022-01-28 08:42:52', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (108, 224, 1, '2022-01-28', '2022-01-28 08:49:09', '2022-01-28 08:49:09', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (109, 225, 1, '2022-02-04', '2022-02-04 14:15:59', '2022-02-04 14:15:59', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (110, 226, 1, '2022-02-16', '2022-02-16 15:02:13', '2022-02-16 15:02:13', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (111, 227, 1, '2022-02-17', '2022-02-17 05:55:13', '2022-02-17 05:55:13', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (112, 228, 1, '2022-02-14', '2022-02-21 08:13:40', '2022-02-21 08:13:40', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (113, 229, 1, '2022-02-21', '2022-02-21 08:50:36', '2022-02-21 08:50:36', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (114, 230, 1, '2022-02-21', '2022-02-21 08:54:11', '2022-02-21 08:54:11', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (115, 231, 1, '2022-01-14', '2022-02-21 09:46:29', '2022-02-21 09:46:29', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (116, 232, 1, '2022-02-24', '2022-02-24 06:08:31', '2022-02-24 06:08:31', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (117, 233, 1, '2022-02-24', '2022-02-24 06:15:50', '2022-02-24 06:15:50', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (118, 234, 1, '2022-02-25', '2022-02-25 07:53:02', '2022-02-25 07:53:02', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (119, 235, 1, '2022-02-23', '2022-02-25 14:04:12', '2022-02-25 14:04:12', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (120, 236, 1, '2022-02-25', '2022-02-25 14:10:01', '2022-02-25 14:10:01', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (121, 237, 1, '2022-02-26', '2022-02-26 01:22:45', '2022-02-26 01:22:45', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (122, 238, 1, '2022-03-01', '2022-03-01 04:46:15', '2022-03-01 04:46:15', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (123, 239, 1, '2022-03-01', '2022-03-01 09:10:45', '2022-03-01 09:10:45', 'admin', NULL);
INSERT INTO `history_tracking` VALUES (124, 240, 1, '2022-03-02', '2022-03-02 07:03:52', '2022-03-02 07:03:52', 'admin', NULL);

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NULL DEFAULT NULL,
  `nomor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `tgl_selesai` date NULL DEFAULT NULL,
  `total` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `total_tagihan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `diskon` int NULL DEFAULT 0,
  `profit` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `non_profit` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `catatan_profit` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int NULL DEFAULT 0,
  `status_mail` int NOT NULL DEFAULT 0,
  `catatan` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES (21, 8, 'KC1626864972', '2021-07-21', '2021-07-21', '5162000.00', '5162000.00', 0, '150000', '0', 'Delivery', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-21 10:56:12', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (22, 11, 'KC1626865688', '2021-07-21', '2021-07-21', '3713300.00', '3713300.00', 0, '0', '173300', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-21 11:08:08', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (23, 9, 'KC1626886176', '2021-07-21', '2021-07-21', '55000.00', '55000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang <br>testststs', '2021-07-21 16:49:36', 'admin', '2022-02-17 01:22:26', NULL);
INSERT INTO `invoice` VALUES (24, 11, 'KC1627024898', '2021-07-23', '2021-07-23', '16680000000675898.00', '16680000000675898.00', 0, '0', '675900', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-23 07:21:38', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (25, 17, 'KC1627276713', '2021-07-26', '2021-07-26', '2860000.00', '2860000.00', 0, '0', '0', '', 2, 0, 'Pembayaran sebelum pengantaran , harap konfirmasi pembayaran. ', '2021-07-26 05:18:33', 'admin', '2022-02-14 14:37:26', NULL);
INSERT INTO `invoice` VALUES (26, 18, 'KC1627282622', '2021-07-26', '2021-07-26', '3401000.00', '3401000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang <br>ANTAR TGL 25 JUNI, LUNAS 26 JULI', '2021-07-26 06:57:02', 'admin', '2022-02-17 01:22:26', NULL);
INSERT INTO `invoice` VALUES (27, 19, 'KC1627289187', '2021-07-26', '2021-07-26', '91105000.00', '91105000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-26 08:46:27', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (28, 9, 'KC1627293739', '2021-07-26', '2021-07-26', '66100000.00', '66100000.00', 0, '100000', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-26 10:02:19', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (29, 9, 'KC1627294112', '2021-07-26', '2021-07-26', '6050000.00', '6050000.00', 0, '50000', '0', 'delivery', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-26 10:08:32', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (30, 18, 'KC1627308992', '2021-07-26', '2021-07-26', '7991000.00', '7991000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang <br>ANTAR 25 JUNI', '2021-07-26 14:16:32', 'admin', '2022-02-17 01:22:26', NULL);
INSERT INTO `invoice` VALUES (31, 10, 'KC1627309531', '2021-07-26', '2021-07-26', '1980000.00', '1980000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-26 14:25:31', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (32, 20, 'KC1627309839', '2021-07-26', '2021-07-26', '3550000.00', '3550000.00', 0, '1875000', '0', 'min cbm+ delivery', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-26 14:30:39', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (33, 20, 'KC1627309964', '2021-07-26', '2021-07-26', '3550000.00', '3550000.00', 0, '1875000', '0', 'cbm+delivery', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-26 14:32:44', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (34, 21, 'KC1627377880', '2021-07-27', '2021-07-27', '5760000.00', '5760000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pembayaran sebelum pengiriman barang\r\nKonfirmasi kembali setelah transfer', '2021-07-27 09:24:40', 'admin', '2022-02-14 14:37:26', NULL);
INSERT INTO `invoice` VALUES (35, 21, 'KC1627381956', '2021-07-27', '2021-07-27', '5760000.00', '5760000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-27 10:32:36', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (36, 11, 'KC1627382668', '2021-07-27', '2021-07-27', '11540000.00', '11540000.00', 0, '0', '320000', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-27 10:44:28', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (37, 22, 'KC1627657104', '2021-07-30', '2021-07-30', '6000000.00', '6000000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-07-30 14:58:24', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (38, 22, 'KC1627979423', '2021-08-03', '2021-08-03', '24500000001050004.00', '24500000001050004.00', 0, '1050000', '0', 'Min CBM ', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-03 08:30:23', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (39, 23, 'KC1627984144', '2021-08-03', '2021-08-03', '4000000.00', '4000000.00', 0, '1810000', '0', 'Min Cbm+ delivery ', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-03 09:49:04', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (40, 19, 'KC1628061066', '2021-08-04', '2021-08-04', '69048000.00', '69048000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-04 07:11:06', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (43, 24, 'KC1628065891', '2021-08-04', '2021-08-04', '3442000.00', '3442000.00', 0, '1822000', '0', 'Min cbm + SGD 115', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-04 08:31:31', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (44, 12, 'KC1628171379', '2021-08-05', '2021-08-05', '18504000.00', '18504000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-05 13:49:39', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (45, 13, 'KC1628506918', '2021-08-09', '2021-08-09', '37050000000000010.00', '37050000000000010.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-09 11:01:58', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (46, 25, 'KC1629225629', '2021-08-17', '2021-08-17', '4000000.00', '4000000.00', 0, '1664000', '0', 'Minimal cbm + Forklift', 2, 0, 'Pembayaran terlebih dahulu sebelum konfirmasi pengantaran', '2021-08-17 18:40:29', 'admin', '2022-02-14 14:37:26', NULL);
INSERT INTO `invoice` VALUES (47, 26, 'KC1629226314', '2021-08-17', '2021-08-17', '2730000.00', '2730000.00', 0, '200000', '0', 'Estimasi Ongkir JNE', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-17 18:51:54', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (48, 27, 'KC1629705642', '2021-08-23', '2021-08-23', '21976000.00', '21976000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-08-23 08:00:42', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (49, 13, 'KC1629706206', '2021-08-23', '2021-08-23', '8085000.00', '8085000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang <br>Potong Claim 90.000 (15 pcs)', '2021-08-23 08:10:06', 'admin', '2022-02-17 01:22:26', NULL);
INSERT INTO `invoice` VALUES (50, 13, 'KC1630479000', '2021-09-01', '2021-09-01', '1767000.00', '1767000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-01 06:50:00', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (51, 29, 'KC1630479377', '2021-09-01', '2021-09-01', '3075000.00', '3075000.00', 0, '0', '200000', 'Estimasi Ongkir JNE', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-01 06:56:17', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (52, 10, 'KC1630654615', '2021-09-03', '2021-09-03', '50243000.00', '50243000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-03 07:36:55', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (53, 12, 'KC1630660007', '2021-09-03', '2021-09-03', '17928000.00', '17928000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-03 09:06:47', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (54, 11, 'KC1630660388', '2021-09-03', '2021-09-03', '3348000.00', '3348000.00', 0, '0', '168000', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-03 09:13:08', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (55, 12, 'KC1630660602', '2021-09-03', '2021-09-03', '3712000.00', '3712000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-03 09:16:42', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (56, 10, 'KC1631003400', '2021-09-07', '2021-09-07', '50593000.00', '50593000.00', 0, '350000', '0', 'Forklift', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-07 08:30:00', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (57, 20, 'KC1631168632', '2021-09-09', '2021-09-09', '15375000.00', '15375000.00', 0, '300000', '0', 'Trucking Mobil Besar', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-09 06:23:52', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (58, 12, 'KC1631174094', '2021-09-09', '2021-09-09', '25843000.00', '25843000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-09 07:54:54', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (59, 23, 'KC1631174732', '2021-09-09', '2021-09-09', '2557000.00', '2557000.00', 0, '0', '37000', 'GRAB SEND', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-09 08:05:32', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (60, 19, 'KC1631269387', '2021-09-10', '2021-09-10', '56581000.00', '56581000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-10 10:23:07', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (61, 13, 'KC1631860226', '2021-09-17', '2021-09-17', '1425000.00', '1425000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-17 06:30:26', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (62, 28, 'KC1631860842', '2021-09-17', '2021-09-17', '9129000.00', '9129000.00', 0, '150000', '0', 'Delivery', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-17 06:40:42', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (63, 27, 'KC1631861143', '2021-09-17', '2021-09-17', '18023000.00', '18023000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-17 06:45:43', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (64, 15, 'KC1631861221', '2021-09-17', '2021-09-17', '9180000.00', '9180000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-17 06:47:01', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (65, 11, 'KC1632122244', '2021-09-20', '2021-09-20', '3927000.00', '3927000.00', 0, '147000', '0', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-20 07:17:24', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (66, 13, 'KC1632280918', '2021-09-22', '2021-09-22', '4845000.00', '4845000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-22 03:21:58', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (67, 15, 'KC1632729787', '2021-09-27', '2021-09-27', '13608000.00', '13608000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-27 08:03:07', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (68, 8, 'KC1632730812', '2021-09-27', '2021-09-27', '4110000.00', '4110000.00', 0, '150000', '0', 'Delivery', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-27 08:20:12', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (69, 23, 'KC1632802422', '2021-09-28', '2021-09-28', '3650000.00', '3650000.00', 0, '1898000', '0', 'Minimal cbm 0,5 cbm ', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-28 04:13:42', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (70, 31, 'KC1632986636', '2021-09-30', '2021-09-30', '7536000.00', '7536000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-09-30 07:23:56', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (71, 13, 'KC1633580167', '2021-10-07', '2021-10-07', '1197000.00', '1197000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-07 04:16:07', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (72, 8, 'KC1633581207', '2021-10-07', '2021-10-07', '495000.00', '495000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-07 04:33:27', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (73, 16, 'KC1633676192', '2021-10-08', '2021-10-08', '3500000.00', '3500000.00', 0, '490000', '0', 'Minimal CBM ', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-08 06:56:32', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (74, 12, 'KC1633932945', '2021-10-11', '2021-10-11', '8784000.00', '8784000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-11 06:15:45', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (75, 29, 'KC1634539350', '2021-10-18', '2021-10-18', '39477000.00', '39477000.00', 0, '950000', '0', 'Forklift (350.000)+ Sewa Mobil (600.000)', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-18 06:42:30', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (76, 26, 'KC1634628399', '2021-10-19', '2021-10-19', '1186000.00', '1186000.00', 0, '864000', '0', 'ONGKIR JNE (36.000) + Min KG (828.000)', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-19 07:26:39', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (77, 30, 'KC1635236892', '2021-10-26', '2021-10-26', '3000000.00', '3000000.00', 0, '360000', '0', 'Minimal CBM', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-26 08:28:12', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (78, 13, 'KC1635311765', '2021-10-27', '2021-10-27', '2327500.00', '2327500.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-27 05:16:05', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (79, 11, 'KC1635311994', '2021-10-27', '2021-10-27', '15420000000643298.00', '15420000000643298.00', 0, '0', '643300', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-27 05:19:54', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (80, 12, 'KC1635312187', '2021-10-27', '2021-10-27', '4350000.00', '4350000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-27 05:23:07', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (81, 23, 'KC1635312366', '2021-10-27', '2021-10-27', '1327000.00', '1327000.00', 0, '0', '55000', 'GRAB SEND', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-10-27 05:26:06', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (82, 22, 'KC1636530128', '2021-11-10', '2021-11-10', '2700000.00', '2700000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-10 07:42:08', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (83, 15, 'KC1636615921', '2021-11-11', '2021-11-11', '14400000.00', '14400000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-11 07:32:01', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (84, 33, 'KC1636957659', '2021-11-15', '2021-11-15', '2272500.00', '2272500.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-15 06:27:39', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (85, 12, 'KC1636969181', '2021-11-15', '2021-11-15', '4662000.00', '4662000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-15 09:39:41', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (86, 10, 'KC1637043500', '2021-11-16', '2021-11-16', '85890000.00', '85890000.00', 0, '350000', '0', 'Forklift', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-16 06:18:20', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (87, 13, 'KC1637343443', '2021-11-19', '2021-11-19', '3363000.00', '3363000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-19 17:37:23', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (88, 10, 'KC1637343612', '2021-11-19', '2021-11-19', '1120000.00', '1120000.00', 0, '658000', '0', 'Min KG + jne 20.000', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-19 17:40:12', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (89, 34, 'KC1637343939', '2021-11-19', '2021-11-19', '1125000.00', '1125000.00', 0, '900000', '0', 'Kena min KG', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-19 17:45:39', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (90, 13, 'KC1637344327', '2021-11-19', '2021-11-19', '11340000.00', '11340000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-19 17:52:07', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (91, 22, 'KC1637344473', '2021-11-19', '2021-11-19', '3500000.00', '3500000.00', 0, '2240000', '0', 'MIN CBM', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-19 17:54:33', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (92, 11, 'KC1637344907', '2021-11-19', '2021-11-19', '4349600.00', '4349600.00', 0, '149600', '0', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-19 18:01:47', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (93, 10, 'KC1637732064', '2021-11-24', '2021-11-24', '1430000.00', '1430000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-24 05:34:24', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (94, 19, 'KC1637745353', '2021-11-24', '2021-11-24', '30140000000000004.00', '30140000000000004.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-24 09:15:53', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (95, 13, 'KC1637821231', '2021-11-25', '2021-11-25', '11340000.00', '11340000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-25 06:20:31', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (96, 27, 'KC1637835320', '2021-11-25', '2021-11-25', '3085075.00', '3085075.00', 0, '0', '532075', 'Pick Up (474.075) + Grab ( 58.000)', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-11-25 10:15:20', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (97, 39, 'KC1638432023', '2021-12-02', '2021-12-02', '2860000.00', '2860000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-02 08:00:23', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (98, 12, 'KC1638433089', '2021-12-02', '2021-12-02', '13050000.00', '13050000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-02 08:18:09', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (99, 36, 'KC1638514893', '2021-12-03', '2021-12-03', '900000.00', '900000.00', 0, '578000', '0', 'MIN KG ', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-03 07:01:33', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (100, 12, 'KC1638528148', '2021-12-03', '2021-12-03', '14016000.00', '14016000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-03 10:42:28', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (101, 33, 'KC1638938457', '2021-12-08', '2021-12-08', '2295000.00', '2295000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-08 04:40:57', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (102, 13, 'KC1639235004', '2021-12-11', '2021-12-11', '3534000.00', '3534000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-11 15:03:24', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (103, 15, 'KC1639303889', '2021-12-12', '2021-12-12', '8812750.00', '8812750.00', 0, '472750', '0', 'Ongkir Dakota', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-12 10:11:29', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (104, 11, 'KC1639304684', '2021-12-12', '2021-12-12', '6367600.00', '6367600.00', 0, '0', '307600', 'MPS', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-12 10:24:44', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (105, 12, 'KC1639306843', '2021-12-12', '2021-12-12', '5162000.00', '5162000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-12 11:00:43', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (106, 33, 'KC1639560865', '2021-12-15', '2021-12-15', '3450000.00', '3450000.00', 0, '75000', '0', 'Delivery', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-15 09:34:25', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (107, 12, 'KC1639561057', '2021-12-15', '2021-12-15', '12122000.00', '12122000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-15 09:37:37', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (108, 40, 'KC1639978677', '2021-12-20', '2021-12-20', '4118000.00', '4118000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-20 05:37:57', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (109, 12, 'KC1639987524', '2021-12-20', '2021-12-20', '16988000.00', '16988000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-20 08:05:24', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (110, 22, 'KC1639987673', '2021-12-20', '2021-12-20', '1250000.00', '1250000.00', 0, '75000', '0', 'Min 5 KG', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-20 08:07:53', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (111, 23, 'KC1639991218', '2021-12-20', '2021-12-20', '5190000.00', '5190000.00', 0, '150000', '0', 'Delivery ', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-20 09:06:58', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (112, 34, 'KC1639991574', '2021-12-20', '2021-12-20', '7370000000000001.00', '7370000000000001.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-20 09:12:54', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (113, 36, 'KC1640337113', '2021-12-24', '2021-12-24', '4024400.00', '4024400.00', 0, '1014400', '0', 'ONGKIR CHIN 228rmb, MIN CBM 0,5', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-24 09:11:53', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (114, 42, 'KC1640575707', '2021-12-27', '2021-12-27', '3750000.00', '3750000.00', 0, '2475000', '0', 'MIN CBM 0,5CBM', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-27 03:28:27', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (115, 43, 'KC1640848047', '2021-12-30', '2021-12-30', '2500000.00', '2500000.00', 0, '0', '0', '', 2, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2021-12-30 07:07:27', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (116, 24, 'KC1641181704', '2022-01-03', NULL, '73935000.00', '73935000.00', 0, '3350000', '0', 'EXW USD 200 + FORKLIFT 350.000', 1, 0, 'Pelunasan terlebih dahulu sebelum pengiriman / pengambilan barang ', '2022-01-03 03:48:24', 'admin', '2022-02-14 14:29:35', 'sahyudi');
INSERT INTO `invoice` VALUES (117, 28, 'KC1641322209', '2022-01-04', NULL, '7960500.00', '7960500.00', 0, '150000', '0', 'delivery', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-04 18:50:09', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (118, 37, 'KC1641322326', '2022-01-04', NULL, '12900000.00', '12900000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-04 18:52:06', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (119, 11, 'KC1641322371', '2022-01-04', NULL, '4260000.00', '4260000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-04 18:52:51', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (120, 22, 'KC1641322467', '2022-01-04', NULL, '3125000.00', '3125000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-04 18:54:27', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (122, 22, 'KC1641535800', '2022-01-07', NULL, '4375000.00', '4375000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-07 06:10:00', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (123, 11, 'KC1641536125', '2022-01-07', NULL, '4547800.00', '4547800.00', 0, '0', '347800', 'Ongkir (196.900+150.900)', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-07 06:15:25', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (124, 32, 'KC1641970335', '2022-01-12', NULL, '4900000.00', '4900000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-12 06:52:15', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (125, 19, 'KC1642047626', '2022-01-13', NULL, '65623000.00', '65623000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-13 04:20:26', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (126, 31, 'KC1642225946', '2022-01-15', NULL, '9650000.00', '9650000.00', 0, '2275000', '0', 'MIN CBM AIDRIG ', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-15 05:52:26', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (127, 33, 'KC1642480796', '2022-01-18', NULL, '1845000.00', '1845000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-18 04:39:56', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (128, 32, 'KC1642482645', '2022-01-18', NULL, '2550000.00', '2550000.00', 0, '150000', '0', 'delivery', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-18 05:10:45', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (129, 22, 'KC1642567036', '2022-01-19', NULL, '4591000.00', '4591000.00', 0, '0', '391000', 'EKSPEDISI CHINA 170RMB', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-19 04:37:16', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (130, 42, 'KC1642571277', '2022-01-19', NULL, '7500000.00', '6600000.00', 12, '4125000', '0', 'Min CBM 2x ', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-19 05:47:57', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (131, 42, 'KC1642571808', '2022-01-19', NULL, '7500000.00', '7005000.00', 7, '4125000', '0', 'Min CBM ', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-19 05:56:48', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (132, 11, 'KC1642583591', '2022-01-19', NULL, '8745100.00', '8745100.00', 0, '525100', '0', 'MPS', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-19 09:13:11', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (133, 44, 'KC1643263005', '2022-01-27', NULL, '1560000.00', '1560000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-27 05:56:45', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (134, 45, 'KC1643274968', '2022-01-27', NULL, '705000.00', '705000.00', 0, '211500', '0', 'Min 3 kg ', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-27 09:16:08', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (135, 35, 'KC1643358051', '2022-01-28', NULL, '3360000.00', '3360000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-28 08:20:51', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (136, 22, 'KC1643359390', '2022-01-28', NULL, '2500000.00', '2500000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-28 08:43:10', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (137, 12, 'KC1643359895', '2022-01-28', NULL, '22106000.00', '22106000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-01-28 08:51:35', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (138, 33, 'KC1643984173', '2022-02-04', NULL, '1125000.00', '1125000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-02-04 14:16:13', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (139, 34, 'KC1644210046', '2022-02-07', NULL, '5220000.00', '5220000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-02-07 05:00:46', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (141, 34, 'KC1644995579', '2022-02-16', NULL, '14606000.00', '14606000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-02-16 07:12:59', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (142, 23, 'KC1645023968', '2022-02-16', NULL, '14758000.00', '14758000.00', 0, '0', '0', '', 1, 0, 'Harap melakukan pelunasan terlebih dahulu sebelum pengambilan barang', '2022-02-16 15:06:08', 'admin', '2022-02-17 01:16:13', NULL);
INSERT INTO `invoice` VALUES (143, 38, 'KC1645075561', '2022-02-17', NULL, '54000000.00', '54000000.00', 0, '0', '0', '', 1, 0, '', '2022-02-17 05:26:01', 'admin', '2022-02-17 05:26:01', NULL);
INSERT INTO `invoice` VALUES (144, 12, 'KC1645077328', '2022-02-17', NULL, '22156000.00', '22156000.00', 0, '0', '0', '', 1, 0, '', '2022-02-17 05:55:28', 'admin', '2022-02-17 05:55:28', NULL);
INSERT INTO `invoice` VALUES (145, 46, 'KC1645431245', '2022-02-21', NULL, '7872000.00', '7872000.00', 0, '0', '0', '', 1, 0, '', '2022-02-21 08:14:05', 'admin', '2022-02-21 08:14:05', NULL);
INSERT INTO `invoice` VALUES (146, 28, 'KC1645431411', '2022-02-21', NULL, '18907500.00', '18907500.00', 0, '0', '0', '', 1, 0, '', '2022-02-21 08:16:51', 'admin', '2022-02-21 08:16:51', NULL);
INSERT INTO `invoice` VALUES (147, 15, 'KC1645433453', '2022-02-21', NULL, '3150000.00', '3150000.00', 0, '0', '0', '', 1, 0, '', '2022-02-21 08:50:53', 'admin', '2022-02-21 08:50:53', NULL);
INSERT INTO `invoice` VALUES (148, 37, 'KC1645433663', '2022-02-21', NULL, '7140000.00', '7140000.00', 0, '0', '0', '', 1, 0, '', '2022-02-21 08:54:23', 'admin', '2022-02-21 08:54:23', NULL);
INSERT INTO `invoice` VALUES (149, 11, 'KC1645682949', '2022-02-24', NULL, '3204600.00', '3204600.00', 0, '0', '0', '', 1, 0, '', '2022-02-24 06:09:09', 'admin', '2022-02-24 06:09:09', NULL);
INSERT INTO `invoice` VALUES (150, 15, 'KC1645683201', '2022-02-24', NULL, '2940000.00', '2940000.00', 0, '0', '0', '', 1, 0, '', '2022-02-24 06:13:21', 'admin', '2022-02-24 06:13:21', NULL);
INSERT INTO `invoice` VALUES (151, 22, 'KC1645683441', '2022-02-24', NULL, '3748400.00', '3748400.00', 0, '0', '0', '', 1, 0, '', '2022-02-24 06:17:21', 'admin', '2022-02-24 06:17:21', NULL);
INSERT INTO `invoice` VALUES (152, 47, 'KC1645775631', '2022-02-25', NULL, '2153500.00', '2153500.00', 0, '0', '0', '', 1, 0, '', '2022-02-25 07:53:51', 'admin', '2022-02-25 07:53:51', NULL);
INSERT INTO `invoice` VALUES (153, 36, 'KC1645798221', '2022-02-25', NULL, '4485000.00', '4485000.00', 0, '0', '0', '', 1, 0, '', '2022-02-25 14:10:21', 'admin', '2022-02-25 14:10:21', NULL);
INSERT INTO `invoice` VALUES (154, 50, 'KC1645838628', '2022-02-26', NULL, '2711600.00', '2711600.00', 0, '0', '0', '', 1, 0, '', '2022-02-26 01:23:48', 'admin', '2022-02-26 01:23:48', NULL);
INSERT INTO `invoice` VALUES (155, 10, 'KC1646109992', '2022-03-01', NULL, '1150000.00', '1150000.00', 0, '0', '0', '', 1, 0, '', '2022-03-01 04:46:32', 'admin', '2022-03-01 04:46:32', NULL);
INSERT INTO `invoice` VALUES (156, 32, 'KC1646204654', '2022-03-02', NULL, '5180000.00', '5180000.00', 0, '0', '0', '', 1, 0, '', '2022-03-02 07:04:14', 'admin', '2022-03-02 07:04:14', NULL);

-- ----------------------------
-- Table structure for invoice_profit
-- ----------------------------
DROP TABLE IF EXISTS `invoice_profit`;
CREATE TABLE `invoice_profit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `jenis` enum('PROFIT','NON PROFIT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'PROFIT',
  `jumlah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `catatan` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE,
  CONSTRAINT `invoice_profit_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_profit
-- ----------------------------
INSERT INTO `invoice_profit` VALUES (1, 21, 'PROFIT', '150000', 'Delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (2, 22, 'NON PROFIT', '173300', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (3, 24, 'NON PROFIT', '675900', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (4, 28, 'PROFIT', '100000', '', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (5, 29, 'PROFIT', '50000', 'delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (6, 32, 'PROFIT', '1875000', 'min cbm+ delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (7, 33, 'PROFIT', '1875000', 'cbm+delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (8, 36, 'NON PROFIT', '320000', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (9, 38, 'PROFIT', '1050000', 'Min CBM ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (10, 39, 'PROFIT', '1810000', 'Min Cbm+ delivery ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (11, 43, 'PROFIT', '1822000', 'Min cbm + SGD 115', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (12, 46, 'PROFIT', '1664000', 'Minimal cbm + Forklift', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (13, 47, 'PROFIT', '200000', 'Estimasi Ongkir JNE', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (14, 51, 'NON PROFIT', '200000', 'Estimasi Ongkir JNE', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (15, 54, 'NON PROFIT', '168000', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (16, 56, 'PROFIT', '350000', 'Forklift', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (17, 57, 'PROFIT', '300000', 'Trucking Mobil Besar', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (18, 59, 'NON PROFIT', '37000', 'GRAB SEND', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (19, 62, 'PROFIT', '150000', 'Delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (20, 65, 'PROFIT', '147000', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (21, 68, 'PROFIT', '150000', 'Delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (22, 69, 'PROFIT', '1898000', 'Minimal cbm 0,5 cbm ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (23, 73, 'PROFIT', '490000', 'Minimal CBM ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (24, 75, 'PROFIT', '950000', 'Forklift (350.000)+ Sewa Mobil (600.000)', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (25, 76, 'PROFIT', '864000', 'ONGKIR JNE (36.000) + Min KG (828.000)', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (26, 77, 'PROFIT', '360000', 'Minimal CBM', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (27, 79, 'NON PROFIT', '643300', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (28, 81, 'NON PROFIT', '55000', 'GRAB SEND', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (29, 86, 'PROFIT', '350000', 'Forklift', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (30, 88, 'PROFIT', '658000', 'Min KG + jne 20.000', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (31, 89, 'PROFIT', '900000', 'Kena min KG', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (32, 91, 'PROFIT', '2240000', 'MIN CBM', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (33, 92, 'PROFIT', '149600', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (34, 96, 'NON PROFIT', '532075', 'Pick Up (474.075) + Grab ( 58.000)', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (35, 99, 'PROFIT', '578000', 'MIN KG ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (36, 103, 'PROFIT', '472750', 'Ongkir Dakota', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (37, 104, 'NON PROFIT', '307600', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (38, 106, 'PROFIT', '75000', 'Delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (39, 110, 'PROFIT', '75000', 'Min 5 KG', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (40, 111, 'PROFIT', '150000', 'Delivery ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (41, 113, 'PROFIT', '1014400', 'ONGKIR CHIN 228rmb, MIN CBM 0,5', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (42, 114, 'PROFIT', '2475000', 'MIN CBM 0,5CBM', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (43, 116, 'PROFIT', '3350000', 'EXW USD 200 + FORKLIFT 350.000', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (44, 117, 'PROFIT', '150000', 'delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (45, 123, 'NON PROFIT', '347800', 'Ongkir (196.900+150.900)', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (46, 126, 'PROFIT', '2275000', 'MIN CBM AIDRIG ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (47, 128, 'PROFIT', '150000', 'delivery', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (48, 129, 'NON PROFIT', '391000', 'EKSPEDISI CHINA 170RMB', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (49, 130, 'PROFIT', '4125000', 'Min CBM 2x ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (50, 131, 'PROFIT', '4125000', 'Min CBM ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (51, 132, 'PROFIT', '525100', 'MPS', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (52, 134, 'PROFIT', '211500', 'Min 3 kg ', '2022-02-14 07:16:53', NULL, '2022-02-14 07:16:53', NULL);
INSERT INTO `invoice_profit` VALUES (55, 142, NULL, '450000', 'Delivery Bogor ', '2022-02-16 15:06:08', NULL, '2022-02-16 15:06:08', NULL);
INSERT INTO `invoice_profit` VALUES (56, 146, NULL, '150000', 'Delivery', '2022-02-21 08:16:51', NULL, '2022-02-21 08:16:51', NULL);
INSERT INTO `invoice_profit` VALUES (57, 149, NULL, '204600', 'MPS', '2022-02-24 06:09:09', NULL, '2022-02-24 06:09:09', NULL);
INSERT INTO `invoice_profit` VALUES (58, 151, NULL, '2520000', 'MIN CBM', '2022-02-24 06:17:21', NULL, '2022-02-24 06:17:21', NULL);
INSERT INTO `invoice_profit` VALUES (59, 151, NULL, '248400', 'Biaya Ongkir Gudang China', '2022-02-24 06:17:21', NULL, '2022-02-24 06:17:21', NULL);
INSERT INTO `invoice_profit` VALUES (60, 152, NULL, '250000', 'ESTIMASI JNE', '2022-02-25 07:53:51', NULL, '2022-02-25 07:53:51', NULL);
INSERT INTO `invoice_profit` VALUES (61, 154, NULL, '230000', 'ESTIMASI JNT', '2022-02-26 01:23:48', NULL, '2022-02-26 01:23:48', NULL);

-- ----------------------------
-- Table structure for invoice_trans
-- ----------------------------
DROP TABLE IF EXISTS `invoice_trans`;
CREATE TABLE `invoice_trans`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NULL DEFAULT NULL,
  `trans_id` int NULL DEFAULT NULL,
  `catatan` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE,
  INDEX `trans_id`(`trans_id` ASC) USING BTREE,
  CONSTRAINT `invoice_trans_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_trans_ibfk_2` FOREIGN KEY (`trans_id`) REFERENCES `transactions` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_trans
-- ----------------------------
INSERT INTO `invoice_trans` VALUES (6, 21, 23, NULL);
INSERT INTO `invoice_trans` VALUES (7, 21, 24, NULL);
INSERT INTO `invoice_trans` VALUES (8, 21, 25, NULL);
INSERT INTO `invoice_trans` VALUES (9, 21, 28, NULL);
INSERT INTO `invoice_trans` VALUES (10, 21, 29, NULL);
INSERT INTO `invoice_trans` VALUES (11, 22, 31, NULL);
INSERT INTO `invoice_trans` VALUES (12, 23, 36, NULL);
INSERT INTO `invoice_trans` VALUES (13, 24, 32, NULL);
INSERT INTO `invoice_trans` VALUES (14, 24, 42, NULL);
INSERT INTO `invoice_trans` VALUES (15, 25, 48, NULL);
INSERT INTO `invoice_trans` VALUES (16, 26, 49, NULL);
INSERT INTO `invoice_trans` VALUES (17, 27, 55, NULL);
INSERT INTO `invoice_trans` VALUES (20, 30, 52, NULL);
INSERT INTO `invoice_trans` VALUES (21, 30, 62, NULL);
INSERT INTO `invoice_trans` VALUES (22, 31, 63, NULL);
INSERT INTO `invoice_trans` VALUES (23, 32, 64, NULL);
INSERT INTO `invoice_trans` VALUES (24, 33, 64, NULL);
INSERT INTO `invoice_trans` VALUES (25, 34, 65, NULL);
INSERT INTO `invoice_trans` VALUES (26, 35, 65, NULL);
INSERT INTO `invoice_trans` VALUES (27, 35, 66, NULL);
INSERT INTO `invoice_trans` VALUES (28, 36, 34, NULL);
INSERT INTO `invoice_trans` VALUES (29, 37, 67, NULL);
INSERT INTO `invoice_trans` VALUES (30, 37, 68, NULL);
INSERT INTO `invoice_trans` VALUES (31, 38, 69, NULL);
INSERT INTO `invoice_trans` VALUES (32, 38, 70, NULL);
INSERT INTO `invoice_trans` VALUES (33, 39, 71, NULL);
INSERT INTO `invoice_trans` VALUES (34, 40, 75, NULL);
INSERT INTO `invoice_trans` VALUES (37, 43, 76, NULL);
INSERT INTO `invoice_trans` VALUES (38, 44, 77, NULL);
INSERT INTO `invoice_trans` VALUES (39, 45, 37, NULL);
INSERT INTO `invoice_trans` VALUES (40, 45, 38, NULL);
INSERT INTO `invoice_trans` VALUES (41, 46, 80, NULL);
INSERT INTO `invoice_trans` VALUES (42, 47, 82, NULL);
INSERT INTO `invoice_trans` VALUES (43, 48, 83, NULL);
INSERT INTO `invoice_trans` VALUES (44, 49, 84, NULL);
INSERT INTO `invoice_trans` VALUES (45, 50, 95, NULL);
INSERT INTO `invoice_trans` VALUES (46, 51, 96, NULL);
INSERT INTO `invoice_trans` VALUES (47, 52, 30, NULL);
INSERT INTO `invoice_trans` VALUES (48, 53, 97, NULL);
INSERT INTO `invoice_trans` VALUES (49, 53, 98, NULL);
INSERT INTO `invoice_trans` VALUES (50, 54, 72, NULL);
INSERT INTO `invoice_trans` VALUES (51, 55, 92, NULL);
INSERT INTO `invoice_trans` VALUES (52, 56, 30, NULL);
INSERT INTO `invoice_trans` VALUES (53, 57, 101, NULL);
INSERT INTO `invoice_trans` VALUES (54, 57, 102, NULL);
INSERT INTO `invoice_trans` VALUES (55, 57, 103, NULL);
INSERT INTO `invoice_trans` VALUES (56, 58, 91, NULL);
INSERT INTO `invoice_trans` VALUES (57, 58, 104, NULL);
INSERT INTO `invoice_trans` VALUES (58, 59, 94, NULL);
INSERT INTO `invoice_trans` VALUES (59, 60, 106, NULL);
INSERT INTO `invoice_trans` VALUES (60, 61, 39, NULL);
INSERT INTO `invoice_trans` VALUES (61, 61, 93, NULL);
INSERT INTO `invoice_trans` VALUES (62, 62, 89, NULL);
INSERT INTO `invoice_trans` VALUES (63, 63, 109, NULL);
INSERT INTO `invoice_trans` VALUES (64, 64, 45, NULL);
INSERT INTO `invoice_trans` VALUES (65, 65, 74, NULL);
INSERT INTO `invoice_trans` VALUES (66, 66, 90, NULL);
INSERT INTO `invoice_trans` VALUES (67, 66, 110, NULL);
INSERT INTO `invoice_trans` VALUES (68, 67, 85, NULL);
INSERT INTO `invoice_trans` VALUES (69, 68, 86, NULL);
INSERT INTO `invoice_trans` VALUES (70, 68, 87, NULL);
INSERT INTO `invoice_trans` VALUES (73, 68, 111, NULL);
INSERT INTO `invoice_trans` VALUES (74, 68, 112, NULL);
INSERT INTO `invoice_trans` VALUES (75, 68, 113, NULL);
INSERT INTO `invoice_trans` VALUES (76, 68, 114, NULL);
INSERT INTO `invoice_trans` VALUES (77, 68, 115, NULL);
INSERT INTO `invoice_trans` VALUES (78, 68, 117, NULL);
INSERT INTO `invoice_trans` VALUES (79, 69, 120, NULL);
INSERT INTO `invoice_trans` VALUES (80, 70, 121, NULL);
INSERT INTO `invoice_trans` VALUES (81, 71, 88, NULL);
INSERT INTO `invoice_trans` VALUES (82, 72, 122, NULL);
INSERT INTO `invoice_trans` VALUES (83, 73, 123, NULL);
INSERT INTO `invoice_trans` VALUES (84, 74, 124, NULL);
INSERT INTO `invoice_trans` VALUES (85, 74, 125, NULL);
INSERT INTO `invoice_trans` VALUES (86, 75, 108, NULL);
INSERT INTO `invoice_trans` VALUES (87, 76, 129, NULL);
INSERT INTO `invoice_trans` VALUES (88, 77, 107, NULL);
INSERT INTO `invoice_trans` VALUES (89, 78, 132, NULL);
INSERT INTO `invoice_trans` VALUES (90, 79, 133, NULL);
INSERT INTO `invoice_trans` VALUES (91, 80, 134, NULL);
INSERT INTO `invoice_trans` VALUES (92, 81, 135, NULL);
INSERT INTO `invoice_trans` VALUES (93, 82, 136, NULL);
INSERT INTO `invoice_trans` VALUES (94, 83, 116, NULL);
INSERT INTO `invoice_trans` VALUES (95, 83, 137, NULL);
INSERT INTO `invoice_trans` VALUES (96, 83, 138, NULL);
INSERT INTO `invoice_trans` VALUES (97, 84, 139, NULL);
INSERT INTO `invoice_trans` VALUES (98, 85, 140, NULL);
INSERT INTO `invoice_trans` VALUES (99, 86, 118, NULL);
INSERT INTO `invoice_trans` VALUES (100, 87, 126, NULL);
INSERT INTO `invoice_trans` VALUES (101, 87, 141, NULL);
INSERT INTO `invoice_trans` VALUES (102, 88, 142, NULL);
INSERT INTO `invoice_trans` VALUES (103, 89, 143, NULL);
INSERT INTO `invoice_trans` VALUES (104, 90, 145, NULL);
INSERT INTO `invoice_trans` VALUES (105, 91, 146, NULL);
INSERT INTO `invoice_trans` VALUES (106, 92, 147, NULL);
INSERT INTO `invoice_trans` VALUES (107, 93, 148, NULL);
INSERT INTO `invoice_trans` VALUES (108, 94, 144, NULL);
INSERT INTO `invoice_trans` VALUES (109, 95, 145, NULL);
INSERT INTO `invoice_trans` VALUES (110, 96, 153, NULL);
INSERT INTO `invoice_trans` VALUES (111, 97, 155, NULL);
INSERT INTO `invoice_trans` VALUES (112, 98, 157, NULL);
INSERT INTO `invoice_trans` VALUES (113, 99, 169, NULL);
INSERT INTO `invoice_trans` VALUES (114, 100, 171, NULL);
INSERT INTO `invoice_trans` VALUES (115, 100, 172, NULL);
INSERT INTO `invoice_trans` VALUES (116, 101, 173, NULL);
INSERT INTO `invoice_trans` VALUES (117, 102, 127, NULL);
INSERT INTO `invoice_trans` VALUES (118, 102, 174, NULL);
INSERT INTO `invoice_trans` VALUES (119, 102, 175, NULL);
INSERT INTO `invoice_trans` VALUES (120, 103, 176, NULL);
INSERT INTO `invoice_trans` VALUES (121, 103, 177, NULL);
INSERT INTO `invoice_trans` VALUES (122, 104, 178, NULL);
INSERT INTO `invoice_trans` VALUES (123, 105, 179, NULL);
INSERT INTO `invoice_trans` VALUES (124, 106, 180, NULL);
INSERT INTO `invoice_trans` VALUES (125, 107, 181, NULL);
INSERT INTO `invoice_trans` VALUES (126, 108, 168, NULL);
INSERT INTO `invoice_trans` VALUES (127, 109, 192, NULL);
INSERT INTO `invoice_trans` VALUES (128, 109, 194, NULL);
INSERT INTO `invoice_trans` VALUES (129, 110, 193, NULL);
INSERT INTO `invoice_trans` VALUES (130, 111, 195, NULL);
INSERT INTO `invoice_trans` VALUES (131, 112, 159, NULL);
INSERT INTO `invoice_trans` VALUES (132, 113, 196, NULL);
INSERT INTO `invoice_trans` VALUES (133, 114, 198, NULL);
INSERT INTO `invoice_trans` VALUES (134, 115, 199, NULL);
INSERT INTO `invoice_trans` VALUES (135, 116, 200, NULL);
INSERT INTO `invoice_trans` VALUES (136, 117, 170, NULL);
INSERT INTO `invoice_trans` VALUES (137, 118, 151, NULL);
INSERT INTO `invoice_trans` VALUES (138, 119, 152, NULL);
INSERT INTO `invoice_trans` VALUES (142, 122, 205, NULL);
INSERT INTO `invoice_trans` VALUES (143, 123, 206, NULL);
INSERT INTO `invoice_trans` VALUES (144, 124, 130, NULL);
INSERT INTO `invoice_trans` VALUES (145, 125, 211, NULL);
INSERT INTO `invoice_trans` VALUES (146, 125, 212, NULL);
INSERT INTO `invoice_trans` VALUES (147, 126, 166, NULL);
INSERT INTO `invoice_trans` VALUES (148, 126, 202, NULL);
INSERT INTO `invoice_trans` VALUES (149, 127, 213, NULL);
INSERT INTO `invoice_trans` VALUES (150, 128, 214, NULL);
INSERT INTO `invoice_trans` VALUES (151, 129, 215, NULL);
INSERT INTO `invoice_trans` VALUES (154, 131, 218, NULL);
INSERT INTO `invoice_trans` VALUES (155, 131, 219, NULL);
INSERT INTO `invoice_trans` VALUES (156, 132, 220, NULL);
INSERT INTO `invoice_trans` VALUES (157, 133, 221, NULL);
INSERT INTO `invoice_trans` VALUES (158, 134, 222, NULL);
INSERT INTO `invoice_trans` VALUES (159, 135, 149, NULL);
INSERT INTO `invoice_trans` VALUES (160, 135, 156, NULL);
INSERT INTO `invoice_trans` VALUES (161, 136, 223, NULL);
INSERT INTO `invoice_trans` VALUES (162, 137, 162, NULL);
INSERT INTO `invoice_trans` VALUES (163, 137, 224, NULL);
INSERT INTO `invoice_trans` VALUES (164, 138, 225, NULL);
INSERT INTO `invoice_trans` VALUES (165, 139, 204, NULL);
INSERT INTO `invoice_trans` VALUES (167, 141, 158, NULL);
INSERT INTO `invoice_trans` VALUES (168, 142, 226, NULL);
INSERT INTO `invoice_trans` VALUES (169, 143, 154, NULL);
INSERT INTO `invoice_trans` VALUES (170, 144, 227, NULL);
INSERT INTO `invoice_trans` VALUES (171, 145, 228, NULL);
INSERT INTO `invoice_trans` VALUES (172, 146, 160, NULL);
INSERT INTO `invoice_trans` VALUES (173, 147, 229, NULL);
INSERT INTO `invoice_trans` VALUES (174, 148, 230, NULL);
INSERT INTO `invoice_trans` VALUES (175, 149, 232, NULL);
INSERT INTO `invoice_trans` VALUES (176, 150, 231, NULL);
INSERT INTO `invoice_trans` VALUES (177, 151, 233, NULL);
INSERT INTO `invoice_trans` VALUES (178, 152, 234, NULL);
INSERT INTO `invoice_trans` VALUES (179, 153, 236, NULL);
INSERT INTO `invoice_trans` VALUES (180, 154, 237, NULL);
INSERT INTO `invoice_trans` VALUES (181, 155, 238, NULL);
INSERT INTO `invoice_trans` VALUES (182, 156, 240, NULL);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `order` int NULL DEFAULT NULL,
  `role` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[\"read\"]',
  `is_active` int NULL DEFAULT 1,
  `is_deleted` int NULL DEFAULT 0,
  `craeted_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 0, 'Dashboard', 'dashboard', 'fas fa-tachometer-alt', 0, 0, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:52:35', 'sahyudi', '2021-12-22 05:52:35', NULL);
INSERT INTO `menus` VALUES (2, 0, 'Invoice', 'invoice', 'fas fa-file-invoice', 0, 1, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', 1, 0, '2021-12-22 05:53:44', 'sahyudi', '2021-12-24 22:49:21', 'sahyudi');
INSERT INTO `menus` VALUES (3, 0, 'Customer', 'customer', 'fas fa-users', 0, 2, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', 1, 0, '2021-12-22 05:54:41', 'sahyudi', '2021-12-24 22:27:47', 'sahyudi');
INSERT INTO `menus` VALUES (4, 0, 'Harga', 'price', 'fas fa-tags', 0, 3, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:56:10', 'sahyudi', '2021-12-22 05:56:10', NULL);
INSERT INTO `menus` VALUES (5, 0, 'Laporan', 'report', 'fas fa-file-archive', 0, 4, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', 1, 0, '2021-12-22 05:56:38', 'sahyudi', '2021-12-24 22:11:33', 'sahyudi');
INSERT INTO `menus` VALUES (6, 0, 'Tracking', 'tracking', 'fas fa-truck-moving', 0, 5, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:57:25', 'sahyudi', '2021-12-22 05:57:25', NULL);
INSERT INTO `menus` VALUES (7, 0, 'Rek. Bank', 'bank', 'fas fa-university', 0, 6, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:57:55', 'sahyudi', '2021-12-22 05:57:55', NULL);
INSERT INTO `menus` VALUES (8, 0, 'Users', 'user', 'fas fa-users-cog', 0, 7, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:58:48', 'sahyudi', '2021-12-22 05:58:48', NULL);
INSERT INTO `menus` VALUES (9, 0, 'Role', 'role', 'fas fa-user-tag', 0, 8, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 06:00:35', 'sahyudi', '2021-12-22 06:00:43', 'sahyudi');
INSERT INTO `menus` VALUES (10, 0, 'Laporan Tahunan', 'report/annual', 'fas fa-file-invoice', 0, 5, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-01-28 22:54:48', 'sahyudi', '2022-01-29 00:28:36', 'testadmin');
INSERT INTO `menus` VALUES (11, 0, 'Payment', 'payment', 'fas fa-money-check', 0, 1, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-02-17 02:19:41', 'sahyudi', '2022-02-17 02:19:41', NULL);

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `modal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga_jual` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES (5, 'SEA INDIRECT', '5000000', '5500000', '2021-07-21 10:18:27', 'admin');
INSERT INTO `price` VALUES (6, 'INDIRECT TUBE', '5000000', '5800000', '2021-07-21 10:26:18', 'admin');
INSERT INTO `price` VALUES (7, 'SEA INDIRECT GENERAL', '4250000', '4700000', '2021-07-27 10:40:30', 'admin');
INSERT INTO `price` VALUES (8, 'SEA ', '5000000', '6000000', '2021-07-21 11:05:11', 'admin');
INSERT INTO `price` VALUES (9, 'SEA INDIRECT', '5000000', '5800000', '2021-07-21 16:36:01', 'admin');
INSERT INTO `price` VALUES (10, 'SEA INDIRECT', '4250000', '5700000', '2021-07-21 16:56:51', 'admin');
INSERT INTO `price` VALUES (11, 'SEA DIRECT', '6000000', '7000000', '2021-07-25 17:41:18', 'admin');
INSERT INTO `price` VALUES (12, 'SPORE SEA', '7800000', '8950000', '2021-07-26 06:53:48', 'admin');
INSERT INTO `price` VALUES (13, 'SPORE AIR', '175000', '215000', '2021-07-26 06:53:33', 'admin');
INSERT INTO `price` VALUES (14, 'KOREA SEA', '13000000', '13700000', '2021-07-26 08:45:14', 'admin');
INSERT INTO `price` VALUES (15, 'AIR CHINA', '190000', '220000', '2021-07-26 14:23:50', 'admin');
INSERT INTO `price` VALUES (16, 'SEA DIRECT', '6000000', '6700000', '2021-07-26 14:28:20', 'admin');
INSERT INTO `price` VALUES (17, 'SEA', '4250000', '4800000', '2021-07-27 05:53:26', 'admin');
INSERT INTO `price` VALUES (18, 'SEA-SHOES', '4000000', '4800000', '2021-07-27 10:08:47', 'admin');
INSERT INTO `price` VALUES (19, 'SEA INDIRECT G', '4250000', '6000000', '2021-07-27 10:41:13', 'admin');
INSERT INTO `price` VALUES (20, 'AIR CHINA', '190000', '250000', '2021-07-30 14:56:02', 'admin');
INSERT INTO `price` VALUES (21, 'SEA DIRECT', '6000000', '7000000', '2021-08-03 08:23:09', 'admin');
INSERT INTO `price` VALUES (22, 'SEA DIRECT', '6000000', '7300000', '2021-08-03 09:16:30', 'admin');
INSERT INTO `price` VALUES (23, 'SEA SPORE', '7800000', '9000000', '2021-08-04 08:21:56', 'admin');
INSERT INTO `price` VALUES (24, 'SEA DIRECT', '6000000', '7200000', '2021-08-05 13:47:43', 'admin');
INSERT INTO `price` VALUES (25, 'SEA DIRECT', '6000000', '7300000', '2021-08-17 18:36:56', 'admin');
INSERT INTO `price` VALUES (26, 'AIR CHINA', '190000', '230000', '2021-08-17 18:50:04', 'admin');
INSERT INTO `price` VALUES (27, 'SEA CHINA LARTAS', '5000000', '6700000', '2021-08-23 07:59:16', 'admin');
INSERT INTO `price` VALUES (28, 'AIR KOREA', '125000', '245000', '2021-08-23 08:08:13', 'admin');
INSERT INTO `price` VALUES (29, 'SEA CHINA', '5000000', '6300000', '2021-08-30 05:09:48', 'admin');
INSERT INTO `price` VALUES (30, 'SEA INDIRECT', '5000000', '6150000', '2021-08-30 09:12:24', 'admin');
INSERT INTO `price` VALUES (31, 'AIR CHINA', '190000', '240000', '2021-08-31 10:16:42', 'admin');
INSERT INTO `price` VALUES (32, 'AIR CHINA MIN 20KG', '190000', '210000', '2021-09-09 07:54:05', 'admin');
INSERT INTO `price` VALUES (33, 'SEA INDIRECT', '5000000', '5900000', '2021-09-17 06:12:50', 'admin');
INSERT INTO `price` VALUES (34, 'SEA INDIRECT', '5000000', '5900000', '2021-09-17 06:12:51', 'admin');
INSERT INTO `price` VALUES (35, 'AIR CHINA OKT', '195000', '210000', '2021-10-19 07:23:16', 'admin');
INSERT INTO `price` VALUES (36, 'AIR CHINA OCT', '195000', '230000', '2021-10-19 07:23:48', 'admin');
INSERT INTO `price` VALUES (37, 'AIR CHINA', '195000', '225000', '2021-11-15 06:24:42', 'admin');
INSERT INTO `price` VALUES (38, 'KOREA SEA', '13000000', '14000000', '2021-11-19 17:50:34', 'admin');
INSERT INTO `price` VALUES (39, 'CHINA SEA NOV ', '5800000', '7000000', '2021-11-19 17:50:56', 'admin');
INSERT INTO `price` VALUES (40, 'SEA INDRIECT G', '4250000', '5800000', '2021-11-25 06:38:39', 'admin');
INSERT INTO `price` VALUES (41, 'AIR SG', '175000', '230000', '2021-11-25 10:12:54', 'admin');
INSERT INTO `price` VALUES (42, 'SEA INDIRECT G', '4250000', '5500000', '2021-12-02 07:58:33', 'admin');
INSERT INTO `price` VALUES (43, 'GARMENT INDIRECT', '6000000', '6700000', '2021-12-02 15:52:16', 'admin');
INSERT INTO `price` VALUES (44, 'FOOD', '5500000', '6500000', '2021-12-02 16:08:44', 'admin');
INSERT INTO `price` VALUES (45, 'AIR CHINA DES', '200000', '250000', '2021-12-20 07:58:28', 'admin');
INSERT INTO `price` VALUES (46, 'SEA INDIRECT G', '4250000', '5800000', '2021-12-12 10:59:24', 'admin');
INSERT INTO `price` VALUES (47, 'AIR CHINA MIN 20 KG DEC', '200000', '220000', '2021-12-20 07:56:27', 'admin');
INSERT INTO `price` VALUES (48, 'AIR CHINA ', '200000', '250000', '2021-12-20 07:57:48', 'admin');
INSERT INTO `price` VALUES (49, 'AIR CHINA DEC', '200000', '240000', '2021-12-20 09:05:33', 'admin');
INSERT INTO `price` VALUES (50, 'CHINA DIRECT DEC', '5800000', '7000000', '2021-12-24 09:08:27', 'admin');
INSERT INTO `price` VALUES (51, 'SEA CHINA DIRECT DEC', '5800000', '7500000', '2021-12-27 03:24:20', 'admin');
INSERT INTO `price` VALUES (52, 'KOREA AIR', '220000', '250000', '2021-12-30 07:06:23', 'admin');
INSERT INTO `price` VALUES (53, 'SHANGHAI SEA ', '8500000', '9500000', '2022-01-03 03:44:16', 'admin');
INSERT INTO `price` VALUES (54, 'DON 5 JT', '4250000', '5000000', '2022-01-15 05:49:39', 'admin');
INSERT INTO `price` VALUES (55, 'AIR CHINA', '200000', '235000', '2022-01-27 09:09:30', 'admin');
INSERT INTO `price` VALUES (56, 'SEA DIRECT JKT 2022', '5800000', '7300000', '2022-02-16 15:00:34', 'admin');
INSERT INTO `price` VALUES (57, 'AIR SPORE 2022', '175000', '240000', '2022-02-21 08:08:38', 'admin');
INSERT INTO `price` VALUES (58, 'SEA DIRECT 2022', '5800000', '7000000', '2022-02-24 06:15:14', 'admin');
INSERT INTO `price` VALUES (59, 'Textile', '8000000', '8650000', '2022-02-25 14:02:39', 'admin');
INSERT INTO `price` VALUES (60, 'AIR CHINA PW', '247000', '282000', '2022-02-25 14:06:51', 'admin');
INSERT INTO `price` VALUES (61, 'AIR CHINA 2022', '200000', '230000', '2022-02-25 14:09:20', 'admin');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Super Administrator', '2021-08-29 07:12:26', '2021-09-10 06:21:16', 'admin', 'admin');
INSERT INTO `role` VALUES (2, 'Administrator', '2021-08-29 07:13:04', '2021-09-10 06:21:14', 'admin', 'admin');
INSERT INTO `role` VALUES (4, 'accounting check', '2022-02-10 09:11:18', '2022-02-10 09:12:26', 'admin', 'admin');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `role_access` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_id`(`menu_id` ASC) USING BTREE,
  INDEX `user_menu_ibfk_2`(`group_id` ASC) USING BTREE,
  CONSTRAINT `role_menu_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (170, 2, 1, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (171, 2, 11, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (172, 2, 2, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (173, 2, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (174, 2, 4, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (175, 2, 5, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (176, 2, 10, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (177, 2, 6, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (178, 2, 7, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (179, 2, 8, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (180, 2, 9, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:23', 'sahyudi', '2022-02-17 02:24:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (181, 1, 1, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (182, 1, 11, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (183, 1, 2, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (184, 1, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (185, 1, 4, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (186, 1, 5, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (187, 1, 10, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (188, 1, 6, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (189, 1, 7, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (190, 1, 8, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (191, 1, 9, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 02:24:45', 'sahyudi', '2022-02-17 02:24:45', 'sahyudi');
INSERT INTO `role_menu` VALUES (192, 4, 1, '[\"read\"]', '2022-02-17 04:10:40', 'sahyudi', '2022-02-17 04:10:40', 'sahyudi');
INSERT INTO `role_menu` VALUES (193, 4, 11, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 04:10:40', 'sahyudi', '2022-02-17 04:10:40', 'sahyudi');
INSERT INTO `role_menu` VALUES (194, 4, 2, '[\"read\",\"update\"]', '2022-02-17 04:10:40', 'sahyudi', '2022-02-17 04:10:40', 'sahyudi');

-- ----------------------------
-- Table structure for status_tracking
-- ----------------------------
DROP TABLE IF EXISTS `status_tracking`;
CREATE TABLE `status_tracking`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_tracking
-- ----------------------------
INSERT INTO `status_tracking` VALUES (1, 'Barang Diterima', 1);
INSERT INTO `status_tracking` VALUES (2, 'Barang Dalam Proses', 1);
INSERT INTO `status_tracking` VALUES (3, 'Barang Sampai di Jakarta', 1);
INSERT INTO `status_tracking` VALUES (4, 'Pengiriman Selesai', 1);

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `tgl_terima` date NULL DEFAULT NULL,
  `kode` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `marking` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `qty` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '1',
  `price_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `resi` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga_jual` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `harga_modal` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `harga_tambahan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int NULL DEFAULT 1,
  `status_mail` int NOT NULL DEFAULT 0 COMMENT '0 : Belum kirim',
  `status_bayar` enum('BELUM BAYAR','LUNAS','BATAL') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_bayar` date NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 241 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (23, 8, '2021-06-21', '29284', 'RIA', '5', 'SEA INDIRECT', '5', '0.10', '906348079057/906348079056/906348079054/906348079055/906348054334', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 10:21:09', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (24, 8, '2021-06-25', '29084', 'RIA', '6', 'SEA INDIRECT', '5', '0.31', 'JYM800004003034', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 10:23:43', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (25, 8, '0000-00-00', '28988', 'RIA', '1.00', 'INDIRECT TUBE', '6', '0.05', 'YT5568901313715', '5800000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 10:25:29', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (28, 8, '2021-07-07', '30627', 'KENCA/RIA', '7.00', 'INDIRECT TUBE', '6', '0.34', 'BAISHI 80273142716', '5800000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 10:29:46', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (29, 8, '2021-07-19', '32467', 'KENCA/RIA', '5', 'SEA INDIRECT', '5', '0.09', 'DPK200068223420', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 10:33:44', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (30, 10, '2021-07-21', 'Y11909', 'KENCA/FARID', '5.00', 'SEA INDIRECT GENERAL', '7', '10.69', '15945751673', '4700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 10:47:15', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (31, 11, '0000-00-00', 'Y9650', 'KENCA/IMAD', '4.00', 'SEA INDIRECT G', '19', '0.59', '18257950077', '6000000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-07-21 11:06:18', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (32, 11, '2021-06-19', 'Y10029', 'KENCA/IMAD', '9.00', 'SEA INDIRECT G', '19', '2.05', '18757667928', '6000000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-07-21 11:13:35', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (34, 11, '2021-07-02', 'Y11086', 'KENCA/IMAD', '6.00', 'SEA INDIRECT G', '19', '1.87', '18757667928', '6000000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 11:16:25', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (35, 12, '2021-07-16', '32157', 'BUSTAN', '8', 'SEA INDIRECT', '9', '0.63', 'YOUSU518946424902', '5800000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-07-21 16:37:48', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (36, 9, '2021-01-01', '-', 'deb', '2', 'SEA INDIRECT', '5', '0.01', '-', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 16:48:22', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (37, 13, '2021-06-19', 'Y10603', 'JES', '7', 'SEA INDIRECT', '10', '0.56', 'HLL', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 16:58:35', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (38, 13, '2021-06-21', 'Y10672', 'JES', '1.00', 'SEA INDIRECT', '10', '0.09', 'ZT75479342713353', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 16:59:47', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (39, 13, '2021-07-08', 'Y11422', 'JES', '2.00', 'SEA INDIRECT', '10', '0.12', 'HLL', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-21 17:00:47', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (42, 11, '0000-00-00', 'Y10485', 'IMAD', '1.00', 'SEA INDIRECT G', '19', '0.73', 'HLL', '6000000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-07-23 07:11:39', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (45, 15, '2021-07-24', 'Y11999', 'ERL', '1', 'SEA ', '8', '1.53', 'SUPP: WL', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-25 17:21:57', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (46, 16, '2021-07-14', 'KCB/DD/SEA', 'DD', '1', 'SEA DIRECT', '11', '0.02', '1307899541123', '7000000', '6000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-07-25 17:42:38', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (47, 9, '2021-07-15', 'KCB/DEB', 'DEB', '4', 'SEA ', '8', '0.12', '5611968692690 773106519700448 75483688905424 773106968889421, 773108198045457', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-07-25 17:46:24', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (48, 17, '2021-06-15', '27941', 'ASIM', '15', 'SEA INDIRECT', '5', '0.52', 'OVERWEIGHT 257 KG', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-26 05:17:10', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (49, 18, '0000-00-00', 'JOHNSON', 'SAB', '1', 'SPORE SEA', '12', '0.38', '', '8950000', '7800000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-26 06:55:13', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (52, 18, '0000-00-00', 'JOHNSON', 'SAB', '1', 'SPORE AIR', '13', '20.1', '', '215000', '175000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-26 07:01:31', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (55, 19, '0000-00-00', '-', 'KIM/SEA', '3', 'KOREA SEA', '14', '6.65', 'EOS', '13700000', '13000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-07-26 08:46:07', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (62, 18, '0000-00-00', 'SAB/SEA', 'SAB', '1', 'SPORE SEA', '12', '0.41', 'JOHNSON', '8950000', '7800000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-07-26 14:15:48', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (63, 10, '2021-07-21', '-', 'FARID/AIR', '1', 'AIR CHINA', '15', '9', 'SELESAI ', '220000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-07-26 14:24:43', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (64, 20, '2021-07-25', '-', 'MEG/SEA', '1.00', 'SEA DIRECT', '16', '0.25', 'SELESAI', '6700000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-07-26 14:29:28', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (65, 21, '0000-00-00', '29446', 'DANN', '8', 'SEA-SHOES', '18', '1.05', 'YOUSU 900846236601', '4800000', '4000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-07-27 09:23:49', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (66, 21, '0000-00-00', '29446 BOTOL', 'DANN', '5', 'SEA', '17', '0.15', '', '4800000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-07-27 10:32:12', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (67, 22, '0000-00-00', '', 'CICI/AIR', '1', 'AIR CHINA', '20', '14', '-', '250000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-07-30 14:57:39', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (68, 22, '0000-00-00', '-', 'CICI/AIR', '2', 'AIR CHINA', '20', '10', '-', '250000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-07-30 14:58:08', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (69, 22, '0000-00-00', '-', 'CICI/SEA', '2', 'SEA DIRECT', '11', '0.07', '-', '7000000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-03 08:24:26', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (70, 22, '0000-00-00', '', 'CICI/SEA', '3', 'SEA DIRECT', '11', '0.28', '-', '7000000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-03 08:29:04', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (71, 23, '0000-00-00', '-', 'KCB/FAI/SEA', '8', 'SEA DIRECT', '22', '0.3', '-', '7300000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-03 09:40:39', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (72, 11, '2021-08-05', 'Y12366', '123/IMAD', '4', 'SEA INDIRECT G', '19', '0.53', 'HLL', '6000000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-03 11:10:21', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (74, 11, '2021-08-02', 'Y12215', '123/IMAD', '1', 'SEA ', '8', '0.63', '-', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-03 12:06:08', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (75, 19, '0000-00-00', '-', 'KCB/KIM', '134', 'KOREA SEA', '14', '5.04', '-', '13700000', '13000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-04 07:10:50', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (76, 24, '0000-00-00', '-', 'BIO PRO', '1', 'SEA SPORE', '23', '0.18', '-', '9000000', '7800000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-04 08:23:08', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (77, 12, '0000-00-00', '-', 'BUSTAN', '62', 'SEA DIRECT', '24', '2.57', '-', '7200000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-05 13:48:48', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (78, 14, '2021-08-04', '33956', 'UNS', '8', 'SEA ', '8', '0.47', '-', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-08-05 13:53:11', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (79, 14, '0000-00-00', '33868', 'UNS', '80', 'SEA ', '8', '3.67', '-', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-08-05 13:55:12', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (80, 25, '0000-00-00', '-', 'BLESS', '1', 'SEA DIRECT', '22', '0.32', '', '7300000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-17 18:38:34', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (81, 16, '0000-00-00', '', 'KCB/DD/SEA', '2', 'SEA DIRECT', '21', '0.16', '', '7000000', '6000000', NULL, NULL, 1, 0, 'LUNAS', NULL, '2021-08-17 18:42:35', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (82, 26, '0000-00-00', '-', 'KCB/HAR/AIR', '1', 'AIR CHINA', '26', '11', '-', '230000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-17 18:50:36', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (83, 27, '0000-00-00', '10382', '', '50', 'SEA CHINA LARTAS', '27', '3.28', '', '6700000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-23 08:00:04', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (84, 13, '0000-00-00', '-', 'JESS', '1', 'AIR KOREA', '28', '33', '', '245000', '125000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-23 08:08:35', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (85, 15, '2021-08-20', '35227', 'ERL', '2', 'SEA CHINA', '29', '2.16', 'PEILIDIANQI', '6300000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-30 05:11:05', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (86, 8, '2021-08-15', '34791', 'RIA', '1', 'SEA INDIRECT', '5', '0.06', '', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-30 05:14:15', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (87, 8, '2021-08-17', '34944', 'RIA', '1', 'SEA INDIRECT', '5', '0.01', 'YOUSU518946231061', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-30 05:16:49', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (88, 13, '2021-08-25', '35477', 'JES', '5', 'SEA INDIRECT', '10', '0.21', '', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-30 09:07:07', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (89, 28, '2021-08-11', '33930', 'RUD', '11', 'SEA INDIRECT', '30', '1.46', 'CINDY LIGHTING', '6150000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-30 09:13:52', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (90, 13, '2021-08-07', 'Y12573', 'JES', '10', 'SEA INDIRECT', '10', '0.63', 'HLL', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-30 09:15:10', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (91, 12, '2021-08-04', '33868', 'BUSTAN', '80', 'SEA INDIRECT', '9', '3.67', 'BETTY WU', '5800000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-30 09:18:48', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (92, 12, '2021-08-09', '32157', 'BUSTAN', '8', 'SEA INDIRECT', '9', '0.64', '', '5800000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-08-30 09:19:41', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (93, 13, '2021-08-10', 'Y12678', 'JES', '2', 'SEA INDIRECT', '10', '0.13', 'BS55001633954668', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-30 09:24:34', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (94, 23, '0000-00-00', 'SMART LOCK NO 27', 'FAI', '1', 'AIR CHINA', '31', '10.5', '', '240000', '190000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-08-31 10:17:26', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (95, 13, '2021-07-13', 'Y11563', 'JESS', '3', 'SEA INDIRECT', '10', '0.31', 'HLL', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-01 06:47:07', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (96, 29, '2021-08-25', '-', 'PANC', '1', 'AIR CHINA', '26', '12.5', '', '230000', '190000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-01 06:55:35', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (97, 12, '2021-09-03', '-', 'BUSTAN', '42', 'SEA DIRECT', '24', '1.42', '-', '7200000', '6000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-03 09:05:36', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (98, 12, '0000-00-00', '-', 'BUSTAN', '22', 'SEA DIRECT', '24', '1.07', '-', '7200000', '6000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-03 09:06:17', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (100, 12, '2021-09-07', '36892', 'BUSTAN', '56', 'SEA INDIRECT', '9', '2.24', '18035151009', '5800000', '5000000', NULL, NULL, 1, 0, 'LUNAS', NULL, '2021-09-09 03:36:52', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (101, 20, '0000-00-00', '300480329032', 'MEG', '2', 'SEA DIRECT', '16', '1.25', '', '6700000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-09 06:21:08', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (102, 20, '0000-00-00', '300466914172', 'KCB/MEG', '2', 'SEA DIRECT', '16', '0.35', '-', '6700000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-09 06:21:48', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (103, 20, '0000-00-00', '1304818456299', 'KCB/MEG', '7', 'SEA DIRECT', '16', '0.65', '', '6700000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-09 06:22:32', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (104, 12, '0000-00-00', 'AIR', 'BUSTAN', '1', 'AIR CHINA MIN 20KG', '32', '21.7', '-', '210000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-09 07:54:32', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (106, 19, '0000-00-00', 'KOREA', 'KIM', '73', 'KOREA SEA', '14', '4.13', '-', '13700000', '13000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-10 08:38:36', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (107, 30, '2021-09-14', '37517', 'FARHAN', '8', 'SEA ', '8', '0.44', 'MAN LI', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-14 09:13:17', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (108, 29, '2021-09-17', 'Y14232', 'PANCA', '2', 'SEA INDIRECT', '33', '6.53', 'WL', '5900000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-17 06:14:04', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (109, 27, '0000-00-00', '11579', 'MICH', '30', 'SEA CHINA LARTAS', '27', '2.69', '-', '6700000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-17 06:45:18', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (110, 13, '0000-00-00', 'Y12636', 'KENCA/JESS', '2', 'SEA INDIRECT', '10', '0.22', 'HLL - earplug', '5700000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-22 03:20:58', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (111, 8, '0000-00-00', '37262', 'RIA', '2', 'SEA INDIRECT', '5', '0.09', 'JIA YUN MEI 800003985396', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-23 11:54:07', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (112, 8, '0000-00-00', '37336', 'RIA', '1', 'SEA INDIRECT', '5', '0.05', 'DEBANG DPK 202001607814', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-23 11:54:58', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (113, 8, '0000-00-00', '36223', 'RIA', '1', 'SEA INDIRECT', '5', '0.06', 'YOUSU906357388598', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-23 11:56:22', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (114, 8, '0000-00-00', '-36386', 'RIA', '4', 'SEA INDIRECT', '5', '0.19', 'JYM 800003985399', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-23 11:57:44', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (115, 8, '0000-00-00', '36637', 'RIA', '1', 'SEA INDIRECT', '5', '0.05', 'YOU SU 518967350737', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-23 11:59:08', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (116, 15, '2021-09-23', 'Y14469', 'ERL', '16', 'SEA ', '8', '0.62', 'HLL', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-23 14:26:21', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (117, 8, '0000-00-00', '36641', 'RIA', '1', 'SEA INDIRECT', '5', '0.01', 'yousu900858272876', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-25 05:11:17', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (118, 10, '2021-09-24', '14420', 'FARID', '8', 'SEA INDIRECT GENERAL', '7', '18.2', 'WL', '4700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-09-27 08:51:58', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (119, 9, '0000-00-00', 'asd', 'deb', '', 'SEA INDIRECT', '5', '0.34', 'asd', '5500000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-09-27 08:57:00', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (120, 23, '0000-00-00', '-', 'KCB/FAI', '8', 'SEA DIRECT', '25', '0.24', '-', '7300000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-28 04:12:56', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (121, 31, '0000-00-00', '13789', 'DON', '15', 'SEA-SHOES', '18', '1.57', '-', '4800000', '4000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-09-30 07:23:42', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (122, 8, '0000-00-00', '34932', 'KENCA/RIA', '3.00', 'SEA INDIRECT', '5', '0.09', ' zhong tong 202107158527', '5500000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-05 07:37:56', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (123, 16, '2021-09-01', '-', 'KCB/DD', '8', 'SEA DIRECT', '11', '0.43', '-', '7000000', '6000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-08 06:55:20', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (124, 12, '0000-00-00', 'AIR GZ ', '', '1', 'AIR CHINA MIN 20KG', '32', '24', '', '210000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-10-11 06:14:40', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (125, 12, '0000-00-00', 'DIRECT JKT', '', '11', 'SEA DIRECT', '24', '0.52', '', '7200000', '6000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-10-11 06:15:28', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (126, 13, '2021-10-12', 'Y15278', 'JES', '6', 'SEA INDIRECT', '10', '0.47', 'HLL', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-19 06:38:36', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (127, 13, '0000-00-00', 'Y15380', 'JES', '4', 'SEA INDIRECT', '10', '0.23', 'DPK21043731411', '5700000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-19 06:40:07', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (128, 13, '2021-10-13', '-', 'KB/JES', '2', 'AIR KOREA', '28', '10', '', '245000', '125000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-10-19 06:41:29', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (129, 26, '0000-00-00', '-', 'HAR', '1', 'AIR CHINA OCT', '36', '1.4', '', '230000', '195000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-19 07:24:29', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (130, 32, '2021-10-05', '-', 'KCB/JORD', '12.00', 'CHINA DIRECT DEC', '50', '0.70', '100017553436', '7000000', '5800000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-10-19 08:09:15', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (132, 13, '0000-00-00', '', '', '2', 'AIR KOREA', '28', '9.5', '', '245000', '125000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-27 05:15:41', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (133, 11, '0000-00-00', '13831', '', '14', 'SEA ', '8', '2.57', 'HLL', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-27 05:19:12', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (134, 12, '0000-00-00', '37179', 'BUSTAN', '15', 'SEA INDIRECT', '9', '0.75', 'YOUSU518946424157', '5800000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-10-27 05:22:51', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (135, 23, '0000-00-00', '', 'FAI', '1', 'AIR CHINA', '31', '5.3', '', '240000', '190000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-10-27 05:25:38', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (136, 22, '0000-00-00', '', '', '2', 'AIR CHINA', '20', '10.8', '', '250000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-10 07:41:53', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (137, 15, '0000-00-00', 'Y14567', '', '3', 'SEA ', '8', '0.13', '', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-11 07:29:31', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (138, 15, '0000-00-00', '38261', '', '40', 'SEA ', '8', '1.65', 'KUAYUE KY00000132558408', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-11 07:31:31', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (139, 33, '2021-11-03', '', '', '1.00', 'AIR CHINA', '37', '10.10', '', '225000', '195000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-15 06:26:34', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (140, 12, '0000-00-00', '', '', '1', 'AIR CHINA MIN 20KG', '32', '22.2', '', '210000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-15 09:39:15', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (141, 13, '0000-00-00', '14927', '', '', 'SEA INDIRECT', '10', '0.12', 'ZTO75813230071353', '5700000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-19 17:36:57', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (142, 10, '0000-00-00', '', '', '1', 'AIR CHINA', '15', '2.1', '', '220000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-19 17:38:57', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (143, 34, '0000-00-00', '', 'YUN/AIR', '', 'AIR CHINA', '37', '1', '', '225000', '195000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-19 17:44:52', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (144, 19, '0000-00-00', '', 'KIM/SEA', '26', 'KOREA SEA', '14', '2.2', '-', '13700000', '13000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-19 17:47:06', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (145, 13, '0000-00-00', '', '', '6.00', 'KOREA SEA', '38', '0.81', '', '14000000', '13000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-19 17:51:38', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (146, 22, '0000-00-00', '', '', '2', 'CHINA SEA NOV ', '39', '0.18', '-', '7000000', '5800000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-19 17:53:57', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (147, 11, '0000-00-00', '15220', '', '3', 'SEA INDIRECT G', '19', '0.7', '', '6000000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-19 18:01:16', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (148, 10, '0000-00-00', '', '', '1', 'AIR CHINA', '15', '6.5', '', '220000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-24 05:34:10', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (149, 35, '2021-11-25', '44065', '123/KHO', '3.00', 'SEA ', '8', '0.42', 'ST 773133572893376/773', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-25 06:32:14', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (150, 12, '2021-11-25', '44010', '123/BUSTAN', '77', 'SEA INDRIECT G', '40', '2.92', '18038151009', '5800000', '4250000', NULL, NULL, 1, 0, 'LUNAS', NULL, '2021-11-25 06:39:52', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (151, 37, '2021-11-25', 'Y17011', '123/ANRI', '31', 'SEA INDIRECT G', '19', '2.15', '15355112806', '6000000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-25 07:22:51', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (152, 11, '2021-11-25', 'Y17096', '', '5', 'SEA INDIRECT G', '19', '0.71', '18257950077', '6000000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-25 08:20:00', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (153, 27, '0000-00-00', '-', 'MICH', '2.00', 'AIR SG', '41', '11.10', 'PICK UP SGD 45', '230000', '175000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-11-25 10:13:25', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (154, 38, '2021-11-27', 'Y17217', 'IQB', '38', 'SEA ', '8', '9', 'HLL', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-11-27 07:58:11', 'admin', '2022-02-17 05:26:01', NULL);
INSERT INTO `transactions` VALUES (155, 39, '2021-10-23', '40843', 'DRO', '12', 'SEA INDIRECT G', '42', '0.52', 'ZHONG TONG 202122294802', '5500000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-02 07:59:57', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (156, 35, '2021-11-27', '44104', 'KHO', '1', 'SEA ', '8', '0.14', 'SHEN TONG 773133572380442', '6000000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-02 08:03:26', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (157, 12, '0000-00-00', '36892', 'BUSTAN', '56', 'SEA INDIRECT', '9', '2.25', 'ANTAR 19 OKT', '5800000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-02 08:13:57', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (158, 34, '2021-11-27', '44053', 'YUN ', '11', 'GARMENT INDIRECT', '43', '2.18', 'ZHONG TONG 202137101868', '6700000', '6000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-02 15:53:27', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (159, 34, '2021-11-18', '43218', 'YUN', '7', 'GARMENT INDIRECT', '43', '1.1', '-', '6700000', '6000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-02 15:55:46', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (160, 28, '2021-11-25', '43989', 'RUD', '20', 'SEA INDIRECT', '30', '3.05', 'you shang su yun 70999565', '6150000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-02 15:57:39', 'admin', '2022-02-21 08:16:51', NULL);
INSERT INTO `transactions` VALUES (161, 14, '2021-12-01', '44389', 'UNS', '35', 'SEA INDIRECT G', '19', '2.79', 'XIN YI ELECTRONIC', '6000000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-02 15:59:40', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (162, 12, '2021-11-25', '44010', 'BUSTAN', '77', 'SEA INDRIECT G', '40', '2.92', '18038151009', '5800000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-02 16:01:47', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (163, 14, '2021-11-24', '43799', 'UNS', '15', 'SEA INDIRECT G', '19', '0.65', 'XING YI DIANZI', '6000000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-02 16:04:07', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (164, 14, '2021-11-20', '43461', 'UNS', '3', 'SEA ', '8', '0.08', '43461', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-02 16:06:30', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (165, 14, '2021-11-18', '43234', 'UNS', '2', 'SEA INDIRECT G', '19', '0.1', 'XIN FENG 188036407724', '6000000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-02 16:07:32', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (166, 31, '2021-11-15', '42611', 'DON-AIDRIG', '2', 'FOOD', '44', '0.15', 'KENA MIN CBM  ZT 202128229105', '6500000', '5500000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-02 16:10:00', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (167, 14, '2021-11-12', '42767', 'UNS', '9', 'SEA ', '8', '0.35', 'TAI YUAN DIANZI', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-02 16:11:13', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (168, 40, '2021-11-08', '42187', 'MAHA', '9', 'SEA INDIRECT', '9', '0.71', 'AN NENG 300493199346', '5800000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-02 16:16:26', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (169, 36, '0000-00-00', '-', 'IVY', '1', 'AIR CHINA OCT', '36', '1.4', '-', '230000', '195000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-03 06:58:30', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (170, 28, '2021-12-03', '44838', 'RUD', '10', 'SEA INDIRECT', '30', '1.27', '-', '6150000', '5000000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-03 08:04:04', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (171, 12, '0000-00-00', '-', 'BUSTAN', '2', 'AIR CHINA MIN 20KG', '32', '22', '', '210000', '190000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-03 10:33:53', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (172, 12, '2021-10-26', '41111', '', '51', 'SEA INDIRECT', '9', '1.62', 'SHENZHEN DIY MAKER CO.', '5800000', '5000000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-03 10:42:05', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (173, 33, '0000-00-00', '-', 'KCB/CIL', '1', 'AIR CHINA DES', '45', '10.2', '', '225000', '200000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-08 04:40:37', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (174, 13, '0000-00-00', '15712', '', '1', 'SEA INDIRECT', '10', '0.17', '', '5700000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-11 14:59:55', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (175, 13, '0000-00-00', '15816', '', '3', 'SEA INDIRECT', '10', '0.22', '', '5700000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-11 15:01:50', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (176, 15, '0000-00-00', '15596', '', '10', 'SEA INDIRECT G', '19', '1.3', 'YD505868664', '6000000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-12 10:09:34', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (177, 15, '0000-00-00', '15479', '', '1', 'SEA INDIRECT G', '19', '0.09', 'SF1129579227125', '6000000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-12 10:10:42', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (178, 11, '0000-00-00', '15939', '', '3', 'SEA INDIRECT G', '19', '1.01', 'HLL', '6000000', '4250000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-12 10:23:43', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (179, 12, '0000-00-00', '39038', '', '18', 'SEA INDIRECT G', '46', '0.89', 'YOUSU518946424238', '5800000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-12 11:00:21', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (180, 33, '0000-00-00', '', '', '1', 'AIR CHINA', '37', '15', '', '225000', '195000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-15 09:34:02', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (181, 12, '0000-00-00', '40840', '', '38', 'SEA INDIRECT G', '46', '2.09', 'YOU SU 518946424247', '5800000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-15 09:37:16', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (182, 15, '2021-12-15', '18066', 'ERL', '1', 'SEA ', '8', '1.97', 'WL', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-15 09:40:20', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (183, 14, '2021-12-14', '45774', 'UNS', '14', 'SEA INDIRECT G', '19', '0.91', 'XIONG NAN XIONG DIAN ZI', '6000000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-15 09:42:27', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (184, 13, '2021-12-14', '18019', 'JES', '6', 'SEA INDIRECT', '10', '0.57', 'HLL', '5700000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-15 09:48:33', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (185, 13, '2021-12-13', 'Y17971', 'JES', '1', 'SEA INDIRECT', '10', '0.17', 'HLL', '5700000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-15 09:49:26', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (186, 13, '2021-12-15', '18079', '', '1', 'SEA INDIRECT', '10', '0.07', ' BS550018869664619', '5700000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-15 09:51:23', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (187, 34, '2021-12-14', '45322', 'YUN', '13', 'SEA INDIRECT', '10', '0.45', 'SHUN XIN JIE DA 6031912605', '5700000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-15 09:53:30', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (188, 23, '2021-12-07', '45033', 'FAI ', '7', 'SEA ', '8', '0.43', 'KENA MIN CBM 0,5  YOUSU518973523318', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-15 09:58:49', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (189, 41, '2021-12-14', '45625', 'SIN', '1.00', 'SEA ', '8', '0.2', ' NIAN FENG DIAN JI', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-20 06:46:08', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (190, 41, '2021-12-15', '45129', 'SIN', '1', 'SEA ', '8', '0.1', 'DE BANG 300305627783 ', '6000000', '5000000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-20 07:27:53', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (191, 13, '2021-12-17', '18124', '', '1', 'SEA INDIRECT', '10', '0.07', 'BS550018889838137', '5700000', '4250000', NULL, NULL, 1, 1, 'LUNAS', NULL, '2021-12-20 07:31:52', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (192, 12, '0000-00-00', '-', 'BUSTAN', '4', 'AIR CHINA MIN 20 KG DEC', '47', '35.3', '-', '220000', '200000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-20 07:56:59', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (193, 22, '0000-00-00', '', 'CICI', '1', 'AIR CHINA DES', '45', '4.7', '', '250000', '200000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-20 07:58:54', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (194, 12, '0000-00-00', '42690', 'BUSTAN', '32', 'SEA INDIRECT G', '46', '1.59', 'YOUSU518946424964', '5800000', '4250000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-20 08:04:56', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (195, 23, '0000-00-00', '', 'KCB/FAI', '1', 'AIR CHINA DEC', '49', '21', '', '240000', '200000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-20 09:06:15', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (196, 36, '0000-00-00', '-', 'KCB/IVY/SEA', '4', 'CHINA DIRECT DEC', '50', '0.43', '-', '7000000', '5800000', NULL, NULL, 2, 1, 'LUNAS', NULL, '2021-12-24 09:09:40', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (198, 42, '0000-00-00', '', '', '4', 'SEA CHINA DIRECT DEC', '51', '0.17', '', '7500000', '5800000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-27 03:27:42', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (199, 43, '2021-12-30', '', 'HMK EBI', '1', 'KOREA AIR', '52', '10', '', '250000', '220000', NULL, NULL, 2, 0, 'LUNAS', NULL, '2021-12-30 07:07:06', 'admin', '2022-02-17 02:16:20', NULL);
INSERT INTO `transactions` VALUES (200, 24, '0000-00-00', '', 'KCB/ARY', '1', 'SHANGHAI SEA ', '53', '7.43', '', '9500000', '8500000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-03 03:45:06', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (202, 31, '0000-00-00', 'Y15506', '', '20.00', 'DON 5 JT', '54', '1.28', 'SPRAY', '5000000', '4250000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-04 18:58:55', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (203, 41, '2021-12-29', '47074', '', '1', 'SEA ', '8', '0.1', ' KING KONG 2017231573', '6000000', '5000000', NULL, NULL, 0, 1, 'BELUM BAYAR', NULL, '2022-01-04 19:01:40', 'admin', '2022-02-17 04:12:30', NULL);
INSERT INTO `transactions` VALUES (204, 34, '2021-12-30', '46955', '', '10', 'SEA ', '8', '0.87', 'LED LIGHTS', '6000000', '5000000', NULL, NULL, 2, 1, 'BELUM BAYAR', NULL, '2022-01-04 19:03:31', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (205, 22, '0000-00-00', '', '', '1', 'AIR CHINA', '20', '17.5', '', '250000', '190000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-07 06:09:48', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (206, 11, '0000-00-00', '16172', '', '3', 'SEA INDIRECT G', '19', '0.70', 'GAODA', '6000000', '4250000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-07 06:13:51', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (207, 34, '2021-12-22', '46181', '', '16.00', 'INDIRECT TUBE', '6', '1.15', 'socks ZT 202135691964', '5800000', '5000000', NULL, NULL, 1, 1, 'BELUM BAYAR', NULL, '2022-01-10 17:18:18', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (208, 34, '2021-12-22', '46301', '', '1.00', 'INDIRECT TUBE', '6', '0.09', '202142706126', '5800000', '5000000', NULL, NULL, 1, 1, 'BELUM BAYAR', NULL, '2022-01-10 17:20:18', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (209, 14, '2022-01-09', '48109', '', '32', 'SEA ', '8', '2.09', '', '6000000', '5000000', NULL, NULL, 1, 1, 'BELUM BAYAR', NULL, '2022-01-10 17:39:37', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (211, 19, '0000-00-00', '', '', '19', 'KOREA SEA', '14', '1.56', '', '13700000', '13000000', NULL, NULL, 2, 1, 'BELUM BAYAR', NULL, '2022-01-13 04:19:31', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (212, 19, '0000-00-00', '', '', '51', 'KOREA SEA', '14', '3.23', '', '13700000', '13000000', NULL, NULL, 2, 1, 'BELUM BAYAR', NULL, '2022-01-13 04:19:54', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (213, 33, '0000-00-00', '', 'CIL', '1', 'AIR CHINA', '37', '8.2', '', '225000', '195000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-18 04:38:54', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (214, 32, '0000-00-00', '', '', '1.00', 'AIR CHINA', '31', '10', '', '240000', '190000', NULL, NULL, 2, 1, 'BELUM BAYAR', NULL, '2022-01-18 05:10:13', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (215, 22, '0000-00-00', '', '', '4', 'SEA DIRECT', '11', '0.6', '', '7000000', '6000000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-19 04:36:05', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (218, 42, '0000-00-00', '', '', '7', 'SEA CHINA DIRECT DEC', '51', '0.29', '', '7500000', '5800000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-19 05:51:34', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (219, 42, '0000-00-00', '', '', '5', 'SEA CHINA DIRECT DEC', '51', '0.16', '', '7500000', '5800000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-19 05:51:55', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (220, 11, '0000-00-00', 'Y18379', '', '8', 'SEA INDIRECT G', '19', '1.37', 'GC', '6000000', '4250000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-19 09:12:49', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (221, 44, '0000-00-00', '', '', '1', 'AIR CHINA', '31', '6.5', '', '240000', '190000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-27 05:55:48', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (222, 45, '0000-00-00', '', '', '1', 'AIR CHINA', '55', '2.1', '', '235000', '200000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-27 09:15:35', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (223, 22, '0000-00-00', '', '', '1', 'AIR CHINA', '20', '10', '', '250000', '190000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-28 08:42:52', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (224, 12, '0000-00-00', '', '', '1', 'AIR CHINA', '15', '23.5', '', '220000', '190000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-01-28 08:49:09', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (225, 33, '0000-00-00', '', '', '1', 'AIR CHINA', '37', '5', '', '225000', '195000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-02-04 14:15:59', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (226, 23, '0000-00-00', 'KCB/FAI001', 'FAI', '31', 'SEA DIRECT JKT 2022', '56', '1.96', '-', '7300000', '5800000', NULL, NULL, 2, 0, 'BELUM BAYAR', NULL, '2022-02-16 15:02:13', 'admin', '2022-02-17 02:50:52', NULL);
INSERT INTO `transactions` VALUES (227, 12, '0000-00-00', '47878', '', '97', 'SEA INDRIECT G', '40', '3.82', '', '5800000', '4250000', NULL, NULL, 2, 0, NULL, NULL, '2022-02-17 05:55:13', 'admin', '2022-02-17 05:55:28', NULL);
INSERT INTO `transactions` VALUES (228, 46, '2022-02-14', '', 'KCB/SUKM/AIR', '2', 'AIR SPORE 2022', '57', '32.8', '', '240000', '175000', NULL, NULL, 2, 1, NULL, NULL, '2022-02-21 08:13:40', 'admin', '2022-02-21 10:35:19', NULL);
INSERT INTO `transactions` VALUES (229, 15, '0000-00-00', '48481', '', '13', 'SEA CHINA', '29', '0.5', '', '6300000', '5000000', NULL, NULL, 2, 1, NULL, NULL, '2022-02-21 08:50:36', 'admin', '2022-02-21 10:35:23', NULL);
INSERT INTO `transactions` VALUES (230, 37, '0000-00-00', '47473', '', '12', 'SEA ', '8', '1.19', '', '6000000', '5000000', NULL, NULL, 2, 1, NULL, NULL, '2022-02-21 08:54:11', 'admin', '2022-02-21 10:35:27', NULL);
INSERT INTO `transactions` VALUES (231, 15, '2022-01-14', '48146', 'ERL', '13', 'SEA ', '8', '0.49', 'KENA MIN CBM', '6000000', '5000000', NULL, NULL, 2, 1, NULL, NULL, '2022-02-21 09:46:29', 'admin', '2022-02-24 06:13:21', NULL);
INSERT INTO `transactions` VALUES (232, 11, '0000-00-00', '49396', '', '2', 'SEA INDIRECT G', '19', '0.5', '', '6000000', '4250000', NULL, NULL, 2, 0, NULL, NULL, '2022-02-24 06:08:31', 'admin', '2022-02-24 06:09:09', NULL);
INSERT INTO `transactions` VALUES (233, 22, '0000-00-00', '', 'KCB/CICI', '1', 'SEA DIRECT 2022', '58', '0.14', '', '7000000', '5800000', NULL, NULL, 2, 0, NULL, NULL, '2022-02-24 06:15:50', 'admin', '2022-02-24 06:17:21', NULL);
INSERT INTO `transactions` VALUES (234, 47, '0000-00-00', '', '', '1', 'AIR CHINA', '55', '8.1', '', '235000', '200000', NULL, NULL, 2, 0, NULL, NULL, '2022-02-25 07:53:02', 'admin', '2022-02-25 07:53:51', NULL);
INSERT INTO `transactions` VALUES (235, 48, '2022-02-23', '50467', 'LIT', '31', 'Textile', '59', '1.17', '0370013685', '8650000', '8000000', NULL, NULL, 1, 1, NULL, NULL, '2022-02-25 14:04:12', 'admin', '2022-02-25 14:04:27', NULL);
INSERT INTO `transactions` VALUES (236, 36, '0000-00-00', '', '', '1', 'AIR CHINA 2022', '61', '19.5', '', '230000', '200000', NULL, NULL, 2, 0, NULL, NULL, '2022-02-25 14:10:01', 'admin', '2022-02-25 14:10:21', NULL);
INSERT INTO `transactions` VALUES (237, 50, '0000-00-00', '', '', '1', 'AIR CHINA PW', '60', '8.8', '', '282000', '247000', NULL, NULL, 2, 0, NULL, NULL, '2022-02-26 01:22:45', 'admin', '2022-02-26 01:23:48', NULL);
INSERT INTO `transactions` VALUES (238, 10, '0000-00-00', '', 'FARID/AIR', '1', 'AIR CHINA 2022', '61', '5', '', '230000', '200000', NULL, NULL, 2, 0, NULL, NULL, '2022-03-01 04:46:15', 'admin', '2022-03-01 04:46:32', NULL);
INSERT INTO `transactions` VALUES (239, 12, '0000-00-00', '50906', '', '38', 'SEA INDIRECT', '9', '1.91', '', '5800000', '5000000', NULL, NULL, 1, 0, NULL, NULL, '2022-03-01 09:10:45', 'admin', '2022-03-01 09:10:45', NULL);
INSERT INTO `transactions` VALUES (240, 32, '0000-00-00', '', '', '13', 'SEA DIRECT 2022', '58', '0.74', '', '7000000', '5800000', NULL, NULL, 2, 1, NULL, NULL, '2022-03-02 07:03:52', 'admin', '2022-03-02 07:04:14', NULL);

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `role_access` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_id`(`menu_id` ASC) USING BTREE,
  INDEX `user_menu_ibfk_2`(`user_id` ASC) USING BTREE,
  CONSTRAINT `user_menu_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES (1, 54, 17, '[\"read\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (2, 54, 21, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (3, 54, 22, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (4, 54, 23, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (5, 54, 31, '[\"read\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (6, 54, 13, '[\"read\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (7, 54, 18, '[\"read\",\"create\",\"update\",\"delete\",\"tanggal_lapor\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (8, 54, 19, '[\"read\",\"create\",\"update\",\"delete\",\"tanggal_penetapan\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (9, 54, 20, '[\"read\",\"create\",\"update\",\"delete\",\"tanggal_pembayaran\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (10, 54, 9, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (11, 54, 10, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (12, 54, 30, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (13, 54, 12, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (14, 54, 28, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (15, 54, 14, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (16, 54, 15, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (17, 54, 39, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (18, 54, 40, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (19, 54, 24, '[\"read\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (20, 54, 41, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (21, 54, 42, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (22, 54, 25, '[\"read\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (23, 54, 43, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (24, 54, 44, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (25, 54, 26, '[\"read\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (26, 54, 45, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');
INSERT INTO `user_menu` VALUES (27, 54, 46, '[\"read\",\"create\",\"update\",\"delete\"]', '2021-10-31 07:37:38', 'admin_test', '2021-10-31 07:37:38', 'admin_test');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `full_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `role_id` int NULL DEFAULT NULL COMMENT '1 = ADMIN, 2 = OPERATOR',
  `group` int NULL DEFAULT NULL,
  `is_active` int NULL DEFAULT 1,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'DEBBI', '$2y$10$1DN2qcMGEAI8.4LzmSTzweufUCLl3xV0PQKYdmyMQMWHVlOYHq/Ny', 2, 1, 1, NULL, NULL, '2021-12-24 16:12:08', '2022-01-28 22:59:32');
INSERT INTO `users` VALUES (2, 'sahyudi', 'Super Admin', '$2y$10$szxvQDQbu8DPJeYR5IQvDuJMXNUnN4/uqxRUpd3VxnhF47UN4PZhO', 1, 1, 1, NULL, NULL, '2021-12-24 16:12:08', '2022-02-17 06:16:13');
INSERT INTO `users` VALUES (4, 'ayin', 'Ayin', '$2y$10$1HbWmXqGdhXXUEmKNRylzeN/JEmMEJZL9Y6.gwN3qzRHSWSM37/c2', 4, NULL, 1, 'admin', 'admin', '2022-02-10 09:12:38', '2022-02-16 07:19:12');

SET FOREIGN_KEY_CHECKS = 1;

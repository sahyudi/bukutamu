/*
 Navicat Premium Data Transfer

 Source Server         : Server HTM Cargo
 Source Server Type    : MySQL
 Source Server Version : 100516
 Source Host           : htmcargo.com:3306
 Source Schema         : u1607350_invoice

 Target Server Type    : MySQL
 Target Server Version : 100516
 File Encoding         : 65001

 Date: 15/09/2022 16:36:29
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES (3, 'BCA', 'ALDIANSYAH', '6043784159', '', 1, NULL, 'ahmad');

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
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (51, 'Muhamad Sahyudi', '085374131481', 'sahyudi.dev@gmail.com', '', 'Batam', NULL, 'Y', '2022-09-13 12:53:13', 'admin', '2022-09-13 12:53:13', 'ahmad');
INSERT INTO `customer` VALUES (52, 'DARMA BUDI SHADELI', '08156454654645', '', '', 'DFDFDFKLJSADASJD;ASF', NULL, 'Y', '2022-09-13 12:53:16', 'ahmad', '2022-09-13 12:53:16', 'ahmad');
INSERT INTO `customer` VALUES (53, 'CICI KANI', '08176887898', '', '', 'KAPUK', NULL, 'Y', '2022-09-13 12:53:18', 'ahmad', '2022-09-13 12:53:18', 'ahmad');
INSERT INTO `customer` VALUES (54, 'LISNA', '085895737599', '', '', '', NULL, 'Y', '2022-09-13 12:53:21', 'ahmad', '2022-09-13 12:53:21', 'ahmad');
INSERT INTO `customer` VALUES (56, 'ACHMAD SUHERI', '082298061995', 'herryrplone@gmail.com', '', 'Jl. Melati No.16, RT.007 / RW.01, Jatipulo, Kec. Palmerah, Kota Jakarta Barat, KOTA JAKARTA BARAT, PALMERAH, DKI JAKARTA, ID, 11430', NULL, 'N', NULL, 'ahmad', '2022-09-13 12:59:44', NULL);
INSERT INTO `customer` VALUES (57, 'DARMA BUDI SADELI', '082292222298', '', '', '', NULL, 'N', NULL, 'ahmad', '2022-09-13 13:01:52', NULL);
INSERT INTO `customer` VALUES (58, 'LISNA', '+62 858-9573-7599', '', '', 'Ds wadung kec jenu kab tuban', NULL, 'N', NULL, 'ahmad', '2022-09-14 01:11:11', NULL);
INSERT INTO `customer` VALUES (59, '', '', '', '', '', NULL, 'Y', '2022-09-14 11:23:26', 'sahyudi', '2022-09-14 11:23:26', 'sahyudi');
INSERT INTO `customer` VALUES (60, 'ANDRE', '081282007072', 'EMAIL BELUM ADA', '', '', NULL, 'N', NULL, 'ahmad', '2022-09-15 15:48:02', NULL);

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
  CONSTRAINT `history_tracking_ibfk_2` FOREIGN KEY (`status_tracking`) REFERENCES `status_tracking` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_tracking
-- ----------------------------

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NULL DEFAULT NULL,
  `nomor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `tanggal_selesai` date NULL DEFAULT NULL,
  `jenis_diskon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `diskon` int NULL DEFAULT 0,
  `jenis_asuransi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `tot_asuransi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_tagihan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `tot_ctn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_qty` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_berat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_cbm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice
-- ----------------------------

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
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_profit
-- ----------------------------

-- ----------------------------
-- Table structure for invoice_trans
-- ----------------------------
DROP TABLE IF EXISTS `invoice_trans`;
CREATE TABLE `invoice_trans`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NULL DEFAULT NULL,
  `trans_id` int NULL DEFAULT NULL,
  `catatan` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE,
  INDEX `trans_id`(`trans_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_trans
-- ----------------------------

-- ----------------------------
-- Table structure for item_categori
-- ----------------------------
DROP TABLE IF EXISTS `item_categori`;
CREATE TABLE `item_categori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga` double(255, 0) NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_categori
-- ----------------------------
INSERT INTO `item_categori` VALUES (1, 'HML 2', 5000000, 'N', '2022-09-14 12:13:22', 'sahyudi', '2022-09-14 12:55:06', 'sahyudi', 'sahyudi');

-- ----------------------------
-- Table structure for item_price
-- ----------------------------
DROP TABLE IF EXISTS `item_price`;
CREATE TABLE `item_price`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_categori_id` int NULL DEFAULT 0,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` double(255, 0) NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_price
-- ----------------------------
INSERT INTO `item_price` VALUES (6, 0, '', 'SUNISA CC CREAM', 5500000, 'Y', '2022-09-05 23:06:03', 'ahmad', '2022-09-14 12:09:13', 'ahmad', 'ahmad');
INSERT INTO `item_price` VALUES (7, 0, '', 'SADOER FOOT MASK LAVENDER', 5500000, 'Y', '2022-09-06 00:17:10', 'ahmad', '2022-09-14 12:09:13', 'ahmad', 'ahmad');
INSERT INTO `item_price` VALUES (8, 0, '', 'HENGFANG HEY GIRL', 5500000, 'Y', '2022-09-07 14:00:38', 'ahmad', '2022-09-14 12:09:13', 'ahmad', 'ahmad');
INSERT INTO `item_price` VALUES (10, 0, 'YIGANERJING', 'YIGANERJING', 5500000, 'Y', '2022-09-07 23:08:19', 'ahmad', '2022-09-14 12:09:13', 'ahmad', 'ahmad');
INSERT INTO `item_price` VALUES (11, 0, 'SELANG AIR 30 CM', 'SELANG AIR 30 CM', 5500000, 'Y', '2022-09-07 23:21:54', 'ahmad', '2022-09-14 12:09:13', 'ahmad', 'ahmad');
INSERT INTO `item_price` VALUES (12, 0, 'ZUDAIFU', 'ZUDAIFU', 5500000, 'Y', '2022-09-07 23:51:11', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (14, 0, 'MAYBELINE FIT ME BIRU', 'MAYBELINE FIT ME BIRU', 5500000, 'Y', '2022-09-08 16:34:44', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (15, 0, 'EFERO MASKER KAKI', 'EFERO MASKER KAKI', 5500000, 'Y', '2022-09-08 16:59:53', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (16, 0, 'POPFEEL EYEBROW', 'POPFEEL EYEBROW', 5500000, 'Y', '2022-09-08 17:08:08', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (17, 0, 'BRECKET GIGI', 'BRECKET GIGI', 5500000, 'Y', '2022-09-08 17:15:49', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (18, 0, 'LM 5099', 'Lameila Eyeshadow Pallete 9 Warna Pigmen Glitter', 5500000, 'Y', '2022-09-08 23:55:42', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (20, 0, 'LM 5099', 'Lameila Eyeshadow Pallete 9 Warna Pigmen Glitter', 5500000, 'Y', '2022-09-08 23:56:31', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (21, 0, 'LEM TIKUS KUNING', 'LEM TIKUS KUNING', 5500000, 'Y', '2022-09-11 21:32:02', 'ahmad', '2022-09-14 12:09:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (22, 0, 'ZUDAIFU', 'ZUDAIFU', 5500000, 'Y', '2022-09-13 13:02:10', 'ahmad', '2022-09-15 11:18:16', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (23, 0, 'LAMEILA', 'LM 779', 5500000, 'Y', '2022-09-14 01:10:04', 'ahmad', '2022-09-15 11:18:18', 'ahmad', 'ahmad');
INSERT INTO `item_price` VALUES (24, 0, 'LAMEILA', 'LM 1041', 5500000, 'Y', '2022-09-14 10:28:27', 'ahmad', '2022-09-15 11:18:21', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (25, 0, 'LAMEILA', 'LM 790', 5500000, 'Y', '2022-09-14 10:29:36', 'ahmad', '2022-09-15 11:18:24', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (26, 0, 'LAMEILA', 'LM 3040', 5500000, 'Y', '2022-09-14 10:30:08', 'ahmad', '2022-09-15 11:18:27', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (27, 0, 'LAMEILA', 'LM 1021', 5500000, 'Y', '2022-09-14 10:30:31', 'ahmad', '2022-09-15 11:18:30', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (28, 0, 'LAMEILA', 'LM 1033', 5500000, 'Y', '2022-09-14 10:32:49', 'ahmad', '2022-09-15 11:18:33', 'admin', 'ahmad');
INSERT INTO `item_price` VALUES (29, 0, 'LAMEILA', 'LM 1002', 5500000, 'Y', '2022-09-14 11:13:51', 'ahmad', '2022-09-15 11:18:13', NULL, 'ahmad');
INSERT INTO `item_price` VALUES (30, 0, 'LIP BALM ALOE VERA', 'LIP BALM ALOE VERA', 5500000, 'N', '2022-09-14 12:14:22', 'ahmad', '2022-09-14 12:14:22', NULL, NULL);
INSERT INTO `item_price` VALUES (31, 0, 'ADS MAKE UP', 'ADS MAKE UP', 5500000, 'N', '2022-09-15 11:26:06', 'ahmad', '2022-09-15 11:26:06', NULL, NULL);
INSERT INTO `item_price` VALUES (32, 0, 'CIAZE GENTLE GEL', 'CIAZE GENTLE GEL', 5500000, 'N', '2022-09-15 12:25:49', 'ahmad', '2022-09-15 12:25:49', NULL, NULL);
INSERT INTO `item_price` VALUES (33, 0, 'MEIDIAN GREEN MASK STICK', 'MEIDIAN GREEN MASK STICK', 5500000, 'N', '2022-09-15 12:33:01', 'ahmad', '2022-09-15 12:33:01', NULL, NULL);
INSERT INTO `item_price` VALUES (34, 0, 'CINDYNAL HAIR MASK SACHET', 'CINDYNAL HAIR MASK SACHET', 5500000, 'N', '2022-09-15 14:23:27', 'ahmad', '2022-09-15 14:23:27', NULL, NULL);
INSERT INTO `item_price` VALUES (35, 0, 'IMAGES EYELASH', 'IMAGES EYELASH', 5500000, 'N', '2022-09-15 15:14:18', 'ahmad', '2022-09-15 15:14:18', NULL, NULL);
INSERT INTO `item_price` VALUES (36, 0, 'CINDYNAL HAIR MASK 500 GR', 'CINDYNAL HAIR MASK 500 GR', 5500000, 'N', '2022-09-15 15:46:59', 'ahmad', '2022-09-15 15:46:59', NULL, NULL);
INSERT INTO `item_price` VALUES (37, 0, 'EFERO FOOT MASK', 'EFERO FOOT MASK', 5500000, 'N', '2022-09-15 16:02:03', 'ahmad', '2022-09-15 16:02:03', NULL, NULL);
INSERT INTO `item_price` VALUES (38, 0, 'ZUDAIFU', 'ZUDAIFU', 5500000, 'N', '2022-09-15 16:25:03', 'ahmad', '2022-09-15 16:25:03', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 0, 'Dashboard', 'dashboard', 'fas fa-tachometer-alt', 0, 0, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:52:35', 'sahyudi', '2021-12-22 05:52:35', NULL);
INSERT INTO `menus` VALUES (2, 0, 'Invoice', 'invoice', 'fas fa-file-invoice', 0, 11, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', 1, 0, '2021-12-22 05:53:44', 'sahyudi', '2022-09-14 11:33:41', 'sahyudi');
INSERT INTO `menus` VALUES (3, 0, 'Customer', 'customer', 'fas fa-users', 0, 5, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', 1, 0, '2021-12-22 05:54:41', 'sahyudi', '2022-09-10 22:04:04', 'sahyudi');
INSERT INTO `menus` VALUES (4, 0, 'Nama Barang', 'price', 'fas fa-tags', 0, 4, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:56:10', 'sahyudi', '2022-09-14 11:33:01', 'sahyudi');
INSERT INTO `menus` VALUES (5, 0, 'Laporan', 'report', 'fas fa-file-archive', 0, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', 1, 0, '2021-12-22 05:56:38', 'sahyudi', '2022-09-14 11:33:11', 'sahyudi');
INSERT INTO `menus` VALUES (6, 0, 'Tracking', 'tracking', 'fas fa-truck-moving', 0, 11, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:57:25', 'sahyudi', '2022-09-14 11:33:46', 'sahyudi');
INSERT INTO `menus` VALUES (7, 0, 'Rek. Bank', 'bank', 'fas fa-university', 0, 6, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:57:55', 'sahyudi', '2022-09-14 11:34:52', 'sahyudi');
INSERT INTO `menus` VALUES (8, 0, 'Users', 'user', 'fas fa-users-cog', 0, 7, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:58:48', 'sahyudi', '2021-12-22 05:58:48', NULL);
INSERT INTO `menus` VALUES (9, 0, 'Role', 'role', 'fas fa-user-tag', 0, 8, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 06:00:35', 'sahyudi', '2021-12-22 06:00:43', 'sahyudi');
INSERT INTO `menus` VALUES (10, 0, 'Laporan Tahunan', 'report/annual', 'fas fa-file-invoice', 0, 10, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-01-28 22:54:48', 'sahyudi', '2022-09-14 11:34:33', 'sahyudi');
INSERT INTO `menus` VALUES (11, 0, 'Payment', 'payment', 'fas fa-money-check', 0, 10, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-02-17 02:19:41', 'sahyudi', '2022-09-14 11:32:35', 'sahyudi');
INSERT INTO `menus` VALUES (12, 0, 'Tagihan Manual', 'report/manual', 'fas fa-receipt', 0, 1, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-09-09 14:18:19', 'sahyudi', '2022-09-10 22:04:31', 'sahyudi');
INSERT INTO `menus` VALUES (13, 0, 'Laba', 'report/profit', 'fas fa-wallet', 0, 2, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-09-10 22:05:44', 'sahyudi', '2022-09-10 22:05:44', NULL);
INSERT INTO `menus` VALUES (14, 0, 'Menu', 'app/menu', 'fas fa-bars', 0, 9, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-09-10 22:07:12', 'sahyudi', '2022-09-10 22:07:12', NULL);
INSERT INTO `menus` VALUES (15, 0, 'Kategori', 'price/categori', 'fas fa-clone', 0, 5, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-09-14 11:39:06', 'sahyudi', '2022-09-14 11:49:43', 'sahyudi');

-- ----------------------------
-- Table structure for pembayaran_log
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran_log`;
CREATE TABLE `pembayaran_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_manual_id` int NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `tot_bayar` double NULL DEFAULT NULL,
  `sisa_tagihan` double NULL DEFAULT NULL,
  `lampiran` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembayaran_log
-- ----------------------------
INSERT INTO `pembayaran_log` VALUES (16, 46, '2022-09-15', 34020000, 5918724, './uploads/bukti_bayar/09-2022/bd3d9fc052cf46f772ac273b6d6d58fc.png', '2022-09-15 10:51:58', 'ahmad');
INSERT INTO `pembayaran_log` VALUES (17, 46, '2022-09-15', 5918724, 0, './uploads/bukti_bayar/09-2022/f7184b4c891f725e070ff6b650baf9f6.jpeg', '2022-09-15 10:53:40', 'ahmad');
INSERT INTO `pembayaran_log` VALUES (18, 47, '2022-09-15', 97200000, 15719562, './uploads/bukti_bayar/09-2022/d9b5bef23912efa2be22c54a0dbfcc7d.jpeg', '2022-09-15 11:41:23', 'ahmad');
INSERT INTO `pembayaran_log` VALUES (19, 47, '2022-09-15', 15719562, 0, './uploads/bukti_bayar/09-2022/1a0291309ad7fb102e34d678824baa11.png', '2022-09-15 12:31:24', 'ahmad');
INSERT INTO `pembayaran_log` VALUES (20, 48, '2022-09-15', 25095945, 0, './uploads/bukti_bayar/09-2022/b1963000f287adb3997c70ca4d1c0802.png', '2022-09-15 12:31:42', 'ahmad');
INSERT INTO `pembayaran_log` VALUES (21, 49, '2022-09-15', 41124000, 9082758, './uploads/bukti_bayar/09-2022/1267034ec7454952553033a351c01b49.png', '2022-09-15 12:36:06', 'ahmad');
INSERT INTO `pembayaran_log` VALUES (22, 49, '2022-09-15', 5000000, 4082758, './uploads/bukti_bayar/09-2022/caf110fb721ea2389b35c11e7544a5d4.png', '2022-09-15 13:37:02', 'ahmad');

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
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES (62, 'SEA INDIRECT', '3000000', '4000000', '2022-08-31 07:49:07', 'admin');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Super Administrator', '2021-08-29 07:12:26', '2021-09-10 06:21:16', 'admin', 'admin');
INSERT INTO `role` VALUES (2, 'Administrator', '2021-08-29 07:13:04', '2021-09-10 06:21:14', 'admin', 'admin');
INSERT INTO `role` VALUES (4, 'accounting check', '2022-02-10 09:11:18', '2022-02-10 09:12:26', 'admin', 'admin');
INSERT INTO `role` VALUES (5, 'User Demo', '2022-09-05 21:23:06', '2022-09-05 21:23:06', 'sahyudi', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 349 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (192, 4, 1, '[\"read\"]', '2022-02-17 04:10:40', 'sahyudi', '2022-02-17 04:10:40', 'sahyudi');
INSERT INTO `role_menu` VALUES (193, 4, 11, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-02-17 04:10:40', 'sahyudi', '2022-02-17 04:10:40', 'sahyudi');
INSERT INTO `role_menu` VALUES (194, 4, 2, '[\"read\",\"update\"]', '2022-02-17 04:10:40', 'sahyudi', '2022-02-17 04:10:40', 'sahyudi');
INSERT INTO `role_menu` VALUES (322, 2, 1, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (323, 2, 12, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (324, 2, 13, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (325, 2, 5, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (326, 2, 4, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (327, 2, 15, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (328, 2, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (329, 2, 7, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:15', 'sahyudi', '2022-09-14 11:46:15', 'sahyudi');
INSERT INTO `role_menu` VALUES (330, 1, 1, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (331, 1, 12, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (332, 1, 13, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (333, 1, 5, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"send_mail\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (334, 1, 4, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (335, 1, 15, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (336, 1, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (337, 1, 7, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (338, 1, 8, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (339, 1, 9, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (340, 1, 14, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (341, 1, 10, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-14 11:46:23', 'sahyudi', '2022-09-14 11:46:23', 'sahyudi');
INSERT INTO `role_menu` VALUES (342, 5, 1, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-15 11:54:56', 'sahyudi', '2022-09-15 11:54:56', 'sahyudi');
INSERT INTO `role_menu` VALUES (343, 5, 12, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-15 11:54:56', 'sahyudi', '2022-09-15 11:54:56', 'sahyudi');
INSERT INTO `role_menu` VALUES (344, 5, 13, '[\"read\",\"create\",\"update\"]', '2022-09-15 11:54:56', 'sahyudi', '2022-09-15 11:54:56', 'sahyudi');
INSERT INTO `role_menu` VALUES (345, 5, 5, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-15 11:54:56', 'sahyudi', '2022-09-15 11:54:56', 'sahyudi');
INSERT INTO `role_menu` VALUES (346, 5, 4, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-15 11:54:56', 'sahyudi', '2022-09-15 11:54:56', 'sahyudi');
INSERT INTO `role_menu` VALUES (347, 5, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2022-09-15 11:54:56', 'sahyudi', '2022-09-15 11:54:56', 'sahyudi');
INSERT INTO `role_menu` VALUES (348, 5, 7, '[\"read\",\"create\",\"update\",\"delete\"]', '2022-09-15 11:54:56', 'sahyudi', '2022-09-15 11:54:56', 'sahyudi');

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
-- Table structure for transaction_item
-- ----------------------------
DROP TABLE IF EXISTS `transaction_item`;
CREATE TABLE `transaction_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `resi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `berat_ctn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `qty_ctn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga_satuan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kurs` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `panjang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lebar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tinggi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cbm_ctn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga_cbm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_ctn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_qty` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_cbm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_berat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tot_harga` double(255, 0) NULL DEFAULT NULL,
  `tot_estimasi` double(255, 0) NULL DEFAULT NULL,
  `tot_biaya` double(255, 0) NULL DEFAULT NULL,
  `jenis_asuransi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'TIDAK',
  `tot_asuransi` double(255, 0) NULL DEFAULT NULL,
  `diskon` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `tot_diskon` double(255, 0) NULL DEFAULT NULL,
  `tot_tagihan` double(255, 0) NULL DEFAULT NULL,
  `est_harga_satuan` double(255, 0) NULL DEFAULT 0,
  `status` int NULL DEFAULT NULL,
  `status_manual` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction_item
-- ----------------------------
INSERT INTO `transaction_item` VALUES (29, 30, 57, 'RESI-GZ-63998/DB', '2022-09-14', '18', '1200', '0.84', '2250', '43', '34', '35', '0.05117', '5500000.00', '15', '18000.00', '0.76755', '270.00', 34020000, 4221525, 38241525, 'ALTERNATIF', 179130, 'Y', 383775, 38036880, 2114, 1, 1, '2022-09-14 12:19:54', 'ahmad', '2022-09-15 08:43:32', 'sahyudi');
INSERT INTO `transaction_item` VALUES (30, 31, 57, 'RESI-GZ-64161/DB', '2022-09-15', '27.5', '144', '10', '2250', '51', '31', '40', '0.06324', '5500000.00', '30', '4320', '1.89720', '825.00', 97200000, 10434600, 107634600, 'ALTERNATIF', 856440, 'Y', 948600, 107542440, 24895, 1, 1, '2022-09-15 11:40:29', 'ahmad', '2022-09-15 11:40:48', 'ahmad');
INSERT INTO `transaction_item` VALUES (31, 32, 57, 'RESI-GZ-64255/DB', '2022-09-15', '22.6', '160', '2.50', '2245', '23', '41', '63', '0.05941', '5500000.00', '20', '3200', '1.18818', '452.00', 17960000, 6534990, 24494990, 'NON', 0, 'Y', 594090, 23900900, 7470, 1, 1, '2022-09-15 12:29:14', 'ahmad', '2022-09-15 12:30:01', 'ahmad');
INSERT INTO `transaction_item` VALUES (32, 33, 57, 'RESI-GZ-64317/DB', '2022-09-15', '14.6', '200', '2.30', '2235', '35', '22', '43', '0.03311', '5500000.00', '40', '8000', '1.32440', '584.00', 41124000, 7284200, 48408200, 'ALTERNATIF', 69960, 'Y', 662200, 47815960, 5977, 1, 1, '2022-09-15 12:34:26', 'ahmad', '2022-09-15 12:34:53', 'ahmad');
INSERT INTO `transaction_item` VALUES (33, 35, 57, '', '2022-09-15', '21', '432', '2.70', '2218', '50.9', '29.2', '37.3', '0.05544', '5500000.00', '1', '432.00', '0.05544', '21.00', 2587076, 304920, 2891996, 'ALTERNATIF', 14573, 'Y', 27720, 2878849, 6665, 1, 1, '2022-09-15 15:18:06', 'ahmad', '2022-09-15 15:19:57', 'ahmad');
INSERT INTO `transaction_item` VALUES (34, 36, 60, '', '2022-09-15', '22', '36', '2.48', '2190', '60.3', '30.8', '20.5', '0.03807', '5500000.00', '100', '3600', '3.80734', '2200.00', 19552320, 20940370, 40492690, 'NON', 0, 'Y', 1903670, 38589020, 10720, 1, 1, '2022-09-15 15:50:50', 'ahmad', '2022-09-15 15:51:23', 'ahmad');
INSERT INTO `transaction_item` VALUES (35, 37, 57, '', '2022-09-15', '23.8', '450', '2.30', '2220', '45', '43', '35', '0.06773', '5500000.00', '80', '36000.00', '5.41800', '1904.00', 183816000, 29799000, 213615000, 'TIDAK', 0, 'Y', 2709000, 210906000, 5859, 1, 1, '2022-09-15 16:11:46', 'ahmad', '2022-09-15 16:15:29', 'ahmad');
INSERT INTO `transaction_item` VALUES (36, 37, 60, '', '2022-09-15', '23.8', '450', '2.3', '2220', '45', '43', '35', '0.06773', '5500000.00', '20', '9000', '1.35450', '476.00', 45954000, 7449750, 53403750, 'ALTERNATIF', 92250, 'Y', 677250, 52818750, 5869, 1, 1, '2022-09-15 16:18:02', 'ahmad', '2022-09-15 16:18:31', 'ahmad');
INSERT INTO `transaction_item` VALUES (37, 38, 60, '', '2022-09-15', '14', '400', '2.08', '2220', '35', '43', '46', '0.06923', '5500000.00', '20', '8000', '1.38460', '280.00', 36940800, 7615300, 44556100, 'ALTERNATIF', 44580, 'Y', 692300, 43908380, 5489, 1, 0, '2022-09-15 16:32:52', 'ahmad', '2022-09-15 16:32:52', NULL);

-- ----------------------------
-- Table structure for transaction_item_manual
-- ----------------------------
DROP TABLE IF EXISTS `transaction_item_manual`;
CREATE TABLE `transaction_item_manual`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_item_id` int NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `harga_satuan` double(255, 0) NULL DEFAULT 0,
  `fee_persen` double(255, 0) NULL DEFAULT 0,
  `tot_fee` double(255, 0) NULL DEFAULT 0,
  `tot_harga_barang` double(255, 0) NULL DEFAULT NULL,
  `tot_tagihan` double(255, 0) NULL DEFAULT NULL,
  `tot_laba` double(255, 0) NULL DEFAULT 0,
  `tot_pembayaran` double(255, 0) NULL DEFAULT 0,
  `status` int NULL DEFAULT NULL,
  `status_pembayaran` enum('BELUM BAYAR','BELUM LUNAS','LUNAS','BATAL','') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'BELUM BAYAR',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction_item_manual
-- ----------------------------
INSERT INTO `transaction_item_manual` VALUES (46, 29, '2022-09-15', 2219, 5, 1901844, 34020000, 39938724, 1901844, 39938724, 1, 'LUNAS', '2022-09-15 08:43:32', 'sahyudi', '2022-09-15 10:53:40', 'ahmad');
INSERT INTO `transaction_item_manual` VALUES (47, 30, '2022-09-15', 26139, 5, 5377122, 97200000, 112919562, 5377122, 112919562, 1, 'LUNAS', '2022-09-15 11:40:48', 'ahmad', '2022-09-15 12:31:24', 'ahmad');
INSERT INTO `transaction_item_manual` VALUES (48, 31, '2022-09-15', 7843, 5, 1195045, 17960000, 25095945, 1195045, 25095945, 1, 'LUNAS', '2022-09-15 12:30:01', 'ahmad', '2022-09-15 12:31:42', 'ahmad');
INSERT INTO `transaction_item_manual` VALUES (49, 32, '2022-09-15', 6276, 5, 2390798, 41124000, 50206758, 2390798, 46124000, 1, 'BELUM LUNAS', '2022-09-15 12:34:53', 'ahmad', '2022-09-15 13:37:02', 'ahmad');
INSERT INTO `transaction_item_manual` VALUES (50, 33, '2022-09-15', 6864, 3, 86365, 2587076, 2965214, 86365, 0, 1, 'BELUM BAYAR', '2022-09-15 15:19:57', 'ahmad', '2022-09-15 15:19:57', NULL);
INSERT INTO `transaction_item_manual` VALUES (51, 34, '2022-09-15', 11256, 5, 1929451, 19552320, 40518471, 1929451, 0, 1, 'BELUM BAYAR', '2022-09-15 15:51:23', 'ahmad', '2022-09-15 15:51:23', NULL);
INSERT INTO `transaction_item_manual` VALUES (52, 35, '2022-09-15', 6035, 3, 6327180, 183816000, 217233180, 6327180, 0, 1, 'BELUM BAYAR', '2022-09-15 16:15:29', 'ahmad', '2022-09-15 16:15:29', NULL);
INSERT INTO `transaction_item_manual` VALUES (53, 36, '2022-09-15', 6163, 5, 2640938, 45954000, 55459688, 2640938, 0, 1, 'BELUM BAYAR', '2022-09-15 16:18:31', 'ahmad', '2022-09-15 16:18:31', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 242 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (241, 51, '2022-08-31', 'KODE01', '1', '1', 'SEA INDIRECT', '62', '1', 'RS0101010', '4000000', '3000000', NULL, NULL, 2, 1, NULL, NULL, '2022-08-31 07:49:38', 'admin', '2022-08-31 08:01:32', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'Admin', '$2y$10$E72ht6crYU54lJ.zn9j55eHx7A.306Fk2Nl8RD4BfryeKzbXfSN6O', 2, 1, 1, NULL, 'sahyudi', '2021-12-24 16:12:08', '2022-08-31 07:40:44');
INSERT INTO `users` VALUES (2, 'sahyudi', 'Super Admin', '$2y$10$szxvQDQbu8DPJeYR5IQvDuJMXNUnN4/uqxRUpd3VxnhF47UN4PZhO', 1, 1, 1, NULL, NULL, '2021-12-24 16:12:08', '2022-02-17 06:16:13');
INSERT INTO `users` VALUES (4, 'ayin', 'Ayin', '$2y$10$1HbWmXqGdhXXUEmKNRylzeN/JEmMEJZL9Y6.gwN3qzRHSWSM37/c2', 4, NULL, 1, 'admin', 'admin', '2022-02-10 09:12:38', '2022-02-16 07:19:12');
INSERT INTO `users` VALUES (5, 'ahmad', 'Ahmad Heri', '$2y$10$jXdDBrYQ1TN16ZFlP7L0QuF0kwss186pKwIGS.ie9Rr3ziI96BZhm', 5, NULL, 1, 'sahyudi', NULL, '2022-09-05 21:23:31', '2022-09-05 21:23:31');

SET FOREIGN_KEY_CHECKS = 1;

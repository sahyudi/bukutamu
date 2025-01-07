/*
 Navicat Premium Data Transfer

 Source Server         : server-null
 Source Server Type    : MySQL
 Source Server Version : 100615
 Source Host           : 156.67.212.188:3306
 Source Schema         : u5810323_saitec

 Target Server Type    : MySQL
 Target Server Version : 100615
 File Encoding         : 65001

 Date: 20/11/2023 14:02:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for archive_categories
-- ----------------------------
DROP TABLE IF EXISTS `archive_categories`;
CREATE TABLE `archive_categories`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of archive_categories
-- ----------------------------
INSERT INTO `archive_categories` VALUES (1, 'General', '2023-10-16 09:44:12', NULL, NULL, NULL, 'N', NULL, NULL);
INSERT INTO `archive_categories` VALUES (2, 'Aplikasi', '2023-10-16 09:44:19', NULL, NULL, NULL, 'N', NULL, NULL);
INSERT INTO `archive_categories` VALUES (3, 'File pribadi', '2023-10-16 12:46:44', 'sahyudi', '2023-10-16 13:23:30', NULL, 'Y', 'sahyudi', '2023-10-16 13:23:30');
INSERT INTO `archive_categories` VALUES (4, 'Sahyudi', '2023-10-16 12:48:00', 'sahyudi', '2023-10-16 13:06:48', 'sahyudi', 'N', NULL, NULL);
INSERT INTO `archive_categories` VALUES (5, 'Alfiyan', '2023-10-16 12:49:31', 'sahyudi', '2023-10-16 13:06:27', NULL, 'Y', 'sahyudi', '2023-10-16 13:06:27');
INSERT INTO `archive_categories` VALUES (6, 'tambah lagi', '2023-10-16 12:59:56', 'sahyudi', '2023-10-16 13:06:17', NULL, 'Y', 'sahyudi', '2023-10-16 13:06:17');
INSERT INTO `archive_categories` VALUES (7, 'Sudimara Forestwalk Apartment', '2023-10-17 08:54:45', 'ranti', NULL, NULL, 'N', NULL, NULL);

-- ----------------------------
-- Table structure for archive_document
-- ----------------------------
DROP TABLE IF EXISTS `archive_document`;
CREATE TABLE `archive_document`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `category_id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `size` double NULL DEFAULT NULL,
  `extension` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of archive_document
-- ----------------------------
INSERT INTO `archive_document` VALUES (2, '4c758d83-5cbe-11ee-9cff-9289f84058f7', 1, 'Muhamad Sahyudi', './uploads/archive/document/09-2023/422ddd1c25a6fcd093cb2bae479ea1eb.pdf', NULL, NULL, 'N', '2023-09-27 05:44:49', 'sahyudi', '2023-10-16 10:39:31', 'ranti', NULL, NULL);
INSERT INTO `archive_document` VALUES (3, '5b429062-5cbf-11ee-9cff-9289f84058f7', 1, 'nama fil balkis', './uploads/archive/document/09-2023/0b9fa5f46bd1f9905a14c0b518abf6d9.pdf', NULL, NULL, 'Y', '2023-09-27 05:52:23', 'sahyudi', '2023-10-16 10:39:34', NULL, '2023-09-27 06:02:52', 'sahyudi');
INSERT INTO `archive_document` VALUES (4, '70fdec22-5cbf-11ee-9cff-9289f84058f7', 1, 'nama_dile', './uploads/archive/document/09-2023/2023-09-26-Muhamad_Sahyudi_-_Tugas_Ke_1.docx', NULL, NULL, 'Y', '2023-09-27 05:52:59', 'sahyudi', '2023-10-16 10:39:35', 'sahyudi', '2023-09-27 06:02:48', 'sahyudi');
INSERT INTO `archive_document` VALUES (5, '7867a6be-5e7f-11ee-9cff-9289f84058f7', 1, 'Ranti Widyastuti', './uploads/archive/document/09-2023/2023-09-29-Template_label.doc', NULL, NULL, 'Y', '2023-09-29 11:20:06', 'ranti', '2023-10-16 10:39:35', NULL, '2023-10-12 11:41:56', 'ranti');
INSERT INTO `archive_document` VALUES (6, '5cf30bf0-68b9-11ee-9cff-9289f84058f7', 1, 'Devira Santoso', './uploads/archive/document/10-2023/2023-10-12-Quotation-076_SPM_LSH_QT_X_2023.pdf', NULL, NULL, 'Y', '2023-10-12 11:39:42', 'ranti', '2023-10-16 10:39:36', 'ranti', '2023-10-12 11:41:53', 'ranti');
INSERT INTO `archive_document` VALUES (7, '92b6c495-68b9-11ee-9cff-9289f84058f7', 1, 'Trans Studio Mall Bali_WM Ana n Mod_R', './uploads/archive/document/10-2023/2023-10-12-Quotation-076_SPM_LSH_QT_X_20231.pdf', NULL, NULL, 'Y', '2023-10-12 11:41:12', 'ranti', '2023-10-16 10:39:37', NULL, '2023-10-12 11:41:47', 'ranti');
INSERT INTO `archive_document` VALUES (8, 'b8282bb4-68b9-11ee-9cff-9289f84058f7', 1, 'Sudimara Forestwalk Apartment', './uploads/archive/document/10-2023/2023-10-16-draft_Delivery_Order-037_SPM_NWJP_DO_X_2023.xls', NULL, NULL, 'Y', '2023-10-12 11:42:15', 'ranti', '2023-10-16 12:06:54', 'ranti', '2023-10-16 12:06:54', 'ranti');
INSERT INTO `archive_document` VALUES (9, 'b99ab0a6-6bd7-11ee-9cff-9289f84058f7', 2, 'Nama file muhamad sahyudi', './uploads/archive/document/10-2023/2023-10-16-Metode_Eliminasi_Gauss_dan_Gauss_Jordan.docx', 197474, 'docx', 'N', '2023-10-16 10:54:36', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `archive_document` VALUES (10, 'bef3ec05-6c8e-11ee-b8db-e2e7e1b0cffd', 1, 'Data Quotation_076/SPM/NGU/X/2023', './uploads/archive/document/10-2023/2023-10-17-OUTSTANDING.doc', 42496, 'doc', 'N', '2023-10-17 08:44:44', 'ranti', '2023-10-17 08:48:03', 'ranti', NULL, NULL);
INSERT INTO `archive_document` VALUES (11, '5943839f-6c90-11ee-b8db-e2e7e1b0cffd', 7, 'Quotation', './uploads/archive/document/10-2023/2023-10-17-Qtt_Import_Zaenal_Nagoya.pdf', 493685, 'pdf', 'N', '2023-10-17 08:56:12', 'ranti', NULL, NULL, NULL, NULL);
INSERT INTO `archive_document` VALUES (12, '8c2ad502-6c99-11ee-b8db-e2e7e1b0cffd', 1, 'GAMBAR INVOICE', './uploads/archive/document/10-2023/2023-10-17-WhatsApp_Image_2023-10-02_at_11.14.21.jpeg', 57146, 'jpeg', 'N', '2023-10-17 10:02:03', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `archive_document` VALUES (13, 'bfa53047-6c99-11ee-b8db-e2e7e1b0cffd', 1, 'GAMBAR', './uploads/archive/document/10-2023/2023-10-17-WhatsApp_Image_2023-10-02_at_11.14.211.jpeg', 57146, 'jpeg', 'N', '2023-10-17 10:03:29', 'sahyudi', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for archive_envelope
-- ----------------------------
DROP TABLE IF EXISTS `archive_envelope`;
CREATE TABLE `archive_envelope`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `company_id` bigint NULL DEFAULT NULL,
  `to` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `to_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `to_attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `to_phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of archive_envelope
-- ----------------------------
INSERT INTO `archive_envelope` VALUES (1, '320a9355-5ce7-11ee-9cff-9289f84058f7', 4, 'Muhamad Sahyudi', 'Tiban masyeba permai tahap 1 blok p no 3', 'Muhamad Sahyudi', '085374131481', '2023-09-27 10:37:34', 'sahyudi', '2023-09-27 10:50:13', 'sahyudi', 'N', NULL, NULL);
INSERT INTO `archive_envelope` VALUES (2, '94c17616-68be-11ee-9cff-9289f84058f7', 5, 'coba', 'coba', 'coba', '000', '2023-10-12 12:17:03', 'ranti', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `archive_envelope` VALUES (3, '230ab717-718b-11ee-b8db-e2e7e1b0cffd', 6, 'pt apa aja', 'uj hrpn', 'ibu darmi', '0002928293983', '2023-10-23 17:01:29', 'ranti', NULL, NULL, 'N', NULL, NULL);

-- ----------------------------
-- Table structure for attachment_categories
-- ----------------------------
DROP TABLE IF EXISTS `attachment_categories`;
CREATE TABLE `attachment_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `categori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attachment_categories
-- ----------------------------
INSERT INTO `attachment_categories` VALUES (1, 'SALE INQUIRY', '2023-11-19 11:02:32', NULL);
INSERT INTO `attachment_categories` VALUES (2, 'SALE QUOTATION', '2023-11-19 11:02:37', NULL);
INSERT INTO `attachment_categories` VALUES (3, 'SALE PO', '2023-11-19 11:02:42', NULL);
INSERT INTO `attachment_categories` VALUES (4, 'SALE INVOICE', '2023-11-19 11:02:57', NULL);
INSERT INTO `attachment_categories` VALUES (5, 'SALE DO', '2023-11-19 11:03:01', NULL);
INSERT INTO `attachment_categories` VALUES (6, 'PURCHASE INQUIRY', '2023-11-19 11:03:08', NULL);
INSERT INTO `attachment_categories` VALUES (7, 'PURCHASE QUOTATION', '2023-11-19 11:03:14', NULL);
INSERT INTO `attachment_categories` VALUES (8, 'PURCHASE ORDER', '2023-11-19 11:03:20', NULL);
INSERT INTO `attachment_categories` VALUES (9, 'PURCHASE INVOICE', '2023-11-19 11:03:25', NULL);
INSERT INTO `attachment_categories` VALUES (10, 'PURCHASE DO', '2023-11-19 11:03:30', NULL);

-- ----------------------------
-- Table structure for attachment_document
-- ----------------------------
DROP TABLE IF EXISTS `attachment_document`;
CREATE TABLE `attachment_document`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `mark_id` bigint NULL DEFAULT NULL,
  `categori_id` bigint NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `size` double NULL DEFAULT NULL,
  `extension` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attachment_document
-- ----------------------------
INSERT INTO `attachment_document` VALUES (7, '28457af8-86a1-11ee-a145-3176bc4c4780', 11, 5, 'Label ', '2023-11-19-Print_Invoice_37.pdf', './uploads/archive/attachment/11-2023/2023-11-19-Print_Invoice_37.pdf', 197829, 'pdf', '2023-11-19 13:02:01', 'sahyudi', NULL, NULL);
INSERT INTO `attachment_document` VALUES (8, '9304cf1b-86a1-11ee-a145-3176bc4c4780', 6, 7, 'atta ment file', '2023-11-19-Print_Invoice_371.pdf', './uploads/archive/attachment/11-2023/2023-11-19-Print_Invoice_371.pdf', 197829, 'pdf', '2023-11-19 13:05:00', 'sahyudi', NULL, NULL);
INSERT INTO `attachment_document` VALUES (12, '33af4f2f-86a2-11ee-a145-3176bc4c4780', 11, 9, 'Disni', '2023-11-19-Print_Invoice_37_2.pdf', './uploads/archive/attachment/11-2023/2023-11-19-Print_Invoice_37_2.pdf', 198560, 'pdf', '2023-11-19 13:09:30', 'sahyudi', NULL, NULL);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tagline_header` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tagline_footer` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `telp_fax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logo` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (4, 'a45bc3d0-50f1-11ee-9a5a-8b6869d6f343', 'K002', 'PT MUDA BERTUAH SEJAHTERA', 'Jayalah semasa muda', 'Bahagialah semasa tua', 'Geranting RT 013 RW 005', '(0221) 077829', '085374131481', 'muhamadsahyu@gmail.com', 'sahyudi.dev@gmail.com', 'https://nullspace.online', './uploads/logo/09-2023/6fedbb1d410502cdc2129886386bba5f.png', 'Y', 'N', '2023-09-12 05:22:06', 'sahyudi', '2023-09-29 15:26:33', 'ranti', '2023-09-14 05:56:45', 'sahyudi');
INSERT INTO `company` VALUES (5, '5f6613c4-682d-11ee-9cff-9289f84058f7', '076', 'PT. MAJU TERUS', 'Bismillah', 'Allahu Akbar', 'Jl. Menuju Jannah', '021 2233', '0821 2233 4455', 'sales2@saitecmeter.com', 'sales1@saitecmeter.com', 'www.saitecmeter.com', './uploads/logo/10-2023/6b08015610ddee7f603202c542893010.jpeg', 'Y', 'Y', '2023-10-11 18:57:37', 'ranti', '2023-10-16 12:06:13', 'ranti', '2023-10-16 12:06:13', 'ranti');
INSERT INTO `company` VALUES (6, '006c6c25-6c95-11ee-b8db-e2e7e1b0cffd', 'SPM', 'PT. SAITEC PRIMA MANDIRI', '', '', 'Ruby Comercial Blok TC 23, Summarecon Bekasi, Jawa Barat ', '021 3971 1593', '081319434370', 'kuwat@saitecmeter.com', 'kuwat_riyanto@yahoo.com', 'www.saitecmeter.com', './uploads/logo/10-2023/caadf6db35695159d9c8e7227f1a0d87.jpeg', 'Y', 'N', '2023-10-17 09:29:30', 'ranti', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for company_bank
-- ----------------------------
DROP TABLE IF EXISTS `company_bank`;
CREATE TABLE `company_bank`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `bank_branch` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bank_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `account_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `currency_bank` enum('IDR','USD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IDR',
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_bank
-- ----------------------------
INSERT INTO `company_bank` VALUES (8, 'a4627f86-50f1-11ee-9a5a-8b6869d6f343', 4, 'Bank BCA - KCU Ahmad Yani Bekasi Kota', 'Bank Syariah Indonesia', 'Muhamad Sahyudi', '0873663728', 'IDR', NULL, 'Y', '2023-09-29 15:26:33', 'sahyudi', 'ranti', '2023-09-29 15:26:33');
INSERT INTO `company_bank` VALUES (9, '5f6620ba-682d-11ee-9cff-9289f84058f7', 5, 'Bekasi', 'BAA', 'RANTISIMILIKITI', '122 334 5667', 'IDR', NULL, 'Y', '2023-10-12 11:26:50', 'ranti', 'ranti', '2023-10-12 11:26:50');
INSERT INTO `company_bank` VALUES (10, '006c780a-6c95-11ee-b8db-e2e7e1b0cffd', 6, 'KCU Ahmad Yani Bekasi Kota', ' Bank Central Asia (BCA)', 'PT. SAITEC PRIMA MANDIRI', '066-1876-793 (IDR)', 'IDR', NULL, 'Y', NULL, 'ranti', NULL, NULL);

-- ----------------------------
-- Table structure for cost_category
-- ----------------------------
DROP TABLE IF EXISTS `cost_category`;
CREATE TABLE `cost_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cost_category
-- ----------------------------
INSERT INTO `cost_category` VALUES (1, 'e89ed537-6658-11ee-9cff-9289f84058f7', 'K001', 'Biaya Gaji', 'Y', 'N', '2023-10-09 11:04:13', 'sahyudi', '2023-10-11 15:34:58', 'ranti', NULL, NULL);
INSERT INTO `cost_category` VALUES (2, '55e3178f-6659-11ee-9cff-9289f84058f7', 'K00-2', 'Kategory', 'Y', 'Y', '2023-10-09 11:07:17', 'sahyudi', '2023-10-09 11:29:17', NULL, '2023-10-09 11:29:17', 'sahyudi');
INSERT INTO `cost_category` VALUES (3, '6c3d20e7-66f7-11ee-9cff-9289f84058f7', '', 'Biaya Sewa Gedung', 'Y', 'N', '2023-10-10 05:58:55', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (4, '752d0842-66f7-11ee-9cff-9289f84058f7', '', 'Biaya Penyusutan', 'Y', 'N', '2023-10-10 05:59:10', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (5, '7d39968f-66f7-11ee-9cff-9289f84058f7', '', 'Biaya Administrasi', 'Y', 'N', '2023-10-10 05:59:23', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (6, '842794c5-66f7-11ee-9cff-9289f84058f7', '', 'Biaya ATK', 'Y', 'N', '2023-10-10 05:59:35', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (7, '8e3c8c3e-66f7-11ee-9cff-9289f84058f7', '', 'Biaya Listrik, Telp dan Air', 'Y', 'N', '2023-10-10 05:59:52', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (8, '95b6c9a8-66f7-11ee-9cff-9289f84058f7', '', 'Biaya Transportasi', 'Y', 'N', '2023-10-10 06:00:04', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (9, 'a1f6f4ab-66f7-11ee-9cff-9289f84058f7', '', 'Biaya Akomodasi', 'Y', 'N', '2023-10-10 06:00:25', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (10, 'aa8233dd-66f7-11ee-9cff-9289f84058f7', '', 'Biaya Operasional Lainnya', 'Y', 'N', '2023-10-10 06:00:39', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_category` VALUES (11, '95b26f5f-6c96-11ee-b8db-e2e7e1b0cffd', 'oj6448', 'Sudi Apartment', 'Y', 'N', '2023-10-17 09:40:50', 'ranti', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cost_operational
-- ----------------------------
DROP TABLE IF EXISTS `cost_operational`;
CREATE TABLE `cost_operational`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `company_id` bigint NULL DEFAULT NULL,
  `category_id` bigint NULL DEFAULT NULL,
  `year` year NULL DEFAULT NULL,
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date` date NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cost_operational
-- ----------------------------
INSERT INTO `cost_operational` VALUES (1, '8b21ece1-66b7-11ee-9cff-9289f84058f7', 4, 1, 2022, 'gaji Karyawan bulan oktober', '2023-10-09', '100000000', 'N', '2023-10-09 22:21:39', 'sahyudi', '2023-10-10 05:50:20', 'sahyudi', NULL, NULL);
INSERT INTO `cost_operational` VALUES (2, 'c447f635-66b9-11ee-9cff-9289f84058f7', 4, 1, 2022, 'Gaji karyawan bulan september', '2023-10-09', '100000000', 'Y', '2023-10-09 22:37:34', 'sahyudi', '2023-10-10 05:50:22', NULL, '2023-10-09 22:42:10', 'sahyudi');
INSERT INTO `cost_operational` VALUES (3, '2f2c67fb-66f6-11ee-9cff-9289f84058f7', 4, 1, 2022, 'Biaya Sewa gedung bulan september', '2023-10-09', '100000000', 'N', '2023-10-10 05:50:03', 'sahyudi', NULL, NULL, NULL, NULL);
INSERT INTO `cost_operational` VALUES (4, '12510914-6c97-11ee-b8db-e2e7e1b0cffd', 6, 11, 2023, 'Fee untuk Anwar ', '2023-10-17', '2730000', 'N', '2023-10-17 09:44:19', 'ranti', '2023-10-17 09:44:39', 'ranti', NULL, NULL);

-- ----------------------------
-- Table structure for cost_year
-- ----------------------------
DROP TABLE IF EXISTS `cost_year`;
CREATE TABLE `cost_year`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `year` year NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cost_year
-- ----------------------------
INSERT INTO `cost_year` VALUES (1, 2022, '2023-10-09 20:56:21', 'sahyudi', '2023-10-10 06:17:41', 'sahyudi');
INSERT INTO `cost_year` VALUES (2, 2023, '2023-10-09 20:56:25', 'sahyudi', '2023-10-09 20:56:34', NULL);

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `npwp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` datetime NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, '933aa7bc-5283-11ee-9a5a-8b6869d6f343', 'CV TUAH RANTING SAKIT', '12399321308213', 'Batam Kepulauriau', '0853741314181', '(0778) 021 0897', 'tuahsakti@gmail.com', '0853741314181', 'Y', 'N', '2023-09-14 05:19:15', 'sahyudi', '2023-09-20 06:52:46', '0000-00-00 00:00:00', '2023-09-14 06:01:25', 'sahyudi');
INSERT INTO `customers` VALUES (2, '861269b8-5b93-11ee-9cff-9289f84058f7', 'PT coba', '00000', 'bekasi', '0813000222', '00022', 'coba@ss.com', '0003004', 'Y', 'Y', '2023-09-25 18:06:06', 'venny', '2023-09-25 18:09:39', NULL, '2023-09-25 18:09:39', 'venny');
INSERT INTO `customers` VALUES (3, 'a43fb06e-60d5-11ee-9cff-9289f84058f7', 'coba', '0998898', 'jl.coba coba', '0088223', '09229', 'email@domain.com', '08123456', 'Y', 'N', '2023-10-02 10:41:59', 'venny', NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (4, '1a875782-68b8-11ee-9cff-9289f84058f7', 'Ms. Tes', '01.223.334.4-4455', 'Jl. SAITEC ', '021-2233-3445', '021-2233-3444', 'sales2@saitecmeter.com', '0821-2386-7664', 'Y', 'Y', '2023-10-12 11:30:41', 'ranti', '2023-10-16 12:06:25', NULL, '2023-10-16 12:06:25', 'ranti');
INSERT INTO `customers` VALUES (5, '4a51c023-6c8d-11ee-b8db-e2e7e1b0cffd', 'PT. NEVER GIVE UP', '-', 'Jl. Perjuangan No. 1', '021 3333 4444', '021 1111 2222', 'nevergiveup@yahoo.com', '0821 2345 6789', 'Y', 'N', '2023-10-17 08:34:18', 'ranti', '2023-10-17 08:35:00', '0000-00-00 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price_hpp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price_sale` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stock` int NULL DEFAULT NULL,
  `photo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES (1, 'e3a1f4c9-5399-11ee-9a5a-8b6869d6f343', 'K-01', 'NAMA PRODUK', 'DESKRIPSI item', '100000', '120000', 0, NULL, 'Y', 'Y', '2023-09-15 14:31:30', 'sahyudi', '2023-09-16 10:07:08', 'sahyudi', '2023-09-16 10:07:08', 'sahyudi');
INSERT INTO `item_stock` VALUES (2, '1ccbd3b1-5441-11ee-9a5a-8b6869d6f343', 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', '120000', '150000', 10159, './uploads/product/09-2023/ff1a52e0c299513514e96f4864b2bcbf.jpg', 'Y', 'N', '2023-09-16 10:28:32', 'sahyudi', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock` VALUES (3, '2cee9333-5441-11ee-9a5a-8b6869d6f343', 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', '100000', '150000', 1215, './uploads/product/09-2023/9749ce564926293960cc4300cfedbf64.jpg', 'Y', 'N', '2023-09-16 10:28:59', 'sahyudi', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock` VALUES (4, '9d9ba0bb-5453-11ee-9a5a-8b6869d6f343', 'K0-0001', 'Nama item', 'deskripsi', '100000', '150000', 994, './uploads/product/09-2023/0f5236df1ba0e48f39a1f42e44b38442.jpg', 'Y', 'Y', '2023-09-16 12:40:59', 'sahyudi', '2023-11-03 15:07:44', 'sahyudi', '2023-09-27 06:02:24', 'sahyudi');
INSERT INTO `item_stock` VALUES (7, '722cfe73-5ae2-11ee-9a5a-8b6869d6f343', 'KH-001', 'NAMA PRODUK', 'DESKRIPSI PRODUK', '10000', '100000', 32, './uploads/product/09-2023/0490c9441a60e21857461a2dd86fc424.jpg', 'Y', 'N', '2023-09-24 20:58:31', 'sahyudi', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock` VALUES (8, 'e29c26d9-68be-11ee-9cff-9289f84058f7', '00A', 'ABC', 'ABCDEFGHJKL', '1000', '10000', 1, './uploads/product/10-2023/98c2745ce960f7a405344455949c698c.JPG', 'Y', 'N', '2023-10-12 12:19:14', 'ranti', '2023-10-16 11:36:24', 'venny', NULL, NULL);
INSERT INTO `item_stock` VALUES (9, 'b665eead-6c91-11ee-b8db-e2e7e1b0cffd', 'WM', 'Water Meter Analog &quot;SAITEC&quot; DN15 (1/2&quot;)', 'Water Meter Analog &quot;SAITEC&quot; DN15 (1/2&quot;)', '100000', '1000000', 98, './uploads/product/11-2023/bb3a6cff672fcf355e0b58de6ab4340a.png', 'Y', 'N', '2023-10-17 09:05:58', 'ranti', '2023-11-08 12:24:30', 'ranti', NULL, NULL);
INSERT INTO `item_stock` VALUES (10, '0d633875-6c99-11ee-b8db-e2e7e1b0cffd', 'KO01', 'SAITEC METER', 'DESKRIPSI PRODUK ADALAH', '500000', '700000', 94, './uploads/product/10-2023/ade29bbcb6e4e929ba8ef13a860207c4.png', 'Y', 'N', '2023-10-17 09:58:30', 'sahyudi', '2023-11-08 12:24:30', 'venny', NULL, NULL);
INSERT INTO `item_stock` VALUES (11, '7d6c50de-6c9a-11ee-b8db-e2e7e1b0cffd', 'new-001', 'produk baru', 'Ukuran : 10 MM\r\nSize : XL', '100000', '300000', 900, './uploads/product/10-2023/28029da4bf078347b0c5201596159b54.jpeg', 'Y', 'N', '2023-10-17 10:08:48', 'sahyudi', '2023-10-20 22:38:45', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock` VALUES (12, 'a8553283-718a-11ee-b8db-e2e7e1b0cffd', '111', 'Water Meter Modbus', 'Water Meter Modbus DN1', '0', '0', 4549, './uploads/product/10-2023/c9c0d64c214e2b68c2401fab7284c64e.png', 'Y', 'N', '2023-10-23 16:58:03', 'ranti', '2023-11-16 18:24:48', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock` VALUES (13, 'cd43976c-7797-11ee-a145-3176bc4c4780', 'K0001', 'Water Meter Analog &quot;SAITEC&quot; DN15 (1/2&quot;)', 'Water Meter Analog &quot;SAITEC&quot; DN15 (1/2&quot;)', '0', '0', 0, './uploads/product/10-2023/89684fec909960f96afb90bd518fdbbc.jpg', 'Y', 'N', '2023-10-31 09:47:16', 'sahyudi', '2023-10-31 09:47:16', NULL, NULL, NULL);
INSERT INTO `item_stock` VALUES (14, '22474352-7798-11ee-a145-3176bc4c4780', 'K0001', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', '0', '0', 0, './uploads/product/10-2023/d330086beafff2bc87ad47d8590f04ca.jpg', 'Y', 'N', '2023-10-31 09:49:38', 'sahyudi', '2023-10-31 09:51:04', 'sahyudi', NULL, NULL);

-- ----------------------------
-- Table structure for item_stock_transaction
-- ----------------------------
DROP TABLE IF EXISTS `item_stock_transaction`;
CREATE TABLE `item_stock_transaction`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint NULL DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `item_id` bigint NULL DEFAULT NULL,
  `invoice` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `type` enum('IN','OUT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IN',
  `total` int NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_stock_transaction
-- ----------------------------
INSERT INTO `item_stock_transaction` VALUES (1, 0, '2bfa2a9f-5739-11ee-9a5a-8b6869d6f343', 2, 'ADJUST-20230919100914', '2023-09-19', 'IN', 100, '0', '', '2023-09-20 05:09:46', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (2, 0, '88fa065a-5739-11ee-9a5a-8b6869d6f343', 2, 'ADJUST-20230919101150', '2023-09-19', 'IN', 10000, '0', '', '2023-09-20 05:11:51', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (3, 0, '913fe5a2-5739-11ee-9a5a-8b6869d6f343', 4, 'ADJUST-20230919101203', '2023-09-19', 'IN', 1000, '0', '', '2023-09-20 05:12:05', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (4, 0, '97be1da1-5739-11ee-9a5a-8b6869d6f343', 3, 'ADJUST-20230919101214', '2023-09-19', 'IN', 1000, '0', '', '2023-09-20 05:12:16', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (5, 0, '8772e5dc-5b94-11ee-9cff-9289f84058f7', 7, 'ADJUST-20230925111318', '2023-09-25', 'IN', 10, '0', '', '2023-09-25 18:13:18', 'venny', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (31, 0, 'f3a1be53-68be-11ee-9cff-9289f84058f7', 8, 'ADJUST-20231012051943', '2023-10-12', 'IN', 1, '0', '', '2023-10-12 12:19:43', 'ranti', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (33, 0, '1f21132e-6b4d-11ee-9cff-9289f84058f7', 2, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE ', '2023-10-15 18:22:26', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (34, 0, '1f23fcc7-6b4d-11ee-9cff-9289f84058f7', 3, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE ', '2023-10-15 18:22:26', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (35, 0, '1f2716f6-6b4d-11ee-9cff-9289f84058f7', 7, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE ', '2023-10-15 18:22:26', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (36, 0, '391b3582-6b4d-11ee-9cff-9289f84058f7', 2, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00007', '2023-10-15 18:23:10', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (37, 0, '392160bd-6b4d-11ee-9cff-9289f84058f7', 3, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00007', '2023-10-15 18:23:10', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (38, 0, '3927b496-6b4d-11ee-9cff-9289f84058f7', 7, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00007', '2023-10-15 18:23:10', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (39, 0, 'cf909a22-6b5f-11ee-9cff-9289f84058f7', 2, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00007', '2023-10-15 20:36:13', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (40, 0, 'cf96d05d-6b5f-11ee-9cff-9289f84058f7', 3, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00007', '2023-10-15 20:36:13', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (41, 0, 'cfa952ff-6b5f-11ee-9cff-9289f84058f7', 7, 'PI/00007', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00007', '2023-10-15 20:36:14', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (42, 0, '9588e133-6b68-11ee-9cff-9289f84058f7', 2, 'PI/00008', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00008', '2023-10-15 21:39:01', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (43, 0, '958f0fd2-6b68-11ee-9cff-9289f84058f7', 3, 'PI/00008', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00008', '2023-10-15 21:39:02', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (44, 0, '95951267-6b68-11ee-9cff-9289f84058f7', 7, 'PI/00008', '2023-10-15', 'IN', 10, '0', 'PENJUALAN DENGAN INVOICE PI/00008', '2023-10-15 21:39:02', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (45, 0, '4d8f2bb8-6b6b-11ee-9cff-9289f84058f7', 2, 'PI/00009', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00009', '2023-10-15 21:58:29', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (46, 0, '4d95579e-6b6b-11ee-9cff-9289f84058f7', 3, 'PI/00009', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00009', '2023-10-15 21:58:29', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (47, 0, '4d9bb18d-6b6b-11ee-9cff-9289f84058f7', 7, 'PI/00009', '2023-10-15', 'IN', 5, '0', 'PENJUALAN DENGAN INVOICE PI/00009', '2023-10-15 21:58:29', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (48, 0, 'c4cae013-6c91-11ee-b8db-e2e7e1b0cffd', 9, 'ADJUST-20231017020622', '2023-10-17', 'IN', 1, '0', '', '2023-10-17 09:06:22', 'ranti', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (49, 0, '42a6c024-6f5e-11ee-b8db-e2e7e1b0cffd', 11, 'ADJUST-20231020033512', '2023-10-20', 'IN', 1000, '0', '', '2023-10-20 22:35:13', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (50, 0, 'c11dee5a-6f5e-11ee-b8db-e2e7e1b0cffd', 11, 'ADJUST OUT 20231020033844', '2023-10-20', 'OUT', 100, '0', 'Deskripsi untuk kebutuhan sample', '2023-10-20 22:38:45', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (51, 0, '719d81e3-6f60-11ee-b8db-e2e7e1b0cffd', 10, 'ADJUST IN 20231020035050', '2023-10-20', 'IN', 100, '0', 'Test adjus in data', '2023-10-20 22:50:50', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (54, 0, '7c01bfd7-7177-11ee-b8db-e2e7e1b0cffd', 2, '001/PI/10/2023', '2023-10-23', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-10-23 14:40:49', 'venny', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (55, 0, '7c01d0c0-7177-11ee-b8db-e2e7e1b0cffd', 3, '001/PI/10/2023', '2023-10-23', 'IN', 9, '0', 'PENGADAAN DENGAN INVOICE', '2023-10-23 14:40:49', 'venny', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (56, 0, 'd4a504b3-718a-11ee-b8db-e2e7e1b0cffd', 12, 'ADJUST IN 20231023095918', '2023-10-23', 'IN', 1, '0', 'Untuk Mockup KCIC Bdg', '2023-10-23 16:59:18', 'ranti', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (60, 0, '6131f1cc-7779-11ee-a145-3176bc4c4780', 12, 'ADJUST IN 20231030110930', '2023-10-31', 'IN', 5000, '0', 'Adjust minus saldo', '2023-10-31 06:09:30', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (62, 0, '13681c7b-779a-11ee-a145-3176bc4c4780', 9, 'ADJUST IN 20231031030333', '2023-10-31', 'IN', 100, '0', 'Deskripsi', '2023-10-31 10:03:32', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (65, 11, '46baaed5-7a1f-11ee-a145-3176bc4c4780', 2, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:02:04', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (66, 11, '46bbd243-7a1f-11ee-a145-3176bc4c4780', 3, '001/PI/10/2023', '2023-11-03', 'IN', 9, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:02:04', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (67, 11, '46bcfa51-7a1f-11ee-a145-3176bc4c4780', 4, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:02:04', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (68, 11, '46be1412-7a1f-11ee-a145-3176bc4c4780', 7, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:02:04', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (69, 11, '46bf8541-7a1f-11ee-a145-3176bc4c4780', 9, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:02:04', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (70, 11, '8578b7f9-7a1f-11ee-a145-3176bc4c4780', 2, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:03:49', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (71, 11, '8579baf7-7a1f-11ee-a145-3176bc4c4780', 3, '001/PI/10/2023', '2023-11-03', 'IN', 9, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:03:49', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (72, 11, '857ac0b6-7a1f-11ee-a145-3176bc4c4780', 4, '001/PI/10/2023', '2023-11-03', 'IN', 1, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:03:49', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (73, 11, '857c0807-7a1f-11ee-a145-3176bc4c4780', 7, '001/PI/10/2023', '2023-11-03', 'IN', 1, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:03:49', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (74, 11, 'bbd61bf4-7a1f-11ee-a145-3176bc4c4780', 2, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:05:20', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (75, 11, 'bbd73f23-7a1f-11ee-a145-3176bc4c4780', 3, '001/PI/10/2023', '2023-11-03', 'IN', 9, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:05:20', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (76, 11, '067b02df-7a20-11ee-a145-3176bc4c4780', 2, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:07:26', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (77, 11, '067ccff3-7a20-11ee-a145-3176bc4c4780', 3, '001/PI/10/2023', '2023-11-03', 'IN', 90, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:07:26', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (78, 11, '116f5b1e-7a20-11ee-a145-3176bc4c4780', 2, '001/PI/10/2023', '2023-11-03', 'IN', 10, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (79, 11, '11706b39-7a20-11ee-a145-3176bc4c4780', 3, '001/PI/10/2023', '2023-11-03', 'IN', 90, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (80, 11, '1171655f-7a20-11ee-a145-3176bc4c4780', 4, '001/PI/10/2023', '2023-11-03', 'IN', 1, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (81, 11, '11725556-7a20-11ee-a145-3176bc4c4780', 7, '001/PI/10/2023', '2023-11-03', 'IN', 1, '0', 'PENGADAAN DENGAN INVOICE', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (97, 11, '4bbdc7da-84d8-11ee-a145-3176bc4c4780', 12, 'INV01', '2023-11-16', 'OUT', 10, '0', 'PENJUALAN DENGAN INVOICE INV01', '2023-11-17 06:31:41', 'sahyudi', NULL, NULL);
INSERT INTO `item_stock_transaction` VALUES (98, 12, 'dfb3e8c1-8746-11ee-a145-3176bc4c4780', 12, 'INV02', '2023-11-20', 'OUT', 20, '0', 'PENJUALAN DENGAN INVOICE INV02', '2023-11-20 08:48:16', 'ranti', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 0, 'Dashboard', 'dashboard', 'fas fa-tachometer-alt', 0, 0, '[\"read\",\"create\",\"update\",\"delete\",\"copy\"]', 1, 0, '2021-12-22 05:52:35', 'sahyudi', '2023-09-10 14:32:01', 'sahyudi');
INSERT INTO `menus` VALUES (3, 18, 'Customer', 'customer/data', 'fas fa-users', 1, 1, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', 1, 0, '2021-12-22 05:54:41', 'sahyudi', '2023-09-29 13:28:57', 'sahyudi');
INSERT INTO `menus` VALUES (8, 16, 'Users', 'user', 'fas fa-users-cog', 1, 7, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 05:58:48', 'sahyudi', '2022-09-24 09:40:07', 'sahyudi');
INSERT INTO `menus` VALUES (9, 16, 'Role', 'role', 'fas fa-user-tag', 1, 8, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2021-12-22 06:00:35', 'sahyudi', '2022-09-24 09:39:19', 'sahyudi');
INSERT INTO `menus` VALUES (14, 16, 'Menu', 'app/menu', 'fas fa-bars', 1, 9, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-09-10 22:07:12', 'sahyudi', '2022-09-24 09:41:22', 'sahyudi');
INSERT INTO `menus` VALUES (16, 0, 'Setting', '#', 'fas fa-cogs', 0, 8, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2022-09-24 09:38:44', 'sahyudi', '2022-09-24 09:38:44', NULL);
INSERT INTO `menus` VALUES (18, 0, 'Master', '#', 'fas fa-store', 0, 0, '[\"read\"]', 1, 0, '2023-09-10 14:33:23', 'sahyudi', '2023-09-24 07:22:40', 'sahyudi');
INSERT INTO `menus` VALUES (19, 18, 'Company', 'company/data', 'fas fa-building', 1, 0, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', 1, 0, '2023-09-10 14:34:03', 'sahyudi', '2023-09-29 13:25:31', 'sahyudi');
INSERT INTO `menus` VALUES (20, 18, 'Vendor', 'vendor/data', 'fas fa-parachute-box', 1, 4, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', 1, 0, '2023-09-15 04:43:04', 'sahyudi', '2023-09-29 13:46:33', 'sahyudi');
INSERT INTO `menus` VALUES (22, 0, 'Product', '#', 'fas fa-box-open', 0, 5, '[\"read\"]', 1, 0, '2023-09-15 10:59:00', 'sahyudi', '2023-09-27 13:34:36', 'sahyudi');
INSERT INTO `menus` VALUES (23, 22, 'Data Product', 'product/data', 'fas fa-file', 1, 1, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', 1, 0, '2023-09-15 11:05:05', 'sahyudi', '2023-10-20 23:29:29', 'sahyudi');
INSERT INTO `menus` VALUES (24, 22, 'Stock', 'product/stock', 'fas fas-item', 1, 2, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-09-15 11:17:08', 'sahyudi', '2023-10-20 23:29:33', NULL);
INSERT INTO `menus` VALUES (25, 0, 'Sale', '#', 'fas fa-file-invoice', 0, 5, '[\"read\"]', 1, 0, '2023-09-20 05:14:31', 'sahyudi', '2023-09-30 05:29:17', 'sahyudi');
INSERT INTO `menus` VALUES (26, 25, 'Inquiry', 'sale/inquiry', 'fas fa-chart-alt', 1, 1, '[\"read\",\"create\",\"update\",\"delete\",\"quotation\",\"cetak\",\"export\"]', 1, 0, '2023-09-20 05:15:56', 'sahyudi', '2023-10-23 09:35:49', 'sahyudi');
INSERT INTO `menus` VALUES (27, 25, 'Quotation', 'sale/quotation', 'fas fa-sale', 1, 2, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"invoice\",\"export\"]', 1, 0, '2023-09-25 05:43:32', 'sahyudi', '2023-10-23 09:35:51', NULL);
INSERT INTO `menus` VALUES (28, 0, 'Archive', '#', 'fas fa-folder-open', 0, 0, '[\"read\"]', 1, 0, '2023-09-26 07:06:37', 'sahyudi', '2023-09-26 07:06:37', NULL);
INSERT INTO `menus` VALUES (29, 28, 'Document', 'archive/document', 'fas fa-document', 1, 1, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-09-26 07:07:33', 'sahyudi', '2023-09-26 07:07:33', NULL);
INSERT INTO `menus` VALUES (30, 28, 'Envelope', 'archive/envelope', 'fas fa-envelope', 1, 2, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-09-27 06:57:06', 'sahyudi', '2023-09-27 06:59:37', 'sahyudi');
INSERT INTO `menus` VALUES (31, 25, 'PO', 'sale/po', 'fas fa-sale', 1, 3, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\"]', 1, 0, '2023-09-27 13:34:18', 'sahyudi', '2023-10-23 09:35:54', 'sahyudi');
INSERT INTO `menus` VALUES (32, 0, 'Purchase', '#', 'fas fa-shopping-cart', 0, 7, '[\"read\"]', 1, 0, '2023-09-30 05:30:23', 'sahyudi', '2023-10-12 22:56:51', 'sahyudi');
INSERT INTO `menus` VALUES (33, 32, 'Purchase Order', 'purchase/order', 'fas fa-shopping-cart', 1, 2, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\"]', 1, 0, '2023-09-30 05:31:51', 'sahyudi', '2023-10-14 10:44:11', 'sahyudi');
INSERT INTO `menus` VALUES (34, 32, 'Inquiry', 'purchase/inquiry', 'fas fa-shopping-cart', 1, 1, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', 1, 0, '2023-09-30 05:32:36', 'sahyudi', '2023-10-23 05:57:08', 'sahyudi');
INSERT INTO `menus` VALUES (35, 32, 'Invoice', 'purchase/invoice', 'fas fa-shopping-cart', 1, 3, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', 1, 0, '2023-09-30 05:33:34', 'sahyudi', '2023-11-20 11:29:28', 'sahyudi');
INSERT INTO `menus` VALUES (36, 32, 'Delivery Order', 'purchase/delivery', 'fas fa-shopping-cart', 1, 4, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', 1, 0, '2023-09-30 05:34:40', 'sahyudi', '2023-10-17 11:15:28', 'sahyudi');
INSERT INTO `menus` VALUES (37, 0, 'Employee', '#', 'fas fa-users', 0, 8, '[\"read\"]', 1, 0, '2023-09-30 05:36:06', 'sahyudi', '2023-09-30 05:36:06', NULL);
INSERT INTO `menus` VALUES (38, 37, 'List', 'employee/data', 'fas fa-users', 1, 1, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-09-30 05:36:59', 'sahyudi', '2023-09-30 05:36:59', NULL);
INSERT INTO `menus` VALUES (39, 0, 'Operational', '#', 'fas fa-chart-line', 0, 7, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-09-30 05:38:46', 'sahyudi', '2023-10-09 20:41:56', 'sahyudi');
INSERT INTO `menus` VALUES (40, 39, 'Kategori', 'operational/category', 'fas fa-chart-line', 1, 1, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-09-30 05:39:35', 'sahyudi', '2023-09-30 05:41:12', 'sahyudi');
INSERT INTO `menus` VALUES (41, 18, 'Employee', 'employee', 'fas fa-users', 1, 4, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-09-30 05:44:38', 'sahyudi', '2023-09-30 05:44:38', NULL);
INSERT INTO `menus` VALUES (42, 25, 'Invoice Old', 'sale/invoice', 'fas fa-chart', 1, 4, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\",\"export\"]', 1, 0, '2023-10-04 05:37:46', 'sahyudi', '2023-11-20 11:29:30', NULL);
INSERT INTO `menus` VALUES (43, 39, 'Cost', 'operational/cost', 'fas fa-money', 1, 2, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\"]', 1, 0, '2023-10-09 20:42:53', 'sahyudi', '2023-10-09 20:42:53', NULL);
INSERT INTO `menus` VALUES (44, 25, 'Invoice', 'sale/delivery', 'fas fa-delivery', 1, 5, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\",\"export\"]', 1, 0, '2023-10-12 10:59:56', 'sahyudi', '2023-11-20 11:13:56', 'sahyudi');
INSERT INTO `menus` VALUES (45, 28, 'Categories', 'archive/categories', 'fas fa-file', 1, 0, '[\"read\",\"create\",\"update\",\"delete\"]', 1, 0, '2023-10-16 11:54:07', 'sahyudi', '2023-10-16 11:54:07', NULL);

-- ----------------------------
-- Table structure for purchase_delivery
-- ----------------------------
DROP TABLE IF EXISTS `purchase_delivery`;
CREATE TABLE `purchase_delivery`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `order_id` bigint NULL DEFAULT NULL,
  `invoice_id` bigint NULL DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `vendor_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `payment_stat` enum('BELUM BAYAR','BELUM LUNAS','LUNAS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'BELUM LUNAS',
  `issued_by` bigint NULL DEFAULT NULL,
  `checked_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recevied_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sender_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tax_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_delivery
-- ----------------------------
INSERT INTO `purchase_delivery` VALUES (9, '841feaa5-86a2-11ee-a145-3176bc4c4780', 3, NULL, 'd01', '2023-10-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', NULL, 'OPEN', 'BELUM LUNAS', 2, '1', '1', '1', NULL, NULL, NULL, '2023-11-19 13:11:45', 'sahyudi', NULL, NULL);

-- ----------------------------
-- Table structure for purchase_delivery_copy1
-- ----------------------------
DROP TABLE IF EXISTS `purchase_delivery_copy1`;
CREATE TABLE `purchase_delivery_copy1`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `order_id` bigint NULL DEFAULT NULL,
  `invoice_id` bigint NULL DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `vendor_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `issued_by` bigint NULL DEFAULT NULL,
  `checked_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recevied_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sender_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_delivery_copy1
-- ----------------------------
INSERT INTO `purchase_delivery_copy1` VALUES (6, '4657c364-6d51-11ee-b8db-e2e7e1b0cffd', 5, NULL, 'PD001/10/2023', '2023-10-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', NULL, 'OPEN', 2, 'Muhamad', 'Sahyudi', 'Muhamad Sahyudi', '2023-10-18 07:57:13', 'sahyudi', '2023-10-18 11:00:54', 'sahyudi');
INSERT INTO `purchase_delivery_copy1` VALUES (7, '90a2d530-6d6c-11ee-b8db-e2e7e1b0cffd', 5, NULL, 'PD0003/10/2023', '2023-10-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', NULL, 'OPEN', 2, 'muhamad', 'sahyudi', 'geranting', '2023-10-18 11:12:34', 'sahyudi', '2023-10-18 11:16:55', 'sahyudi');
INSERT INTO `purchase_delivery_copy1` VALUES (8, 'fe275152-717a-11ee-b8db-e2e7e1b0cffd', 7, NULL, '001/DO/10/2023', '2023-10-23', 2, 6, '085374131481', 'tuah@gmail.com', 'Naufal', NULL, 'OPEN', 5, 'Bambang', 'Joko', 'Naufal', '2023-10-23 15:05:55', 'venny', NULL, NULL);

-- ----------------------------
-- Table structure for purchase_delivery_item
-- ----------------------------
DROP TABLE IF EXISTS `purchase_delivery_item`;
CREATE TABLE `purchase_delivery_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `delivery_id` bigint NULL DEFAULT NULL,
  `item_order_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `tax` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE,
  INDEX `delivery_id`(`delivery_id` ASC) USING BTREE,
  CONSTRAINT `purchase_delivery_item_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `purchase_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_delivery_item
-- ----------------------------
INSERT INTO `purchase_delivery_item` VALUES (48, '84236231-86a2-11ee-a145-3176bc4c4780', 9, 16, 2, 3, 5, NULL, 0, NULL, NULL, '2023-11-19 13:11:45', 'sahyudi');
INSERT INTO `purchase_delivery_item` VALUES (49, '842364c8-86a2-11ee-a145-3176bc4c4780', 9, 17, 3, 3, 5, NULL, 0, NULL, NULL, '2023-11-19 13:11:45', 'sahyudi');
INSERT INTO `purchase_delivery_item` VALUES (50, '84236589-86a2-11ee-a145-3176bc4c4780', 9, 18, 7, 3, 5, NULL, 0, NULL, NULL, '2023-11-19 13:11:45', 'sahyudi');

-- ----------------------------
-- Table structure for purchase_delivery_item_copy1
-- ----------------------------
DROP TABLE IF EXISTS `purchase_delivery_item_copy1`;
CREATE TABLE `purchase_delivery_item_copy1`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `delivery_id` bigint NULL DEFAULT NULL,
  `item_order_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `tax` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE,
  INDEX `delivery_id`(`delivery_id` ASC) USING BTREE,
  CONSTRAINT `purchase_delivery_item_copy1_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `purchase_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_delivery_item_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_invoice
-- ----------------------------
DROP TABLE IF EXISTS `purchase_invoice`;
CREATE TABLE `purchase_invoice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `order_id` bigint NULL DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `vendor_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `issued_by` int NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `after_disc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `payment_stat` enum('BELUM BAYAR','BELUM LUNAS','LUNAS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'BELUM LUNAS',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_invoice
-- ----------------------------
INSERT INTO `purchase_invoice` VALUES (8, 'cf8d98e2-6b5f-11ee-9cff-9289f84058f7', 3, 'PI/00001', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', '20% Down Payment, 80% Before Shipping', 2, 'IDR', NULL, NULL, '600000', 'OPEN', 'BELUM LUNAS', '2023-10-15 20:36:13', 'sahyudi', '2023-10-16 22:40:38', 'sahyudi', 'N', NULL, NULL);
INSERT INTO `purchase_invoice` VALUES (9, '9585c8b5-6b68-11ee-9cff-9289f84058f7', 3, 'PI/00008', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', '20% Down Payment, 80% Before Shipping', 2, 'IDR', NULL, NULL, '650000', 'OPEN', 'BELUM LUNAS', '2023-10-15 21:39:01', 'sahyudi', '2023-10-16 22:40:38', NULL, 'N', NULL, NULL);
INSERT INTO `purchase_invoice` VALUES (10, '4d89172f-6b6b-11ee-9cff-9289f84058f7', 3, 'PI/00009', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', '20% Down Payment, 80% Before Shipping', 2, 'IDR', NULL, NULL, '1150000', 'OPEN', 'BELUM LUNAS', '2023-10-15 21:58:29', 'sahyudi', '2023-10-16 22:40:39', NULL, 'N', NULL, NULL);
INSERT INTO `purchase_invoice` VALUES (11, '7c019a2f-7177-11ee-b8db-e2e7e1b0cffd', 7, '001/PI/10/2023', '2023-10-23', '2023-10-23', 2, 6, '085374131481', 'tuah@gmail.com', 'Naufal', '20% Down Payment, 75% Before Shipping, 5% Retention ', 5, 'IDR', NULL, NULL, '10450000', 'OPEN', 'BELUM LUNAS', '2023-10-23 14:40:49', 'venny', '2023-11-03 15:07:44', 'sahyudi', 'N', NULL, NULL);

-- ----------------------------
-- Table structure for purchase_invoice_item
-- ----------------------------
DROP TABLE IF EXISTS `purchase_invoice_item`;
CREATE TABLE `purchase_invoice_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `invoice_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `qty` int NULL DEFAULT NULL,
  `tax` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_do` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_invoice_item
-- ----------------------------
INSERT INTO `purchase_invoice_item` VALUES (1, 'cfaf4b90-6b5f-11ee-9cff-9289f84058f7', 8, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 5, 0, 50, '120000', '300000', NULL, 'N', '2023-10-15 20:36:14', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (2, 'cfaf4e0c-6b5f-11ee-9cff-9289f84058f7', 8, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 5, 0, 50, '100000', '250000', NULL, 'N', '2023-10-15 20:36:14', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (3, 'cfaf4edd-6b5f-11ee-9cff-9289f84058f7', 8, 7, 'KH-001', 'NAMA PRODUK', 'DESKRIPSI PRODUK', 5, 0, 0, '10000', '50000', NULL, 'N', '2023-10-15 20:36:14', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (4, '959b4e6d-6b68-11ee-9cff-9289f84058f7', 9, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 5, 0, 50, '120000', '300000', NULL, 'N', '2023-10-15 21:39:02', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (5, '959b5021-6b68-11ee-9cff-9289f84058f7', 9, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 5, 0, 50, '100000', '250000', NULL, 'N', '2023-10-15 21:39:02', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (6, '959b50d7-6b68-11ee-9cff-9289f84058f7', 9, 7, 'KH-001', 'NAMA PRODUK', 'DESKRIPSI PRODUK', 10, 0, 0, '10000', '100000', NULL, 'N', '2023-10-15 21:39:02', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (7, '4da16f7c-6b6b-11ee-9cff-9289f84058f7', 10, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 5, 0, 0, '120000', '600000', NULL, 'N', '2023-10-15 21:58:29', 'sahyudi', '2023-10-23 14:45:51', NULL);
INSERT INTO `purchase_invoice_item` VALUES (8, '4da1714f-6b6b-11ee-9cff-9289f84058f7', 10, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 5, 0, 0, '100000', '500000', NULL, 'N', '2023-10-15 21:58:29', 'sahyudi', '2023-10-23 14:45:51', NULL);
INSERT INTO `purchase_invoice_item` VALUES (9, '4da1721d-6b6b-11ee-9cff-9289f84058f7', 10, 7, 'KH-001', 'NAMA PRODUK', 'DESKRIPSI PRODUK', 5, 0, 0, '10000', '50000', NULL, 'N', '2023-10-15 21:58:29', 'sahyudi', '2023-10-23 14:45:51', NULL);
INSERT INTO `purchase_invoice_item` VALUES (25, '11736dd7-7a20-11ee-a145-3176bc4c4780', 11, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 10, 0, 0, '120000', '1200000', NULL, 'N', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (26, '11736eb9-7a20-11ee-a145-3176bc4c4780', 11, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 90, 0, 0, '100000', '9000000', NULL, 'N', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (27, '11736f5a-7a20-11ee-a145-3176bc4c4780', 11, 4, 'K0-0001', 'deskripsi', 'Nama item', 1, 0, 0, '150000', '150000', NULL, 'N', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_invoice_item` VALUES (28, '11736f99-7a20-11ee-a145-3176bc4c4780', 11, 7, 'KH-001', 'DESKRIPSI PRODUK', 'NAMA PRODUK', 1, 0, 0, '100000', '100000', NULL, 'N', '2023-11-03 15:07:44', 'sahyudi', NULL, NULL);

-- ----------------------------
-- Table structure for purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE `purchase_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `quote_id` bigint NULL DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `vendor_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `issued_by` int NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `after_disc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `is_delivery` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_order
-- ----------------------------
INSERT INTO `purchase_order` VALUES (3, 'a9953b7e-6a50-11ee-9cff-9289f84058f7', 2, 'PO/009/VI/2023', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', 2, 'IDR', NULL, NULL, '600000', '20% Down Payment, 80% Before Shipping', 'CLOSE', 'N', '2023-10-14 12:15:16', 'sahyudi', '2023-10-16 22:40:15', 'sahyudi', 'N', NULL, NULL);
INSERT INTO `purchase_order` VALUES (4, '8f07aab2-6a9f-11ee-9cff-9289f84058f7', 2, 'PO/009/VI/2023', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', 2, 'IDR', NULL, NULL, '600000', '20% Down Payment, 80% Before Shipping', 'OPEN', 'N', '2023-10-14 21:40:02', 'sahyudi', '2023-10-16 22:40:21', NULL, 'Y', '2023-10-14 21:43:00', 'sahyudi');
INSERT INTO `purchase_order` VALUES (5, '8aa025c9-6b6b-11ee-9cff-9289f84058f7', 2, 'PO/010/VI/2023', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', 2, 'IDR', NULL, NULL, '1150000', '20% Down Payment, 80% Before Shipping', 'OPEN', 'N', '2023-10-15 22:00:12', 'sahyudi', '2023-10-23 13:52:28', 'venny', 'N', NULL, NULL);
INSERT INTO `purchase_order` VALUES (6, '7b4e9c79-716f-11ee-b8db-e2e7e1b0cffd', 4, 'PO/011/VII/2023', '2023-10-23', '2023-10-23', 2, 6, '085374131481', 'tuah@gmail.com', 'Naufal', 5, 'IDR', NULL, NULL, '480000', '20% Down Payment, 80% Before Shipping', 'OPEN', 'N', '2023-10-23 13:43:31', 'venny', '2023-10-23 13:57:30', NULL, 'Y', '2023-10-23 13:57:30', 'venny');
INSERT INTO `purchase_order` VALUES (7, 'bb7ee15a-7173-11ee-b8db-e2e7e1b0cffd', 5, '001/PO/10/2023', '2023-10-23', '2023-10-23', 2, 6, '085374131481', 'tuah@gmail.com', 'Naufal', 5, 'IDR', NULL, NULL, '2100000', '20% Down Payment, 80% Before Shipping', 'CLOSE', 'N', '2023-10-23 14:13:57', 'venny', '2023-10-23 14:40:49', 'venny', 'N', NULL, NULL);
INSERT INTO `purchase_order` VALUES (8, '171597c2-7175-11ee-b8db-e2e7e1b0cffd', 2, '001', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', 2, 'IDR', NULL, NULL, '1150000', 'catatan', 'OPEN', 'N', '2023-10-23 14:23:40', 'sahyudi', '2023-10-23 14:25:53', 'sahyudi', 'N', NULL, NULL);

-- ----------------------------
-- Table structure for purchase_order_item
-- ----------------------------
DROP TABLE IF EXISTS `purchase_order_item`;
CREATE TABLE `purchase_order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `order_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `qty` int NULL DEFAULT NULL,
  `tax` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_do` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_order_item
-- ----------------------------
INSERT INTO `purchase_order_item` VALUES (13, '8f0b5e6e-6a9f-11ee-9cff-9289f84058f7', 4, 2, 'K0-002', 'DESKRIPSI BARANG', 'NAMA ITEM', 5, 0, 50, '120000', '300000', NULL, 'N', '2023-10-14 21:40:02', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (14, '8f0b607a-6a9f-11ee-9cff-9289f84058f7', 4, 3, 'K-002', 'DESKRIPSI', 'NAMA ITEM 2', 5, 0, 50, '100000', '250000', NULL, 'N', '2023-10-14 21:40:02', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (15, '8f0b614a-6a9f-11ee-9cff-9289f84058f7', 4, 7, 'KH-001', 'DESKRIPSI PRODUK', 'NAMA PRODUK', 5, 0, 0, '10000', '50000', NULL, 'N', '2023-10-14 21:40:02', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (16, 'b25fdfdd-6a9f-11ee-9cff-9289f84058f7', 3, 2, 'K0-002', 'DESKRIPSI BARANG', 'NAMA ITEM', 5, 0, 50, '120000', '300000', NULL, 'N', '2023-10-14 21:41:01', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (17, 'b25fe17e-6a9f-11ee-9cff-9289f84058f7', 3, 3, 'K-002', 'DESKRIPSI', 'NAMA ITEM 2', 5, 0, 50, '100000', '250000', NULL, 'N', '2023-10-14 21:41:01', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (18, 'b25fe226-6a9f-11ee-9cff-9289f84058f7', 3, 7, 'KH-001', 'DESKRIPSI PRODUK', 'NAMA PRODUK', 5, 0, 0, '10000', '50000', NULL, 'N', '2023-10-14 21:41:01', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (31, '7b4ec7b2-716f-11ee-b8db-e2e7e1b0cffd', 0, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 4, 0, 0, '120000', '480000', NULL, 'N', '2023-10-23 13:43:31', 'venny', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (32, 'bb102791-7170-11ee-b8db-e2e7e1b0cffd', 5, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 5, 0, 0, '120000', '600000', NULL, 'N', '2023-10-23 13:52:28', 'venny', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (33, 'bb10678c-7170-11ee-b8db-e2e7e1b0cffd', 5, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 5, 0, 0, '100000', '500000', NULL, 'N', '2023-10-23 13:52:28', 'venny', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (34, 'bb1067f4-7170-11ee-b8db-e2e7e1b0cffd', 5, 7, 'KH-001', 'NAMA PRODUK', 'DESKRIPSI PRODUK', 5, 0, 0, '10000', '50000', NULL, 'N', '2023-10-23 13:52:28', 'venny', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (35, 'bb7efcea-7173-11ee-b8db-e2e7e1b0cffd', 7, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 10, 0, 0, '120000', '1200000', NULL, 'N', '2023-10-23 14:13:57', 'venny', '2023-10-23 14:19:58', NULL);
INSERT INTO `purchase_order_item` VALUES (36, 'bb7efeca-7173-11ee-b8db-e2e7e1b0cffd', 7, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 9, 0, 0, '100000', '900000', NULL, 'N', '2023-10-23 14:13:57', 'venny', '2023-10-23 14:19:59', NULL);
INSERT INTO `purchase_order_item` VALUES (40, '66025994-7175-11ee-b8db-e2e7e1b0cffd', 8, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 5, 0, 0, '120000', '600000', NULL, 'N', '2023-10-23 14:25:53', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (41, '66025a97-7175-11ee-b8db-e2e7e1b0cffd', 8, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 5, 0, 0, '100000', '500000', NULL, 'N', '2023-10-23 14:25:53', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_order_item` VALUES (42, '66025ae9-7175-11ee-b8db-e2e7e1b0cffd', 8, 7, 'KH-001', 'NAMA PRODUK', 'DESKRIPSI PRODUK', 5, 0, 0, '10000', '50000', NULL, 'N', '2023-10-23 14:25:53', 'sahyudi', NULL, NULL);

-- ----------------------------
-- Table structure for purchase_quote
-- ----------------------------
DROP TABLE IF EXISTS `purchase_quote`;
CREATE TABLE `purchase_quote`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `reference` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `vendor_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `issued_by` int NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `after_disc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_quote
-- ----------------------------
INSERT INTO `purchase_quote` VALUES (2, '9df65f7c-6999-11ee-9cff-9289f84058f7', '001/PO/2023', '2023-10-13', '2023-11-13', 2, 5, '085374131481', 'tuah@gmail.com', 'sahyudi', 2, 'IDR', NULL, NULL, '1150000', 'CLOSE', '2023-10-13 14:24:59', 'sahyudi', '2023-10-16 22:40:06', 'sahyudi', 'N', '2023-10-14 05:58:53', 'sahyudi');
INSERT INTO `purchase_quote` VALUES (3, 'fab793d0-6a4b-11ee-9cff-9289f84058f7', '002/PQ/10/2023', '2023-10-14', '2023-11-14', 4, 4, '000', 'sales2@saitecmeter.com', 'Ranti', 2, 'IDR', NULL, NULL, '2200000', 'OPEN', '2023-10-14 11:41:45', 'sahyudi', '2023-10-16 22:40:07', 'sahyudi', 'N', NULL, NULL);
INSERT INTO `purchase_quote` VALUES (4, 'ff5a9fe1-716e-11ee-b8db-e2e7e1b0cffd', '003/PQ/10/2023', '2023-10-23', '2023-10-23', 2, 6, '085374131481', 'tuah@gmail.com', 'Naufal', 5, 'IDR', NULL, NULL, '480000', 'CLOSE', '2023-10-23 13:40:03', 'venny', '2023-10-23 13:57:20', 'venny', 'Y', '2023-10-23 13:57:20', 'venny');
INSERT INTO `purchase_quote` VALUES (5, '6bd845ea-7173-11ee-b8db-e2e7e1b0cffd', '001/IQ/10/2023', '2023-10-23', '2023-10-23', 2, 6, '085374131481', 'tuah@gmail.com', 'Naufal', 5, 'IDR', NULL, NULL, '2100000', 'CLOSE', '2023-10-23 14:11:43', 'venny', '2023-10-23 14:13:57', 'venny', 'N', NULL, NULL);
INSERT INTO `purchase_quote` VALUES (6, '58f1ac75-718c-11ee-b8db-e2e7e1b0cffd', '-', '2023-10-23', '2023-11-23', 2, 6, '085374131481', 'tuah@gmail.com', 'Ms. Ranti', 6, 'IDR', NULL, NULL, '1842621312', 'OPEN', '2023-10-23 17:10:09', 'ranti', NULL, NULL, 'N', NULL, NULL);

-- ----------------------------
-- Table structure for purchase_quote_item
-- ----------------------------
DROP TABLE IF EXISTS `purchase_quote_item`;
CREATE TABLE `purchase_quote_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `quote_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `qty` int NULL DEFAULT NULL,
  `tax` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_do` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_quote_item
-- ----------------------------
INSERT INTO `purchase_quote_item` VALUES (7, '5863e15d-6a18-11ee-9cff-9289f84058f7', 2, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 5, 0, 0, '120000', '600000', NULL, 'N', '2023-10-14 05:32:08', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (8, '5863e2cb-6a18-11ee-9cff-9289f84058f7', 2, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 5, 0, 0, '100000', '500000', NULL, 'N', '2023-10-14 05:32:08', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (9, '5863e319-6a18-11ee-9cff-9289f84058f7', 2, 7, 'KH-001', 'NAMA PRODUK', 'DESKRIPSI PRODUK', 5, 0, 0, '10000', '50000', NULL, 'N', '2023-10-14 05:32:08', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (12, '0667c81e-6a4c-11ee-9cff-9289f84058f7', 3, 2, 'K0-002', 'NAMA ITEM', 'DESKRIPSI BARANG', 10, 0, 0, '120000', '1200000', NULL, 'N', '2023-10-14 11:42:04', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (13, '0667c9af-6a4c-11ee-9cff-9289f84058f7', 3, 3, 'K-002', 'NAMA ITEM 2', 'DESKRIPSI', 10, 0, 0, '100000', '1000000', NULL, 'N', '2023-10-14 11:42:04', 'sahyudi', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (14, 'ff5aace7-716e-11ee-b8db-e2e7e1b0cffd', 4, 2, 'K0-002', 'DESKRIPSI BARANG', 'NAMA ITEM', 4, 0, 0, '120000', '480000', NULL, 'N', '2023-10-23 13:40:03', 'venny', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (15, '6bd85568-7173-11ee-b8db-e2e7e1b0cffd', 5, 2, 'K0-002', 'DESKRIPSI BARANG', 'NAMA ITEM', 10, 0, 0, '120000', '1200000', NULL, 'N', '2023-10-23 14:11:43', 'venny', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (16, '6bd856b5-7173-11ee-b8db-e2e7e1b0cffd', 5, 3, 'K-002', 'DESKRIPSI', 'NAMA ITEM 2', 9, 0, 0, '100000', '900000', NULL, 'N', '2023-10-23 14:11:43', 'venny', NULL, NULL);
INSERT INTO `purchase_quote_item` VALUES (17, '58f1be4c-718c-11ee-b8db-e2e7e1b0cffd', 6, 12, '111', 'Water Meter Modbus DN1', 'Water Meter Modbus', 32, 11, 3, '534800', '18426213.12', NULL, 'N', '2023-10-23 17:10:09', 'ranti', NULL, NULL);

-- ----------------------------
-- Table structure for resi_tracking
-- ----------------------------
DROP TABLE IF EXISTS `resi_tracking`;
CREATE TABLE `resi_tracking`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `resi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 896 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resi_tracking
-- ----------------------------
INSERT INTO `resi_tracking` VALUES (1, 'RESI-GZ-64096', '2', '2022-10-01 21:43:59', 'sahyudi');
INSERT INTO `resi_tracking` VALUES (2, 'RESI-GZ-63916/DB', '4', '2022-10-01 21:51:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (3, 'RESI-GZ-66271/KN', '4', '2022-10-01 21:59:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (4, 'RESI-YW-25228/LS', '4', '2022-10-01 22:00:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (5, 'RESI-GZ-65182/LS', '4', '2022-10-01 22:01:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (6, 'RESI-GZ-63998/DB', '4', '2022-10-01 22:01:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (7, 'RESI-GZ-64255/DB', '4', '2022-10-01 22:02:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (8, 'RESI-GZ-64161/DB', '4', '2022-10-01 22:02:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (9, 'RESI-GZ-64317/DB', '4', '2022-10-01 22:02:58', 'ahmad');
INSERT INTO `resi_tracking` VALUES (10, 'RESI-GZ-64856/DB', '4', '2022-10-01 22:30:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (11, 'RESI-GZ-64856/DB', '4', '2022-10-01 22:47:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (12, 'RESI-GZ-66126/DB', '4', '2022-10-02 00:02:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (13, 'RESI-GZ-66126/DB', '4', '2022-10-02 00:05:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (14, 'RESI-GZ-66126/DB', '3', '2022-10-02 00:10:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (15, 'RESI-YW-24956/DB', '4', '2022-10-02 00:36:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (16, 'RESI-YW-25183/DB', '4', '2022-10-04 22:52:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (17, 'RESI-YW-24925', '4', '2022-10-04 22:59:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (18, 'RESI-YW-24955', '4', '2022-10-04 23:11:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (19, 'RESI-YW-25092/LS', '4', '2022-10-04 23:24:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (20, 'RESI-YW-24938/DB', '3', '2022-10-05 00:07:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (21, 'RESI-YW-24938/DB', '4', '2022-10-05 00:19:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (22, 'RESI-YW-25183/DB', '4', '2022-10-05 00:37:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (23, 'RESI-YW-24917/DB', '4', '2022-10-05 00:56:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (24, 'RESI-YW-24917/DB', '4', '2022-10-05 00:57:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (25, 'RESI-GZ-64409/DB', '4', '2022-10-05 14:54:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (26, 'RESI-GZ-65868/DB', '4', '2022-10-05 15:06:49', 'ahmad');
INSERT INTO `resi_tracking` VALUES (27, 'RESI-YW-25815/DB', '4', '2022-10-05 15:08:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (28, 'RESI-YW-25261/LS', '4', '2022-10-05 15:19:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (29, 'RESI-GZ-66126/DB', '4', '2022-10-06 12:37:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (30, 'RESI-GZ-64858/DB', '4', '2022-10-06 12:42:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (31, 'RESI-GZ-64748/BD', '4', '2022-10-06 12:55:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (32, 'RESI-GZ-68182', '3', '2022-10-06 13:16:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (33, 'RESI-GZ-65182/LS', '4', '2022-10-06 13:28:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (34, 'RESI-GZ-65409/DB', '4', '2022-10-06 13:29:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (35, 'RESI-GZ-65201', '4', '2022-10-06 13:29:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (36, 'RESI-YW-25616/AL', '3', '2022-10-06 13:30:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (37, 'RESI-GZ-66373', '3', '2022-10-06 13:32:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (38, 'RESI-GZ-66806', '3', '2022-10-06 13:36:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (39, 'RESI-GZ-66807/DB', '3', '2022-10-06 13:36:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (40, 'RESI-GZ-66779', '3', '2022-10-06 14:07:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (41, 'RESI-YW-26624', '2', '2022-10-07 14:38:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (42, 'RESI-YW-26602', '2', '2022-10-07 14:38:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (43, 'RESI-GZ-68878', '2', '2022-10-07 14:48:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (44, 'RESI-YW-26623', '2', '2022-10-07 14:50:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (45, 'RESI-YW-25518/LS', '3', '2022-10-07 14:52:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (46, 'RESI-GZ-68797', '2', '2022-10-07 14:53:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (47, 'RESI-GZ-66178/DB', '4', '2022-10-07 14:59:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (48, 'RESI-YW-26110/DB', '2', '2022-10-07 16:30:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (49, 'RESI-GZ-64718/DB', '4', '2022-10-07 16:31:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (50, 'RESI-GZ-64842/DB', '4', '2022-10-07 16:33:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (51, 'RESI-YW-26455', '3', '2022-10-07 16:35:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (52, 'RESI-YW-26455', '3', '2022-10-07 16:36:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (53, 'RESI-GZ-68330/HR', '3', '2022-10-07 16:37:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (54, 'RESI-YW-24971/DB', '3', '2022-10-07 16:40:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (55, 'RESI-GZ-68339/HR', '2', '2022-10-07 20:19:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (56, 'RESI-GZ-68339/HR', '2', '2022-10-07 20:23:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (57, 'RESI-GZ-68359', '2', '2022-10-07 20:24:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (58, 'RESI-GZ-68581', '2', '2022-10-07 20:25:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (59, 'RESI-YW-26259/KN', '2', '2022-10-07 20:26:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (60, 'RESI-YW-26330/HR', '2', '2022-10-07 20:27:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (61, 'RESI-YW-26214', '2', '2022-10-07 20:28:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (62, 'RESI-YW-25889/HR', '2', '2022-10-07 20:29:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (63, 'RESI-YW-24918/DB', '4', '2022-10-07 20:31:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (64, 'RESI-YW-26216/DB', '2', '2022-10-07 20:32:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (65, 'RESI-GZ-67066/KN', '3', '2022-10-07 20:33:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (66, 'RESI-YW-26070/DB', '2', '2022-10-07 20:35:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (67, 'RESI-GZ-68550', '2', '2022-10-07 20:36:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (68, 'RESI-YW-25845/DB', '2', '2022-10-07 20:37:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (69, 'RESI-GZ-66369/DB', '2', '2022-10-07 20:38:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (70, 'RESI-YW-25631/DB', '2', '2022-10-07 20:44:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (71, 'RESI-YW-25603/DB', '2', '2022-10-07 20:45:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (72, 'RESI-GZ-66868/AL', '2', '2022-10-07 20:46:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (73, 'RESI-YW-25572/KN', '2', '2022-10-07 20:48:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (74, 'RESI-GZ-66247/KN', '3', '2022-10-07 20:49:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (75, 'RESI-YW-25940', '2', '2022-10-07 20:50:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (76, 'RESI-GZ-67688/DB', '2', '2022-10-07 21:12:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (77, 'RESI-GZ-68466', '2', '2022-10-07 21:12:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (78, 'RESI-YW-25684/KN', '2', '2022-10-07 21:13:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (79, 'RESI-YW-26259/KN', '2', '2022-10-07 21:14:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (80, 'RESI-GZ-69135', '2', '2022-10-08 18:06:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (81, 'CRESI-GZ-69135', '3', '2022-10-08 18:22:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (82, 'RESI-GZ-69135', '3', '2022-10-08 18:22:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (83, 'RESI-GZ-66930/HR', '3', '2022-10-08 19:16:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (84, 'RESI-YW-25940', '3', '2022-10-08 19:19:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (85, 'RESI-YW-26200', '3', '2022-10-08 19:25:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (86, 'RESI-YW-26214', '3', '2022-10-08 19:27:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (87, 'RESI-YW-26217/HR', '3', '2022-10-08 19:32:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (88, 'RESI-YW-26216/DB', '3', '2022-10-08 19:32:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (89, 'RESI-GZ-68582/HR', '3', '2022-10-08 19:45:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (90, 'RESI-GZ-68581', '3', '2022-10-08 19:46:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (91, 'RESI-GZ-68819/HR', '3', '2022-10-08 19:59:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (92, 'RESI-GZ-68796/HR', '3', '2022-10-08 20:05:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (93, 'RESI-YW-26472/HR', '3', '2022-10-08 20:10:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (94, 'RESI-GZ-69255', '2', '2022-10-10 09:56:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (95, 'RESI-GZ-68256/HR', '2', '2022-10-10 10:00:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (96, 'RESI-GZ-66247/KN', '4', '2022-10-10 10:12:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (97, 'RESI-GZ-66247/KN', '3', '2022-10-10 10:15:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (98, 'RESI-GZ-64857', '3', '2022-10-10 10:23:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (99, 'RESI-GZ-66247/KN', '4', '2022-10-12 14:35:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (100, 'RESI-YW-26798/HR', '2', '2022-10-12 20:11:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (101, 'RESI-GZ-69599', '2', '2022-10-12 20:13:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (102, 'RESI-YW-26822', '2', '2022-10-13 08:43:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (103, 'RESI-GZ-69829', '2', '2022-10-14 20:56:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (104, 'RESI-GZ-69960', '2', '2022-10-15 17:23:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (105, 'RESI-GZ-69947', '2', '2022-10-15 17:27:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (106, 'RESI-GZ-66868/AL', '3', '2022-10-17 09:12:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (107, 'RESI-GZ-668060', '4', '2022-10-17 09:16:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (108, 'RESI-GZ-66930/HR', '4', '2022-10-17 10:45:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (109, 'RESI-YW-25616/AL', '4', '2022-10-17 12:37:49', 'ahmad');
INSERT INTO `resi_tracking` VALUES (110, 'RESI-GZ-68879/HR', '3', '2022-10-18 12:51:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (111, 'RESI-YW-27012', '2', '2022-10-19 14:02:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (112, 'RESI-YW-26876/TK', '2', '2022-10-20 10:20:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (113, 'RESI-YW-26976/TK', '2', '2022-10-20 10:21:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (114, 'RESI-GZ-66807/DB', '4', '2022-10-20 12:50:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (115, 'RESI-GZ-70363', '2', '2022-10-20 14:14:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (116, 'RESI-GZ-67066/KN', '4', '2022-10-20 22:26:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (117, 'RESI-YW-27102', '2', '2022-10-22 09:15:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (118, 'RESI-GZ-70626', '2', '2022-10-22 17:44:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (119, 'RESI-GZ-70592', '2', '2022-10-22 17:45:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (120, 'RESI-YW-27154', '2', '2022-10-24 14:26:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (121, 'RESI-GZ-70407', '2', '2022-10-24 14:57:49', 'ahmad');
INSERT INTO `resi_tracking` VALUES (122, 'RESI-YW-26070/DB', '3', '2022-10-24 15:37:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (123, 'RESI-YW-25631/DB', '3', '2022-10-24 15:38:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (124, 'RESI-GZ-68339/HR', '4', '2022-10-24 17:21:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (125, 'RESI-GZ-68466', '4', '2022-10-24 17:28:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (126, 'RESI-YW-27190', '2', '2022-10-25 13:55:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (127, 'RESI-YW-26070/DB', '4', '2022-10-25 15:05:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (128, 'RESI-YW-26110/DB', '4', '2022-10-25 17:18:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (129, 'RESI-YW-26216/DB', '4', '2022-10-25 17:18:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (130, 'RESI-YW-26217/HR', '4', '2022-10-25 17:19:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (131, 'RESI-YW-27401', '2', '2022-11-01 12:34:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (132, 'RESI-YW-27401', '2', '2022-11-01 12:41:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (133, 'RESI-GZ-66271/KN', '4', '2022-11-03 08:19:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (134, 'RESI-YW-25684/KN', '1', '2022-11-03 08:19:58', 'ahmad');
INSERT INTO `resi_tracking` VALUES (135, 'RESI-GZ-70239/HR', '2', '2022-11-03 10:13:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (136, 'RESI-YW-27327/MM', '2', '2022-11-03 10:24:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (137, 'RESI-YW-27360', '2', '2022-11-03 13:32:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (138, 'RESI-YW-27359/HR', '2', '2022-11-03 13:32:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (139, 'RESI-YW-25518/LS', '4', '2022-11-08 09:48:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (140, 'RESI-YW-26622/HR', '4', '2022-11-08 12:21:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (141, 'RESI-YW-27152', '3', '2022-11-10 12:02:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (142, 'RESI-GZ-71612', '2', '2022-11-13 22:33:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (143, 'RESI-GZ-71800', '2', '2022-11-14 19:56:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (144, 'RESI-YW-26723', '2', '2022-11-17 20:05:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (145, 'RESI-YW-26723', '4', '2022-11-17 20:05:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (146, 'RESI-YW-26822', '4', '2022-11-17 20:12:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (147, 'RESI-YW-26798/HR', '4', '2022-11-17 20:13:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (148, 'CRESI-GZ-69135', '4', '2022-11-17 20:14:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (149, 'RESI-GZ-69135', '4', '2022-11-17 20:15:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (150, 'RESI-GZ-69256/HR', '4', '2022-11-17 20:24:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (151, 'RESI-YW-28807', '2', '2022-12-05 18:46:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (152, 'RESI-YW-28893', '3', '2022-12-12 21:19:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (153, 'RESI-GZ-73544', '3', '2022-12-19 11:09:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (154, 'RESI-GZ-71808/HR', '4', '2022-12-19 20:04:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (155, 'RESI-GZ-71612', '4', '2022-12-19 20:07:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (156, 'RESI-GZ-71800', '4', '2022-12-19 20:07:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (157, 'RESI-GZ-72199', '4', '2022-12-19 20:07:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (158, 'RESI-GZ-72487', '4', '2022-12-19 20:07:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (159, 'RESI-YW-27560', '4', '2022-12-19 20:10:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (160, 'RESI-YW-27757', '4', '2022-12-19 20:10:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (161, 'RESI-GZ-71540', '4', '2022-12-19 20:10:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (162, 'RESI-GZ-70407', '4', '2022-12-19 20:11:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (163, 'RESI-YW-27102', '4', '2022-12-19 20:11:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (164, 'RESI-GZ-70592', '4', '2022-12-19 20:12:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (165, 'RESI-GZ-70626', '4', '2022-12-19 20:12:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (166, 'RESI-YW-27152', '4', '2022-12-19 20:12:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (167, 'RESI-YW-27154', '4', '2022-12-19 20:12:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (168, 'RESI-YW-27190', '4', '2022-12-19 20:12:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (169, 'RESI-GZ-71004', '4', '2022-12-19 20:13:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (170, 'RESI-GZ-71068', '4', '2022-12-19 20:13:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (171, 'RESI-GZ-71148', '4', '2022-12-19 20:13:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (172, 'RESI-GZ-71253', '4', '2022-12-19 20:13:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (173, 'RESI-YW-27359/HR', '4', '2022-12-19 20:15:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (174, 'RESI-YW-27360', '4', '2022-12-19 20:15:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (175, 'RESI-YW-27401', '4', '2022-12-19 20:15:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (176, 'RESI-GZ-71603', '3', '2022-12-19 20:16:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (177, 'RESI-GZ-72443', '3', '2022-12-19 20:17:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (178, 'RESI-GZ-72646', '3', '2022-12-19 20:18:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (179, 'RESI-YW-28476', '3', '2022-12-19 20:18:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (180, 'RESI-GZ-72660', '3', '2022-12-19 20:18:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (181, 'RESI-YW-28524', '3', '2022-12-19 20:18:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (182, 'RESI-GZ-72714', '3', '2022-12-19 20:19:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (183, 'RESI-GZ-72982', '3', '2022-12-19 20:19:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (184, 'RESI-GZ-73116/HR', '3', '2022-12-19 20:19:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (185, 'RESI-YW-28807', '3', '2022-12-19 20:19:58', 'ahmad');
INSERT INTO `resi_tracking` VALUES (186, 'RESI-GZ-73283', '3', '2022-12-19 20:20:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (187, 'RESI-GZ-73613', '3', '2022-12-19 20:20:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (188, 'RESI-YW-29120', '3', '2022-12-19 20:21:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (189, 'RESI-YW-29121', '3', '2022-12-19 20:21:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (190, 'RESI-YW-29123', '3', '2022-12-19 20:22:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (191, 'RESI-GZ-74021', '2', '2022-12-19 20:22:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (192, 'RESI-GZ-74029', '2', '2022-12-19 20:22:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (193, 'RESI-GZ-74036', '2', '2022-12-19 20:22:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (194, 'RESI-GZ-74029', '2', '2022-12-19 20:23:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (195, 'RESI-GZ-74036', '2', '2022-12-19 20:23:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (196, 'RESI-GZ-74116', '2', '2022-12-19 20:23:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (197, 'RESI-GZ-74238', '2', '2022-12-19 20:23:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (198, 'RESI-GZ-74268', '2', '2022-12-19 20:23:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (199, 'RESI-YW-25631/DB', '4', '2022-12-19 20:26:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (200, 'RESI-YW-25940', '4', '2022-12-19 22:41:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (201, 'RESI-YW-29282', '3', '2022-12-20 00:27:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (202, 'RESI-YW-29283', '3', '2022-12-20 00:39:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (203, 'RESI-GZ-73540', '3', '2022-12-20 00:47:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (204, 'RESI-GZ-74290/jh', '2', '2022-12-20 13:54:58', 'ahmad');
INSERT INTO `resi_tracking` VALUES (205, 'RESI-GZ-72487', '4', '2022-12-20 14:08:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (206, 'RESI-YW-28524', '3', '2022-12-27 20:02:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (207, 'RESI-YW-29975', '2', '2023-01-06 17:13:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (208, 'RESI-YW-29976', '2', '2023-01-06 17:17:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (209, 'RESI-YW-29974', '2', '2023-01-06 17:26:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (210, 'RESI-GZ-74238', '4', '2023-01-06 17:29:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (211, 'RESI-GZ-72646', '4', '2023-01-06 17:31:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (212, 'RESI-GZ-73540', '4', '2023-01-07 12:17:58', 'ahmad');
INSERT INTO `resi_tracking` VALUES (213, 'RESI-GZ-74238', '4', '2023-01-08 00:53:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (214, 'RESI-GZ-74238', '4', '2023-01-08 00:57:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (215, 'RESI-GZ-68182', '4', '2023-01-08 11:15:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (216, 'LLP HAIR MASK 04/01/2023', '2', '2023-01-08 11:47:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (217, 'LLP ROLL STICKER 04/01/2023', '2', '2023-01-08 11:47:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (218, 'LLP ROLL STICKER 04/01/2023', '3', '2023-01-08 12:09:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (219, 'LLP HAIR MASK 04/01/2023', '3', '2023-01-08 12:09:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (220, 'LLP ROLL STICKER 04/01/2023', '3', '2023-01-08 12:09:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (221, 'LLP OBO 08/01/2023', '3', '2023-01-08 12:42:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (222, 'LLP VASELINE 08/01/2023', '3', '2023-01-08 12:46:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (223, 'RESI-YW-29844', '2', '2023-01-09 00:21:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (224, 'RESI-GZ-72443', '4', '2023-01-09 00:21:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (225, 'RESI-GZ-75715', '2', '2023-01-09 00:22:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (226, 'RESI-GZ-74465/HR', '3', '2023-01-09 00:23:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (227, 'RESI-GZ-74488', '3', '2023-01-09 00:24:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (228, 'RESI-GZ-74290/jh', '3', '2023-01-09 00:24:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (229, 'RESI-GZ-72024/HR', '4', '2023-01-09 00:26:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (230, 'RESI-YW-29965', '3', '2023-01-09 00:27:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (231, 'RESI-YW-29562', '3', '2023-01-09 00:30:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (232, 'RESI-YW-29594', '3', '2023-01-09 00:30:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (233, 'RESI-YW-29691', '3', '2023-01-09 00:30:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (234, 'RESI-YW-29735', '3', '2023-01-09 00:30:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (235, 'RESI-YW-25684/KN', '4', '2023-01-09 00:31:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (236, 'RESI-GZ-75942', '2', '2023-01-09 00:38:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (237, 'RESI-GZ-75943', '2', '2023-01-09 00:38:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (238, 'RESI-GZ-75063', '3', '2023-01-09 00:44:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (239, 'RESI-GZ-75269', '3', '2023-01-09 00:44:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (240, 'RESI-GZ-75300', '3', '2023-01-09 00:44:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (241, 'RESI-GZ-74821', '3', '2023-01-09 00:44:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (242, 'RESI-YW-30082', '3', '2023-01-09 16:13:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (243, 'RESI-YW-30067', '3', '2023-01-09 16:19:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (244, 'LLP0002245', '3', '2023-01-13 19:11:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (245, 'T0001378', '3', '2023-01-15 02:47:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (246, 'LLP0002309', '3', '2023-01-15 02:52:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (247, 'LLP0002287', '3', '2023-01-15 02:59:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (248, 'RESI-YW-28807', '4', '2023-01-15 03:04:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (249, 'RESI-YW-30189', '3', '2023-01-15 03:06:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (250, 'RESI-YW-30175', '3', '2023-01-15 03:07:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (251, 'RESI-GZ-76665', '3', '2023-01-15 03:08:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (252, 'RESI-YW-30029', '3', '2023-01-15 03:09:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (253, 'RESI-YW-29975', '3', '2023-01-15 03:10:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (254, 'RESI-YW-29974', '3', '2023-01-15 03:11:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (255, 'RESI-YW-29976', '3', '2023-01-15 03:12:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (256, 'LLP0002227', '3', '2023-01-15 03:15:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (257, 'LLP0002196', '3', '2023-01-15 03:22:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (258, 'RESI-YW-30224', '3', '2023-01-15 03:36:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (259, 'RESI-YW-30310', '3', '2023-01-15 03:39:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (260, 'RESI-GZ-74116', '3', '2023-01-15 03:40:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (261, 'RESI-GZ-68359', '3', '2023-01-15 03:40:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (262, 'RESI-GZ-68359', '4', '2023-01-15 03:40:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (263, 'RESI-GZ-73283', '4', '2023-01-15 03:42:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (264, 'RESI-GZ-73613', '4', '2023-01-15 03:43:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (265, 'RESI-YW-30311/HR', '3', '2023-01-15 04:02:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (266, 'RESI-GZ-76902', '3', '2023-01-15 04:06:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (267, 'RESI-GZ-76901', '3', '2023-01-15 04:09:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (268, 'RESI-YW-30311/HR', '2', '2023-01-16 20:07:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (269, 'RESI-GZ-75399', '3', '2023-01-16 20:39:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (270, 'RESI-YW-25603/DB', '4', '2023-01-17 08:48:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (271, 'RESI-GZ-66868/AL', '4', '2023-01-17 08:49:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (272, 'RESI-YW-25572/KN', '4', '2023-01-17 08:49:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (273, 'RESI-GZ-64096', '4', '2023-01-17 08:50:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (274, 'RESI-GZ-67688/DB', '4', '2023-01-17 08:50:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (275, 'RESI-GZ-66369/DB', '4', '2023-01-17 08:50:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (276, 'RESI-GZ-68878', '4', '2023-01-17 08:50:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (277, 'RESI-GZ-68797', '4', '2023-01-17 08:51:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (278, 'RESI-YW-25845/DB', '4', '2023-01-17 08:51:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (279, 'RESI-GZ-68550', '4', '2023-01-17 08:51:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (280, 'RESI-YW-26623', '4', '2023-01-17 08:51:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (281, 'RESI-GZ-66373', '4', '2023-01-17 08:52:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (282, 'RESI-GZ-68879/HR', '4', '2023-01-17 08:53:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (283, 'RESI-GZ-63697', '4', '2023-01-17 08:53:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (284, 'RESI-GZ-63871/DB', '4', '2023-01-17 08:54:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (285, 'RESI-GZ-63879/DB', '4', '2023-01-17 08:54:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (286, 'RESI-YW-26259/KN', '4', '2023-01-17 08:54:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (287, 'RESI-YW-25889/HR', '4', '2023-01-17 08:54:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (288, 'RESI-YW-26214', '4', '2023-01-17 09:03:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (289, 'RESI-YW-28893', '4', '2023-01-17 09:03:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (290, 'RESI-YW-26214', '4', '2023-01-17 09:04:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (291, 'RESI-GZ-68819/HR', '4', '2023-01-17 09:04:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (292, 'RESI-YW-26330/HR', '4', '2023-01-17 09:05:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (293, 'RESI-GZ-68582/HR', '4', '2023-01-17 09:05:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (294, 'RESI-YW-24971/DB', '4', '2023-01-17 09:05:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (295, 'RESI-GZ-70239/HR', '4', '2023-01-17 09:07:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (296, 'RESI-YW-26876/TK', '4', '2023-01-17 09:12:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (297, 'RESI-YW-26976/TK', '4', '2023-01-17 09:13:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (298, 'RESI-GZ-69599', '4', '2023-01-17 09:16:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (299, 'RESI-GZ-71612', '4', '2023-01-17 09:16:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (300, 'RESI-GZ-72982', '4', '2023-01-17 09:19:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (301, 'RESI-YW-28476', '4', '2023-01-22 13:28:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (302, 'RESI-GZ-69947', '4', '2023-01-24 10:56:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (303, 'RESI-YW-29735', '4', '2023-01-24 10:57:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (304, 'RESI-YW-29594', '4', '2023-01-24 10:58:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (305, 'RESI-YW-26602', '4', '2023-01-24 11:00:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (306, 'RESI-YW-26624', '4', '2023-01-24 11:01:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (307, 'RESI-GZ-69255', '4', '2023-01-24 11:01:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (308, 'RESI-GZ-69829', '4', '2023-01-24 11:01:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (309, 'RESI-GZ-71603', '4', '2023-01-24 11:02:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (310, 'RESI-GZ-74021', '4', '2023-01-24 11:02:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (311, 'RESI-YW-29844', '3', '2023-01-24 11:07:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (312, 'RESI-GZ-74029', '4', '2023-01-24 11:09:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (313, 'RESI-YW-29120', '4', '2023-01-24 11:12:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (314, 'RESI-YW-29282', '4', '2023-01-24 20:00:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (315, 'RESI-YW-29283', '4', '2023-01-24 20:01:49', 'ahmad');
INSERT INTO `resi_tracking` VALUES (316, 'RESI-YW-29121', '4', '2023-01-25 16:50:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (317, 'RESI-YW-29121', '4', '2023-01-26 14:26:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (318, 'RESI-YW-29691', '4', '2023-01-26 14:47:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (319, 'RESI-GZ-75063', '4', '2023-01-28 14:02:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (320, 'RESI-GZ-74116', '4', '2023-01-28 14:12:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (321, 'RESI-YW-29123', '4', '2023-01-28 15:02:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (322, 'RESI-GZ-64857', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (323, 'RESI-GZ-66779', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (324, 'RESI-GZ-66806', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (325, 'RESI-GZ-68330/HR', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (326, 'RESI-GZ-68581', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (327, 'RESI-GZ-68796/HR', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (328, 'RESI-GZ-69960', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (329, 'RESI-GZ-70363', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (330, 'RESI-GZ-72660', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (331, 'RESI-GZ-72714', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (332, 'RESI-GZ-73116/HR', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (333, 'RESI-GZ-73544', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (334, 'RESI-GZ-74036', '3', '2023-02-04 18:26:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (335, 'RESI-YW-29974', '4', '2023-02-06 02:03:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (336, 'RESI-YW-26472/HR', '4', '2023-02-06 02:04:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (337, 'RESI-YW-28524', '4', '2023-02-06 09:40:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (338, 'RESI-GZ-75942', '3', '2023-02-06 12:14:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (339, 'RESI-GZ-74488', '4', '2023-02-07 03:29:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (340, 'RESI-GZ-76901', '4', '2023-02-07 03:29:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (341, 'RESI-YW-30469', '2', '2023-02-07 16:39:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (342, 'RESI-YW-30175', '4', '2023-02-09 10:24:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (343, 'RESI-YW-30589/HR', '2', '2023-02-10 18:17:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (344, 'RESI-GZ-75269', '4', '2023-02-10 20:26:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (345, 'RESI-YW-30589/HR', '2', '2023-02-13 12:34:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (346, 'RESI-GZ-73544', '4', '2023-02-15 12:48:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (347, 'RESI-GZ-66806', '4', '2023-02-15 12:50:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (348, 'RESI-GZ-77977', '3', '2023-02-15 14:07:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (349, 'RESI-YW-30224', '4', '2023-02-23 01:02:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (350, 'RESI-GZ-78156', '3', '2023-02-23 01:05:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (351, 'LLP0002287', '4', '2023-02-23 21:23:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (352, 'LLP0002073', '4', '2023-02-23 21:29:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (353, 'LLP0002128', '4', '2023-02-23 21:29:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (354, 'LLP0002197', '4', '2023-02-23 21:29:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (355, 'LLP0002309', '4', '2023-02-23 21:29:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (356, 'T0001378', '4', '2023-02-23 21:33:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (357, 'LLP0002196', '4', '2023-02-23 21:33:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (358, 'LLP0002166', '4', '2023-02-23 21:35:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (359, 'LLP0002227', '4', '2023-02-23 21:35:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (360, 'RESI-YW-30310', '4', '2023-02-23 21:36:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (361, 'RESI-YW-30189', '1', '2023-02-23 21:36:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (362, 'RESI-GZ-64857', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (363, 'RESI-GZ-66779', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (364, 'RESI-GZ-68330/HR', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (365, 'RESI-GZ-68581', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (366, 'RESI-GZ-68796/HR', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (367, 'RESI-GZ-69960', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (368, 'RESI-GZ-70363', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (369, 'RESI-GZ-72660', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (370, 'RESI-GZ-72714', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (371, 'RESI-GZ-73116/HR', '4', '2023-02-23 21:44:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (372, 'RESI-YW-31114', '3', '2023-02-24 14:09:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (373, 'RESI-YW-31448', '2', '2023-03-03 09:41:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (374, 'LLP0002245', '4', '2023-03-03 18:23:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (375, 'LLPT0000179', '4', '2023-03-14 15:22:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (376, 'RESI-YW-30469', '4', '2023-03-14 21:51:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (377, 'LLPT0000179', '4', '2023-03-15 13:35:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (378, 'T0001378', '4', '2023-03-16 10:25:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (379, 'RESI-GZ-80603/HR', '3', '2023-03-16 10:47:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (380, 'RESI-YW-31492', '3', '2023-03-16 10:50:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (381, 'RESI-YW-31407', '3', '2023-03-16 10:52:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (382, 'RESI-YW-31716', '3', '2023-03-16 10:54:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (383, 'RESI-YW-31187', '2', '2023-03-16 10:58:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (384, 'RESI-GZ-80536', '3', '2023-03-16 11:01:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (385, 'RESI-GZ-80180', '2', '2023-03-16 11:03:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (386, 'RESI-GZ-79295', '2', '2023-03-16 11:05:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (387, 'RESI-YW-31585', '3', '2023-03-16 11:07:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (388, 'RESI-YW-31521/HR', '3', '2023-03-16 11:10:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (389, 'RESI-GZ-80379', '2', '2023-03-16 11:12:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (390, 'RESI-YW-31509', '3', '2023-03-16 11:13:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (391, 'RESI-YW-31391', '3', '2023-03-16 11:21:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (392, 'RESI-YW-31410', '3', '2023-03-16 11:25:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (393, 'RESI-GZ-79515', '3', '2023-03-16 11:28:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (394, 'RESI-YW-31370', '3', '2023-03-16 11:32:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (395, 'RESI-YW-31266', '3', '2023-03-16 11:33:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (396, 'RESI-GZ-79078', '3', '2023-03-16 11:39:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (397, 'RESI-YW-31021', '3', '2023-03-16 15:26:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (398, 'RESI-GZ-79318,', '3', '2023-03-16 15:29:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (399, 'LLPT0001066', '3', '2023-03-16 15:30:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (400, 'LLPT0000174', '3', '2023-03-16 15:31:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (401, 'LLPT0000194', '3', '2023-03-16 15:39:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (402, 'LLPT0000243', '3', '2023-03-16 15:40:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (403, 'T0000266', '3', '2023-03-16 15:54:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (404, 'LLP0000445', '2', '2023-03-16 16:17:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (405, 'LLP0000290', '3', '2023-03-16 16:37:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (406, 'LLP0000291', '3', '2023-03-16 17:19:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (407, 'RESI-GZ-80217', '3', '2023-03-16 17:37:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (408, 'RESI-GZ-80703', '2', '2023-03-16 17:38:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (409, 'RESI-GZ-80948', '2', '2023-03-16 17:39:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (410, 'LLP0000407', '2', '2023-03-16 18:17:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (411, 'LLP7000239', '3', '2023-03-16 18:37:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (412, 'RESI-GZ-80870', '2', '2023-03-17 13:40:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (413, 'RESI-GZ-79318', '3', '2023-03-17 14:01:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (414, 'RESI-YW-31716', '2', '2023-03-17 14:11:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (415, 'RESI-YW-31187', '3', '2023-03-17 14:13:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (416, 'RESI-YW-31492', '2', '2023-03-17 14:19:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (417, 'RESI-GZ-80536', '2', '2023-03-17 14:32:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (418, 'RESI-GZ-80180', '3', '2023-03-17 14:33:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (419, 'RESI-GZ-79295', '3', '2023-03-17 14:34:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (420, 'RESI-YW-31585', '2', '2023-03-17 14:36:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (421, 'RESI-YW-31521/HR', '2', '2023-03-17 14:40:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (422, 'RESI-GZ-80379', '3', '2023-03-17 14:42:49', 'ahmad');
INSERT INTO `resi_tracking` VALUES (423, 'RESI-YW-31509', '2', '2023-03-17 14:44:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (424, 'RESI-GZ-78710', '3', '2023-03-17 15:41:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (425, 'RESI-GZ-79600/HR', '3', '2023-03-17 18:33:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (426, 'RESI-YW-31913', '2', '2023-03-17 18:52:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (427, 'RESI-YW-31396/HR', '3', '2023-03-17 19:07:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (428, 'RESI-YW-31085/HR', '2', '2023-03-17 19:09:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (429, 'RESI-YW-30956/HR', '3', '2023-03-17 19:10:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (430, 'RESI-YW-32030/HR', '2', '2023-03-18 17:31:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (431, 'RESI-GZ-81457/HR', '2', '2023-03-20 14:21:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (432, 'RESI-YW-30469', '4', '2023-03-20 15:47:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (433, 'LLPT0000183', '2', '2023-03-21 16:31:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (434, 'LLPT0000174', '4', '2023-03-21 17:35:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (435, 'LLPT0001066', '4', '2023-03-21 17:44:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (436, 'RESI-YW-32152', '2', '2023-03-22 11:22:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (437, 'RESI-GZ-81280', '2', '2023-03-22 13:25:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (438, 'RESI-GZ-81431', '2', '2023-03-22 14:09:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (439, 'RESI-GZ-81290', '2', '2023-03-22 16:11:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (440, 'RESI-YW-31021', '4', '2023-03-23 11:41:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (441, 'LLPT0000506', '2', '2023-03-24 10:13:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (442, 'RESI-YW-32187/HR', '2', '2023-03-24 10:26:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (443, 'RESI-YW-32187/HR,', '2', '2023-03-24 10:26:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (444, 'RESI-GZ-79515', '4', '2023-03-24 11:17:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (445, 'RESI-YW-31085/HR', '3', '2023-03-24 12:41:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (446, 'RESI-GZ-78156', '4', '2023-03-24 16:05:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (447, 'RESI-GZ-81875', '2', '2023-03-28 17:03:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (448, 'RESI-GZ-82025', '2', '2023-03-28 17:13:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (449, 'RESI-GZ-78710', '4', '2023-03-28 23:27:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (450, 'RESI-GZ-79078', '4', '2023-03-28 23:27:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (451, 'RESI-GZ-81290', '3', '2023-03-28 23:28:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (452, 'RESI-YW-30029', '4', '2023-03-28 23:30:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (453, 'LLPT0000407', '3', '2023-03-29 11:17:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (454, 'LLPT0000243', '3', '2023-03-29 11:18:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (455, 'LLPT0000470', '2', '2023-03-29 13:29:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (456, 'LLPT0000510', '2', '2023-03-29 13:41:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (457, 'RESI-GZ-82354', '2', '2023-03-29 14:17:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (458, 'RESI-GZ-82358', '2', '2023-03-29 15:02:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (459, 'RESI-YW-32269', '2', '2023-03-29 15:18:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (460, 'RESI-GZ-82146', '2', '2023-03-29 15:53:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (461, 'RESI-GZ-81968', '2', '2023-03-29 16:10:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (462, 'LLPT0000183', '4', '2023-03-30 09:32:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (463, 'LLPT0000407', '4', '2023-04-03 10:53:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (464, 'RESI-YW-30311/HR', '4', '2023-04-03 17:41:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (465, 'RESI-YW-27012', '4', '2023-04-03 17:46:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (466, 'RESI-GZ-79318', '4', '2023-04-04 09:29:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (467, 'LLPT0000243', '4', '2023-04-04 12:29:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (468, 'LLPT0000291', '4', '2023-04-04 15:08:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (469, 'LLPT0000290', '4', '2023-04-04 15:10:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (470, 'LLPT000239', '4', '2023-04-04 15:11:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (471, 'LLPT0000194', '4', '2023-04-04 15:11:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (472, 'T0000266', '4', '2023-04-04 15:13:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (473, 'RESI-YW-32547', '2', '2023-04-04 15:25:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (474, 'RESI-GZ-82550', '2', '2023-04-04 16:18:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (475, 'RESI-YW-31187', '4', '2023-04-05 10:58:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (476, 'RESI-YW-31114', '4', '2023-04-05 11:01:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (477, 'RESI-YW-31085/HR', '4', '2023-04-05 11:06:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (478, 'RESI-YW-30956/HR', '4', '2023-04-05 11:28:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (479, 'RESI-GZ-80180', '4', '2023-04-05 11:34:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (480, 'RESI-YW-31509', '4', '2023-04-05 11:40:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (481, 'RESI-GZ-80703', '3', '2023-04-05 13:06:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (482, 'RESI-YW-31492', '4', '2023-04-05 13:08:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (483, 'RESI-GZ-80948', '3', '2023-04-05 13:08:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (484, 'RESI-GZ-80870', '3', '2023-04-05 13:09:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (485, 'RESI-YW-31585', '4', '2023-04-05 13:10:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (486, 'RESI-YW-31521/HR', '4', '2023-04-05 13:10:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (487, 'RESI-GZ-80217', '4', '2023-04-05 13:16:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (488, 'RESI-YW-30589/HR', '4', '2023-04-05 13:20:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (489, 'RESI-GZ-77977', '4', '2023-04-05 13:25:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (490, 'RESI-GZ-75715', '4', '2023-04-05 13:27:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (491, 'RESI-GZ-76665', '4', '2023-04-05 13:27:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (492, 'RESI-GZ-75943', '4', '2023-04-05 13:28:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (493, 'RESI-GZ-75942', '4', '2023-04-05 13:28:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (494, 'RESI-YW-30189', '4', '2023-04-05 13:31:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (495, 'RESI-GZ-75399', '4', '2023-04-05 13:32:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (496, 'RESI-GZ-75300', '4', '2023-04-05 13:33:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (497, 'RESI-GZ-76902', '4', '2023-04-05 13:34:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (498, 'RESI-YW-30082', '4', '2023-04-05 13:35:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (499, 'RESI-YW-30067', '4', '2023-04-05 13:36:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (500, 'RESI-GZ-80870', '4', '2023-04-05 13:40:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (501, 'RESI-GZ-80870', '3', '2023-04-05 13:42:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (502, 'RESI-GZ-83032', '2', '2023-04-05 16:29:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (503, 'LLPT0000547', '2', '2023-04-05 16:39:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (504, 'RESI-YW-31407', '4', '2023-04-07 08:34:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (505, 'RESI-GZ-80948', '4', '2023-04-07 08:42:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (506, 'RESI-GZ-80703', '4', '2023-04-07 08:42:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (507, 'RESI-GZ-80870', '4', '2023-04-07 08:43:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (508, 'RESI-GZ-80536', '4', '2023-04-10 18:56:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (509, 'RESI-YW-32708/HR', '2', '2023-04-11 10:19:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (510, 'RESI-GZ-83437', '2', '2023-04-11 10:41:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (511, 'RESI-YW-31716', '4', '2023-04-11 10:47:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (512, 'RESI-YW-31913', '4', '2023-04-11 10:47:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (513, 'LLPT0000445', '4', '2023-04-11 10:48:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (514, 'RESI-YW-31913', '4', '2023-04-11 11:22:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (515, 'RESI-YW-31187', '3', '2023-04-14 11:06:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (516, 'RESI-YW-31187', '4', '2023-04-15 09:14:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (517, 'RESI-YW-32975', '2', '2023-04-15 16:33:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (518, 'RESI-GZ-83504', '2', '2023-04-15 17:12:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (519, 'RESI-GZ-81431', '4', '2023-04-15 18:59:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (520, 'RESI-YW-32496', '3', '2023-04-17 10:41:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (521, 'RESI-GZ-83856', '2', '2023-04-17 11:03:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (522, 'RESI-YW-32929/HR', '2', '2023-04-17 11:05:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (523, 'RESI-GZ-83745', '2', '2023-04-17 11:07:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (524, 'RESI-GZ-83706', '2', '2023-04-17 11:08:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (525, 'RESI-GZ-83613', '2', '2023-04-17 11:13:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (526, 'RESI-GZ-83504', '2', '2023-04-17 11:15:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (527, 'RESI-YW-32808', '2', '2023-04-17 11:20:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (528, 'RESI-YW-32758', '2', '2023-04-17 11:22:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (529, 'RESI-GZ-83203', '2', '2023-04-17 11:24:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (530, 'RESI-GZ-82851', '2', '2023-04-17 11:28:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (531, 'RESI-YW-32549/HR', '3', '2023-04-17 11:29:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (532, 'RESI-GZ-82614', '2', '2023-04-17 11:48:09', 'ahmad');
INSERT INTO `resi_tracking` VALUES (533, 'RESI-YW-32995/HR', '2', '2023-04-17 14:09:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (534, 'RESI-GZ-84049', '2', '2023-04-17 14:27:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (535, 'RESI-YW-32999/HR', '2', '2023-04-17 14:48:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (536, 'RESI-GZ-83986', '2', '2023-04-18 11:54:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (537, 'RESI-GZ-81522', '3', '2023-04-18 13:43:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (538, 'RESI-GZ-83623/HR', '3', '2023-04-18 13:45:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (539, 'RESI-GZ-83623/HR,', '3', '2023-04-18 13:45:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (540, 'RESI-GZ-84095', '2', '2023-04-18 14:35:58', 'ahmad');
INSERT INTO `resi_tracking` VALUES (541, 'RESI-GZ-84219', '2', '2023-04-18 17:11:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (542, 'RESI-GZ-83032', '3', '2023-04-28 06:21:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (543, 'RESI-GZ-81457/HR', '3', '2023-04-28 10:19:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (544, 'RESI-GZ-81457/HR', '4', '2023-04-28 10:20:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (545, 'RESI-YW-31370', '4', '2023-04-28 10:43:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (546, 'RESI-YW-31266', '4', '2023-04-28 10:55:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (547, 'RESI-GZ-79600/HR', '4', '2023-04-28 11:03:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (548, 'RESI-YW-32152', '4', '2023-04-28 11:07:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (549, 'RESI-YW-31391', '3', '2023-04-28 11:17:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (550, 'RESI-YW-31391', '4', '2023-04-28 11:17:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (551, 'RESI-YW-31187', '4', '2023-04-28 11:21:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (552, 'RESI-YW-31396/HR', '4', '2023-04-28 11:22:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (553, 'RESI-YW-31448', '4', '2023-04-28 11:59:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (554, 'RESI-YW-31410', '4', '2023-04-28 13:03:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (555, 'RESI-GZ-84308', '3', '2023-04-28 16:47:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (556, 'RESI-GZ-84227', '2', '2023-04-28 16:49:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (557, 'RESI-YW-33254', '2', '2023-04-28 17:18:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (558, 'RESI-GZ-84556', '2', '2023-04-28 17:20:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (559, 'RESI-YW-32030/HR', '4', '2023-04-29 10:49:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (560, 'LLPT0000510', '4', '2023-05-01 09:11:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (561, 'LLPT0000506', '4', '2023-05-01 09:13:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (562, 'RESI-GZ-81290', '4', '2023-05-01 09:40:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (563, 'RESI-GZ-81280', '3', '2023-05-03 09:28:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (564, 'RESI-GZ-84333', '2', '2023-05-03 17:33:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (565, 'RESI-YW-33275', '2', '2023-05-03 17:48:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (566, 'RESI-YW-33291', '2', '2023-05-03 17:51:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (567, 'RESI-GZ-84961', '2', '2023-05-03 17:56:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (568, 'RESI-GZ-80603/HR', '4', '2023-05-03 20:06:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (569, 'RESI-YW-33200/HR', '2', '2023-05-04 09:07:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (570, 'RESI-GZ-84862', '2', '2023-05-04 09:21:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (571, 'RESI-GZ-74465/HR', '4', '2023-05-04 09:24:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (572, 'RESI-GZ-84578', '2', '2023-05-04 09:37:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (573, 'RESI-GZ-84845', '2', '2023-05-04 09:47:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (574, 'RESI-GZ-84861', '2', '2023-05-04 10:33:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (575, 'RESI-GZ-80379', '4', '2023-05-04 20:10:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (576, 'RESI-GZ-79295', '4', '2023-05-04 20:10:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (577, 'RESI-GZ-81280', '4', '2023-05-04 20:10:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (578, 'RESI-YW-29562', '4', '2023-05-05 01:52:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (579, 'RESI-GZ-85326', '2', '2023-05-05 13:32:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (580, 'RESI-YW-33417', '2', '2023-05-05 13:32:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (581, 'RESI-GZ-85330', '2', '2023-05-05 14:26:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (582, 'RESI-YW-33410/HR', '2', '2023-05-05 14:37:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (583, 'RESI-GZ-84777', '2', '2023-05-05 15:07:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (584, 'RESI-GZ-84777', '2', '2023-05-05 15:20:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (585, 'RESI-YW-33462', '2', '2023-05-06 17:53:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (586, 'RESI-YW-33451/HR', '2', '2023-05-06 18:31:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (587, 'RESI-YW-32496', '4', '2023-05-08 09:30:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (588, 'RESI-YW-32269', '4', '2023-05-08 09:30:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (589, 'RESI-YW-32549/HR', '4', '2023-05-08 09:31:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (590, 'LLPT0000547', '4', '2023-05-08 09:45:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (591, 'RESI-GZ-82025', '4', '2023-05-09 09:09:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (592, 'RESI-GZ-82614', '4', '2023-05-09 09:10:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (593, 'RESI-GZ-82358', '4', '2023-05-09 09:10:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (594, 'RESI-GZ-82550', '4', '2023-05-09 09:10:58', 'ahmad');
INSERT INTO `resi_tracking` VALUES (595, 'RESI-YW-33541', '2', '2023-05-09 14:47:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (596, 'RESI-YW-33550', '2', '2023-05-09 18:34:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (597, 'LLPT0000470', '4', '2023-05-10 09:10:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (598, 'RESI-GZ-82851', '4', '2023-05-10 09:18:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (599, 'RESI-YW-32758', '4', '2023-05-10 09:19:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (600, 'RESI-GZ-82146', '4', '2023-05-10 09:19:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (601, 'RESI-GZ-82354', '4', '2023-05-10 09:26:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (602, 'RESI-GZ-81875', '4', '2023-05-10 09:42:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (603, 'RESI-GZ-85582', '2', '2023-05-10 10:44:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (604, 'RESI-YW-33579/HR', '2', '2023-05-10 13:30:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (605, 'RESI-GZ-85775', '2', '2023-05-11 16:29:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (606, 'RESI-GZ-85902', '2', '2023-05-11 16:35:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (607, 'RESI-YW-33602', '2', '2023-05-11 19:02:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (608, 'RESI-YW-33677', '2', '2023-05-12 15:05:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (609, 'RESI-YW-33200/HR', '4', '2023-05-12 22:34:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (610, 'RESI-YW-32708/HR', '4', '2023-05-12 22:34:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (611, 'RESI-YW-32929/HR', '4', '2023-05-12 22:34:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (612, 'RESI-GZ-83032', '4', '2023-05-12 22:34:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (613, 'RESI-GZ-83203', '4', '2023-05-12 22:35:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (614, 'RESI-GZ-83613', '4', '2023-05-12 22:35:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (615, 'RESI-GZ-81522', '4', '2023-05-12 22:35:49', 'ahmad');
INSERT INTO `resi_tracking` VALUES (616, 'RESI-YW-32975', '4', '2023-05-12 22:36:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (617, 'RESI-GZ-83504', '4', '2023-05-12 22:36:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (618, 'RESI-YW-32547', '4', '2023-05-12 22:37:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (619, 'RESI-YW-32929/HR', '3', '2023-05-13 11:33:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (620, 'RESI-YW-32929/HR', '4', '2023-05-14 01:31:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (621, 'RESI-GZ-86073/HR', '2', '2023-05-15 11:48:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (622, 'RESI-GZ-83613', '4', '2023-05-15 16:47:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (623, 'RESI-YW-33739', '2', '2023-05-15 17:35:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (624, 'RESI-GZ-86008', '2', '2023-05-15 18:28:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (625, 'RESI-GZ-86120', '2', '2023-05-15 18:45:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (626, 'RESI-YW-33290', '3', '2023-05-16 01:15:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (627, 'RESI-YW-33417', '3', '2023-05-16 01:15:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (628, 'RESI-YW-30981', '4', '2023-05-16 01:37:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (629, 'RESI-YW-32187/HR', '4', '2023-05-16 16:45:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (630, 'RESI-YW-33795', '2', '2023-05-16 18:34:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (631, 'RESI-YW-32999/HR', '4', '2023-05-18 10:14:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (632, 'RESI-YW-32995/HR', '4', '2023-05-18 10:15:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (633, 'RESI-GZ-83706', '3', '2023-05-18 11:07:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (634, 'RESI-YW-33902', '2', '2023-05-19 10:08:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (635, 'RESI-GZ-83437', '4', '2023-05-21 19:53:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (636, 'RESI-GZ-84095', '3', '2023-05-22 10:45:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (637, 'RESI-GZ-83745', '4', '2023-05-22 10:49:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (638, 'RESI-GZ-83623/HR', '4', '2023-05-22 10:51:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (639, 'RESI-YW-32999/HR', '4', '2023-05-23 12:59:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (640, 'RESI-GZ-83986', '4', '2023-05-23 15:03:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (641, 'T00001228', '2', '2023-05-23 17:08:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (642, 'T00001235', '2', '2023-05-23 17:08:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (643, 'T00001246', '2', '2023-05-23 18:13:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (644, 'T00001246', '2', '2023-05-23 18:54:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (645, 'T00001235', '2', '2023-05-23 18:55:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (646, 'T00001228', '2', '2023-05-23 18:55:20', 'ahmad');
INSERT INTO `resi_tracking` VALUES (647, 'T00001241', '2', '2023-05-23 18:55:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (648, 'T00001249', '2', '2023-05-23 18:56:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (649, 'RESI-YW-33957/HR', '2', '2023-05-24 09:56:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (650, 'RESI-GZ-84227', '4', '2023-05-24 16:47:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (651, 'RESI-GZ-84095', '4', '2023-05-24 17:59:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (652, 'RESI-GZ-81968', '4', '2023-05-24 18:00:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (653, 'RESI-GZ-84861', '4', '2023-05-25 19:18:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (654, 'RESI-YW-32547', '3', '2023-05-29 10:40:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (655, 'RESI-YW-34188/HR', '2', '2023-05-29 11:15:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (656, 'RESI-GZ-83706', '4', '2023-05-29 14:37:48', 'ahmad');
INSERT INTO `resi_tracking` VALUES (657, 'RESI-GZ-84049', '3', '2023-05-29 14:44:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (658, 'RESI-GZ-84049', '4', '2023-05-29 14:45:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (659, 'RESI-YW-33309', '4', '2023-05-29 16:20:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (660, 'RESI-YW-33309', '3', '2023-05-29 16:20:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (661, 'RESI-GZ-84578 masuk 24/05', '4', '2023-05-29 18:19:36', 'ahmad');
INSERT INTO `resi_tracking` VALUES (662, 'T00001270', '2', '2023-05-29 18:54:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (663, 'T00001271', '2', '2023-05-29 18:59:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (664, 'RESI-YW-33290', '4', '2023-05-30 10:38:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (665, 'RESI-YW-33417', '4', '2023-05-30 10:39:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (666, 'RESI-YW-33275', '4', '2023-05-30 10:39:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (667, 'RESI-YW-33410/HR', '4', '2023-05-30 10:40:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (668, 'RESI-YW-33451/HR', '4', '2023-05-30 10:41:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (669, 'RESI-YW-32808', '4', '2023-05-30 19:54:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (670, 'RESI-YW-33541', '4', '2023-05-30 19:54:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (671, 'RESI-YW-34238/HR', '2', '2023-05-31 19:01:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (672, 'T00001284', '2', '2023-05-31 19:09:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (673, 'T0001279', '2', '2023-05-31 19:13:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (674, 'T00001287', '2', '2023-05-31 19:16:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (675, 'T00001290', '2', '2023-05-31 19:18:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (676, 'T0001278', '2', '2023-05-31 19:26:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (677, 'RESI-YW-33579/HR', '4', '2023-06-01 08:55:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (678, 'RESI-YW-33309', '4', '2023-06-01 09:00:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (679, 'RESI-GZ-84777', '4', '2023-06-01 09:36:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (680, 'RESI-GZ-85330', '3', '2023-06-03 13:05:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (681, 'RESI-GZ-85582', '4', '2023-06-03 13:06:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (682, 'RESI-GZ-85582', '3', '2023-06-03 13:06:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (683, 'RESI-GZ-83856', '4', '2023-06-03 13:20:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (684, 'RESI-YW-33254', '4', '2023-06-03 13:20:49', 'ahmad');
INSERT INTO `resi_tracking` VALUES (685, 'RESI-YW-33462', '4', '2023-06-03 13:21:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (686, 'RESI-YW-33872', '3', '2023-06-05 09:21:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (687, 'T00001308', '2', '2023-06-05 13:24:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (688, 'RESI-YW-34469', '2', '2023-06-05 14:51:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (689, 'T00001308', '2', '2023-06-05 16:56:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (690, 'RESI-GZ-87841', '2', '2023-06-05 17:51:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (691, 'RESI-YW-34367/HR', '2', '2023-06-05 18:18:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (692, 'T00001304', '2', '2023-06-06 11:09:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (693, 'T00001312', '2', '2023-06-06 11:32:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (694, 'RESI-GZ-84862', '4', '2023-06-06 15:54:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (695, 'RESI-GZ-84961', '4', '2023-06-06 15:55:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (696, 'RESI-YW-34454/HR', '2', '2023-06-06 19:23:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (697, 'T0001303', '2', '2023-06-06 20:09:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (698, 'RESI-YW-34566', '2', '2023-06-09 09:35:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (699, 'T00001316', '2', '2023-06-09 11:32:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (700, 'RESI-GZ-85330', '4', '2023-06-09 18:16:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (701, 'RESI-GZ-85330', '3', '2023-06-10 09:38:53', 'ahmad');
INSERT INTO `resi_tracking` VALUES (702, 'RESI-GZ-84578', '4', '2023-06-10 09:39:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (703, 'RESI-GZ-84333', '4', '2023-06-10 09:43:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (704, 'RESI-GZ-84219', '4', '2023-06-10 09:44:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (705, 'RESI-GZ-84308', '4', '2023-06-10 09:59:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (706, 'RESI-GZ-87552', '2', '2023-06-12 10:20:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (707, 'RESI-YW-34697/HR', '2', '2023-06-12 10:27:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (708, 'T00001333', '2', '2023-06-12 10:39:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (709, 'T00001326', '2', '2023-06-12 10:44:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (710, 'RESI-YW-34748/HR', '2', '2023-06-12 14:42:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (711, 'RESI-YW-33739', '4', '2023-06-13 13:15:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (712, 'RESI-YW-33677', '4', '2023-06-13 13:15:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (713, 'RESI-YW-33550', '4', '2023-06-13 13:17:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (714, 'RESI-YW-33602', '4', '2023-06-14 13:26:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (715, 'RESI-YW-33602', '4', '2023-06-14 13:28:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (716, 'RESI-GZ-86008', '4', '2023-06-14 13:29:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (717, 'RESI-GZ-88459/HR-BYSEA', '2', '2023-06-14 15:41:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (718, 'RESI-YW-34368', '2', '2023-06-14 15:46:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (719, 'T00001338', '2', '2023-06-14 16:37:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (720, 'T00001336', '2', '2023-06-14 16:55:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (721, 'T00001298', '2', '2023-06-14 17:00:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (722, 'T00001249', '2', '2023-06-14 17:06:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (723, 'RESI-GZ-85582', '4', '2023-06-15 13:22:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (724, 'RESI-GZ-84556', '4', '2023-06-15 13:22:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (725, 'RESI-GZ-84845', '4', '2023-06-15 13:30:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (726, 'RESI-GZ-85902', '4', '2023-06-16 08:41:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (727, 'RESI-GZ-85330', '4', '2023-06-16 08:42:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (728, 'RESI-YW-33795', '4', '2023-06-16 08:43:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (729, 'RESI-GZ-85326', '4', '2023-06-16 08:43:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (730, 'RESI-GZ-86073/HR', '4', '2023-06-16 08:50:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (731, 'RESI-YW-34888/HR', '2', '2023-06-16 09:04:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (732, 'RESI-YW-34803/HR', '2', '2023-06-16 13:09:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (733, 'RESI-YW-34834', '2', '2023-06-16 13:28:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (734, 'RESI-YW-33957/HR', '4', '2023-06-20 10:13:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (735, 'RESI-GZ-85775', '4', '2023-06-20 11:24:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (736, 'RESI-YW-33291', '4', '2023-06-20 13:55:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (737, 'T00001228', '4', '2023-06-21 09:19:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (738, 'T00001235', '4', '2023-06-21 09:19:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (739, 'RESI-YW-33902', '4', '2023-06-22 10:25:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (740, 'T00001249', '4', '2023-06-23 08:56:59', 'ahmad');
INSERT INTO `resi_tracking` VALUES (741, 'T00001271', '4', '2023-06-23 09:02:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (742, 'T00001241', '4', '2023-06-23 09:03:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (743, 'T0001278', '4', '2023-06-23 09:04:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (744, 'RESI-GZ-87552', '4', '2023-06-26 11:28:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (745, 'RESI-GZ-87841', '4', '2023-06-26 11:28:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (746, 'RESI-YW-34188/HR', '4', '2023-06-26 11:29:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (747, 'RESI-YW-32547', '4', '2023-06-26 16:18:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (748, 'T0001303', '1', '2023-06-27 16:59:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (749, 'T00001304', '1', '2023-06-27 17:11:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (750, 'T00001308', '1', '2023-06-27 17:12:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (751, 'T00001312', '1', '2023-06-27 17:13:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (752, 'T00001316', '1', '2023-06-27 17:15:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (753, 'T00001326', '1', '2023-06-27 17:15:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (754, 'T00001333', '1', '2023-06-27 17:16:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (755, 'T00001336', '1', '2023-06-27 17:19:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (756, 'T00001338', '1', '2023-06-27 17:21:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (757, 'RESI-YW-34368', '4', '2023-06-30 11:00:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (758, 'RESI-GZ-86120', '4', '2023-06-30 11:01:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (759, 'RESI-GZ-90306', '2', '2023-07-01 16:24:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (760, 'RESI-GZ-90312', '2', '2023-07-01 16:25:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (761, 'RESI-GZ-90313', '2', '2023-07-01 16:27:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (762, 'RESI-GZ-90314', '2', '2023-07-01 16:29:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (763, 'RESI-GZ-90315', '2', '2023-07-01 16:30:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (764, 'RESI-GZ-90311', '2', '2023-07-01 16:31:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (765, 'RESI-GZ-90319', '2', '2023-07-01 16:36:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (766, 'RESI-GZ-90318', '2', '2023-07-01 16:39:46', 'ahmad');
INSERT INTO `resi_tracking` VALUES (767, 'RESI-GZ-90316', '2', '2023-07-01 16:41:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (768, 'RESI-GZ-90317', '2', '2023-07-01 16:43:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (769, 'RESI-YW-34238/HR', '4', '2023-07-01 18:37:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (770, 'RESI-GZ-90124', '2', '2023-07-01 21:39:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (771, 'RESI-YW-34705', '2', '2023-07-03 13:36:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (772, 'RESI-GZ-89826', '2', '2023-07-04 13:37:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (773, 'RESI-YW-35540', '2', '2023-07-04 14:52:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (774, 'RESI-GZ-89568', '2', '2023-07-04 16:49:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (775, 'RESI-GZ-89602', '2', '2023-07-04 16:57:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (776, 'RESI-GZ-89591', '2', '2023-07-04 17:02:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (777, 'RESI-GZ-89667', '2', '2023-07-04 17:04:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (778, 'RESI-GZ-89876', '2', '2023-07-04 17:05:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (779, 'RESI-YW-35283', '2', '2023-07-04 17:09:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (780, 'RESI-YW-34469', '4', '2023-07-05 09:16:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (781, 'RESI-YW-34367/HR', '4', '2023-07-05 09:18:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (782, 'RESI-YW-34454/HR', '4', '2023-07-05 09:19:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (783, 'RESI-YW-34566', '4', '2023-07-05 09:21:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (784, 'T00001290', '3', '2023-07-05 13:45:12', 'ahmad');
INSERT INTO `resi_tracking` VALUES (785, 'T00001288', '3', '2023-07-05 13:45:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (786, 'RESI-GZ-90042', '2', '2023-07-05 15:00:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (787, 'RESI-GZ-90215', '2', '2023-07-05 15:11:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (788, 'RESI-GZ-90199', '2', '2023-07-05 15:20:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (789, 'RESI-YW-35473', '2', '2023-07-05 15:23:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (790, 'RESI-GZ-89592', '2', '2023-07-05 15:44:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (791, 'T00001246', '4', '2023-07-06 08:34:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (792, 'T00001270', '4', '2023-07-06 08:45:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (793, 'T00001290', '4', '2023-07-06 08:52:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (794, 'T00001288', '4', '2023-07-06 08:53:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (795, 'RESI-GZ-90625', '2', '2023-07-06 10:39:00', 'ahmad');
INSERT INTO `resi_tracking` VALUES (796, 'RESI-YW-26455', '4', '2023-07-06 13:40:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (797, 'RESI-GZ-74036', '4', '2023-07-06 13:45:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (798, 'RESI-YW-29975', '4', '2023-07-07 11:16:51', 'ahmad');
INSERT INTO `resi_tracking` VALUES (799, 'RESI-YW-33872', '4', '2023-07-07 11:17:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (800, 'RESI-GZ-74290/jh', '4', '2023-07-07 11:53:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (801, 'RESI-YW-29976', '4', '2023-07-07 11:59:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (802, 'RESI-YW-29844', '4', '2023-07-07 11:59:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (803, 'RESI-GZ-74821', '4', '2023-07-07 12:00:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (804, 'RESI-GZ-74268', '4', '2023-07-07 12:01:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (805, 'RESI-YW-29965', '4', '2023-07-07 12:01:55', 'ahmad');
INSERT INTO `resi_tracking` VALUES (806, 'RESI-YW-35286/HR', '2', '2023-07-07 14:23:21', 'ahmad');
INSERT INTO `resi_tracking` VALUES (807, 'RESI-GZ-88808', '3', '2023-07-07 19:52:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (808, 'RESI-GZ-90938', '2', '2023-07-08 16:21:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (809, 'RESI-GZ-91064', '2', '2023-07-10 13:43:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (810, 'RESI-YW-35723', '2', '2023-07-10 13:58:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (811, 'T0001279', '4', '2023-07-10 14:06:08', 'ahmad');
INSERT INTO `resi_tracking` VALUES (812, 'RESI-GZ-90959', '2', '2023-07-10 19:51:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (813, 'RESI-YW-34697/HR', '4', '2023-07-11 08:24:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (814, 'RESI-YW-34748/HR', '4', '2023-07-11 08:29:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (815, 'RESI-YW-34834', '4', '2023-07-11 08:31:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (816, 'RESI-YW-34705', '4', '2023-07-11 08:33:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (817, 'RESI-YW-35797', '2', '2023-07-11 13:09:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (818, 'RESI-GZ-91127', '2', '2023-07-11 13:16:19', 'ahmad');
INSERT INTO `resi_tracking` VALUES (819, 'RESI-GZ-91080', '2', '2023-07-11 13:53:23', 'ahmad');
INSERT INTO `resi_tracking` VALUES (820, 'RESI-YW-35798/HR', '2', '2023-07-11 18:33:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (821, 'T00001298', '4', '2023-07-12 10:30:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (822, 'RESI-GZ-91200', '2', '2023-07-12 10:58:30', 'ahmad');
INSERT INTO `resi_tracking` VALUES (823, 'RESI-GZ-91200', '2', '2023-07-12 11:26:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (824, 'RESI-GZ-88808', '4', '2023-07-12 13:17:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (825, 'RESI-YW-35823', '2', '2023-07-12 13:40:27', 'ahmad');
INSERT INTO `resi_tracking` VALUES (826, 'RESI-GZ-89286', '2', '2023-07-12 15:00:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (827, 'RESI-GZ-88459/HR', '4', '2023-07-12 17:02:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (828, 'RESI-YW-35858', '2', '2023-07-12 17:14:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (829, 'RESI-YW-91311', '2', '2023-07-12 17:34:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (830, 'RESI-GZ-91496', '2', '2023-07-14 14:58:44', 'ahmad');
INSERT INTO `resi_tracking` VALUES (831, 'RESI-GZ-89591', '4', '2023-07-17 08:50:31', 'ahmad');
INSERT INTO `resi_tracking` VALUES (832, 'RESI-YW-34803/HR', '4', '2023-07-17 09:51:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (833, 'RESI-YW-34888/HR', '1', '2023-07-17 09:53:14', 'ahmad');
INSERT INTO `resi_tracking` VALUES (834, 'RESI-YW-34888/HR', '4', '2023-07-17 09:53:41', 'ahmad');
INSERT INTO `resi_tracking` VALUES (835, 'RESI-GZ-89602', '4', '2023-07-17 10:34:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (836, 'RESI-GZ-89568', '4', '2023-07-17 11:24:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (837, 'T00001287', '4', '2023-07-17 16:05:06', 'ahmad');
INSERT INTO `resi_tracking` VALUES (838, 'RESI-YW-35969/HR', '4', '2023-07-17 19:47:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (839, 'RESI-YW-35969/HR', '2', '2023-07-18 11:15:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (840, 'RESI-YW-35152', '2', '2023-07-19 15:48:43', 'ahmad');
INSERT INTO `resi_tracking` VALUES (841, 'RESI-GZ-92010', '2', '2023-07-19 16:14:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (842, 'RESI-GZ-89592', '4', '2023-07-20 17:17:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (843, 'RESI-GZ-89667', '4', '2023-07-20 17:47:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (844, 'RESI-GZ-92224', '2', '2023-07-21 18:38:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (845, 'RESI-GZ-92421', '2', '2023-07-24 13:55:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (846, 'RESI-GZ-90124', '4', '2023-07-25 17:00:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (847, 'RESI-GZ-89876', '4', '2023-07-25 17:01:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (848, 'T00001284', '4', '2023-07-27 15:04:47', 'ahmad');
INSERT INTO `resi_tracking` VALUES (849, 'RESI-YW-36406/HR', '2', '2023-07-28 16:05:32', 'ahmad');
INSERT INTO `resi_tracking` VALUES (850, 'RESI-GZ-92713', '2', '2023-07-28 16:10:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (851, 'RESI-GZ-90311', '4', '2023-07-28 18:03:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (852, 'RESI-GZ-92629', '2', '2023-07-29 10:08:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (853, 'RESI-GZ-90938', '4', '2023-07-29 16:40:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (854, 'RESI-GZ-90199', '4', '2023-07-29 16:40:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (855, 'RESI-YW-35473', '4', '2023-07-31 19:51:54', 'ahmad');
INSERT INTO `resi_tracking` VALUES (856, 'RESI-YW-35283', '4', '2023-08-01 11:35:24', 'ahmad');
INSERT INTO `resi_tracking` VALUES (857, 'RESI-YW-35286/HR', '4', '2023-08-01 11:37:37', 'ahmad');
INSERT INTO `resi_tracking` VALUES (858, 'RESI-YW-36494/HR', '2', '2023-08-01 13:47:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (859, 'RESI-GZ-90959', '4', '2023-08-01 17:59:50', 'ahmad');
INSERT INTO `resi_tracking` VALUES (860, 'RESI-GZ-91127', '4', '2023-08-01 19:58:33', 'ahmad');
INSERT INTO `resi_tracking` VALUES (861, 'RESI-GZ-91080', '4', '2023-08-02 08:58:40', 'ahmad');
INSERT INTO `resi_tracking` VALUES (862, 'RESI-GZ-90042', '4', '2023-08-03 11:30:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (863, 'RESI-GZ-90215', '4', '2023-08-03 13:17:52', 'ahmad');
INSERT INTO `resi_tracking` VALUES (864, 'RESI-GZ-90319', '3', '2023-08-03 13:39:25', 'ahmad');
INSERT INTO `resi_tracking` VALUES (865, 'T00001228', '4', '2023-08-03 18:42:17', 'ahmad');
INSERT INTO `resi_tracking` VALUES (866, 'RESI-YW-36660/HR', '2', '2023-08-04 14:34:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (867, 'RESI-GZ-90312', '4', '2023-08-05 13:18:07', 'ahmad');
INSERT INTO `resi_tracking` VALUES (868, 'RESI-GZ-90313', '4', '2023-08-05 13:34:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (869, 'RESI-GZ-89826', '4', '2023-08-05 13:54:22', 'ahmad');
INSERT INTO `resi_tracking` VALUES (870, 'RESI-GZ-91064', '4', '2023-08-05 17:36:38', 'ahmad');
INSERT INTO `resi_tracking` VALUES (871, 'RESI-GZ-93428', '2', '2023-08-05 17:54:34', 'ahmad');
INSERT INTO `resi_tracking` VALUES (872, 'RESI-YW-35858', '4', '2023-08-07 14:52:26', 'ahmad');
INSERT INTO `resi_tracking` VALUES (873, 'RESI-GZ-90319', '4', '2023-08-07 17:41:18', 'ahmad');
INSERT INTO `resi_tracking` VALUES (874, 'RESI-GZ-90306', '4', '2023-08-07 17:55:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (875, 'RESI-GZ-90314', '4', '2023-08-07 18:22:11', 'ahmad');
INSERT INTO `resi_tracking` VALUES (876, 'RESI-GZ-93598', '2', '2023-08-07 18:35:35', 'ahmad');
INSERT INTO `resi_tracking` VALUES (877, 'RESI-GZ-90317', '4', '2023-08-08 09:19:10', 'ahmad');
INSERT INTO `resi_tracking` VALUES (878, 'RESI-GZ-90315', '4', '2023-08-08 10:01:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (879, 'RESI-GZ-90318', '4', '2023-08-08 10:09:42', 'ahmad');
INSERT INTO `resi_tracking` VALUES (880, 'RESI-YW-35823', '4', '2023-08-08 11:34:01', 'ahmad');
INSERT INTO `resi_tracking` VALUES (881, 'RESI-GZ-90316', '4', '2023-08-09 11:54:16', 'ahmad');
INSERT INTO `resi_tracking` VALUES (882, 'RESI-GZ-93725', '2', '2023-08-09 13:29:15', 'ahmad');
INSERT INTO `resi_tracking` VALUES (883, 'RESI-GZ-91496', '4', '2023-08-09 16:17:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (884, 'RESI-YW-36844', '2', '2023-08-09 17:00:45', 'ahmad');
INSERT INTO `resi_tracking` VALUES (885, 'RESI-GZ-93817/HR', '2', '2023-08-10 18:20:39', 'ahmad');
INSERT INTO `resi_tracking` VALUES (886, 'RESI-GZ-93904', '2', '2023-08-11 18:20:03', 'ahmad');
INSERT INTO `resi_tracking` VALUES (887, 'RESI-YW-36962', '2', '2023-08-15 10:31:56', 'ahmad');
INSERT INTO `resi_tracking` VALUES (888, 'RESI-YW-37022/HR', '2', '2023-08-15 11:25:05', 'ahmad');
INSERT INTO `resi_tracking` VALUES (889, 'RESI-GZ-94183', '2', '2023-08-15 13:18:29', 'ahmad');
INSERT INTO `resi_tracking` VALUES (890, 'RESI-GZ-89286', '4', '2023-08-16 08:36:28', 'ahmad');
INSERT INTO `resi_tracking` VALUES (891, 'RESI-GZ-90625', '4', '2023-08-16 08:43:13', 'ahmad');
INSERT INTO `resi_tracking` VALUES (892, 'RESI-GZ-94339/HR', '2', '2023-08-16 17:27:04', 'ahmad');
INSERT INTO `resi_tracking` VALUES (893, 'RESI-GZ-94322', '2', '2023-08-16 17:32:02', 'ahmad');
INSERT INTO `resi_tracking` VALUES (894, 'RESI-GZ-91200', '4', '2023-08-27 22:10:57', 'ahmad');
INSERT INTO `resi_tracking` VALUES (895, 'RESI-YW-35540', '4', '2023-09-03 22:27:43', 'ahmad');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Super Administrator', '2021-08-29 07:12:26', '2021-09-10 06:21:16', 'admin', 'admin');
INSERT INTO `role` VALUES (5, 'Staff', '2022-09-05 21:23:06', '2023-10-24 17:56:55', 'sahyudi', 'sahyudi');
INSERT INTO `role` VALUES (6, 'Admin Finance', '2023-10-24 15:04:04', '2023-10-24 15:04:04', 'sahyudi', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1553 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (1370, 1, 1, '[\"read\",\"create\",\"update\",\"delete\",\"copy\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1371, 1, 18, '[\"read\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1372, 1, 19, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1373, 1, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1374, 1, 20, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1375, 1, 41, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1376, 1, 28, '[\"read\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1377, 1, 29, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1378, 1, 30, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1379, 1, 22, '[\"read\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1380, 1, 23, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1381, 1, 24, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1382, 1, 25, '[\"read\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1383, 1, 26, '[\"read\",\"create\",\"update\",\"delete\",\"quotation\",\"cetak\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1384, 1, 27, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"invoice\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1385, 1, 31, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1386, 1, 42, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1387, 1, 44, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1388, 1, 32, '[\"read\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1389, 1, 34, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1390, 1, 33, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1391, 1, 35, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1392, 1, 36, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1393, 1, 39, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1394, 1, 40, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1395, 1, 43, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1396, 1, 16, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1397, 1, 8, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1398, 1, 9, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1399, 1, 14, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-10-23 09:37:36', 'sahyudi', '2023-10-23 09:37:36', 'sahyudi');
INSERT INTO `role_menu` VALUES (1503, 6, 1, '[\"read\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1504, 6, 18, '[\"read\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1505, 6, 19, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1506, 6, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1507, 6, 20, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1508, 6, 41, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1509, 6, 28, '[\"read\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1510, 6, 45, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1511, 6, 29, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1512, 6, 30, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1513, 6, 22, '[\"read\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1514, 6, 23, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1515, 6, 24, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1516, 6, 25, '[\"read\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1517, 6, 26, '[\"read\",\"create\",\"update\",\"delete\",\"quotation\",\"cetak\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1518, 6, 27, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"invoice\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1519, 6, 31, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1520, 6, 44, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1521, 6, 32, '[\"read\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1522, 6, 34, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1523, 6, 33, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1524, 6, 35, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1525, 6, 36, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1526, 6, 39, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1527, 6, 40, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1528, 6, 43, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\"]', '2023-11-17 06:28:48', 'sahyudi', '2023-11-17 06:28:48', 'sahyudi');
INSERT INTO `role_menu` VALUES (1529, 5, 1, '[\"read\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1530, 5, 18, '[\"read\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1531, 5, 3, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1532, 5, 20, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1533, 5, 28, '[\"read\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1534, 5, 45, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1535, 5, 29, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1536, 5, 30, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1537, 5, 22, '[\"read\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1538, 5, 23, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1539, 5, 24, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1540, 5, 25, '[\"read\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1541, 5, 26, '[\"read\",\"create\",\"update\",\"delete\",\"quotation\",\"cetak\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1542, 5, 27, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"invoice\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1543, 5, 31, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1544, 5, 44, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1545, 5, 32, '[\"read\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1546, 5, 34, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1547, 5, 33, '[\"read\",\"create\",\"update\",\"delete\",\"export\",\"cetak\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1548, 5, 35, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1549, 5, 36, '[\"read\",\"create\",\"update\",\"delete\",\"cetak\",\"download\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1550, 5, 39, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1551, 5, 40, '[\"read\",\"create\",\"update\",\"delete\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');
INSERT INTO `role_menu` VALUES (1552, 5, 43, '[\"read\",\"create\",\"update\",\"delete\",\"export\"]', '2023-11-17 06:29:11', 'sahyudi', '2023-11-17 06:29:11', 'sahyudi');

-- ----------------------------
-- Table structure for sale_delivery
-- ----------------------------
DROP TABLE IF EXISTS `sale_delivery`;
CREATE TABLE `sale_delivery`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `customer_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `currency` enum('IDR','SGD','USD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IDR',
  `po_id` int NULL DEFAULT NULL,
  `delivery_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `trans_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_issue` date NULL DEFAULT NULL,
  `term` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `delivery_time` date NULL DEFAULT NULL,
  `delivery_project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `attn_delivery` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_delivery` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `city_at` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `prepare_date` date NULL DEFAULT NULL,
  `prepare_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `received_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `received_date` date NULL DEFAULT NULL,
  `delivery_date` date NULL DEFAULT NULL,
  `delivery_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `issued_by` int NULL DEFAULT NULL,
  `issued_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `confirm_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `invo_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `ppn` int NULL DEFAULT 11,
  `delivery` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `term_payment` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `time_valid` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `warranty` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tera` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `remark` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tax_ppn` int NULL DEFAULT 11,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_tax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dp_persen` int NULL DEFAULT NULL,
  `dp_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `balance` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_stat` enum('BELUM BAYAR','BELUM LUNAS','LUNAS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'BELUM LUNAS',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` datetime NULL DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_delivery
-- ----------------------------
INSERT INTO `sale_delivery` VALUES (11, 'ff9db1bb-84cc-11ee-a145-3176bc4c4780', 1, 4, 'IDR', 15, 'DO01', 'TO01', '2023-11-17', 'term', '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', 'WHATSAPP', '2023-11-17', 'Project', NULL, NULL, 'Batam', '2023-11-17', 'Yudi', 'Muhamad Sahyudi', '2023-11-17', '2023-11-17', 'Sahyudi', 2, NULL, NULL, '87255990', 'Y', 'OPEN', 'INV01', '2023-09-25', '2023-10-25', 11, 'Ready Order', 'Quotation for Gas Meter Saitec Modbus, Type G4 DN20 & DN25', '- 50% DP After PO - 50% After MOS', 'price remark yudi', 'Valid 3 Weeks', 'Valid 3 Weeks', '', 'Please Send Invoice Back After Approved to Email or WA', 'MOS', 11, '78609000', '8646990', 20, '17451198', '0', 'LUNAS', '2023-11-17 05:10:49', 'sahyudi', '2023-11-17 06:31:41', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_delivery` VALUES (12, 'fa34be85-84cd-11ee-a145-3176bc4c4780', 1, 4, 'IDR', 15, 'D002', 'TO02', '2023-11-17', 'term', '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', 'WHATSAPP', '2023-11-17', '-', NULL, NULL, 'Batam', '2023-11-17', '-', '-', '2023-11-17', '2023-11-17', '-', 6, NULL, NULL, '174511980', 'Y', 'OPEN', 'INV02', '2023-09-25', '2023-10-25', 11, 'Ready Order', 'Quotation for Gas Meter Saitec Modbus, Type G4 DN20 & DN25', '- 50% DP After PO - 50% After MOS', 'price remark yudi', 'Valid 3 Weeks', 'Valid 3 Weeks', '', 'Please Send Invoice Back After Approved to Email or WA', 'Balance', 11, '157218000', '17293980', 50, '87255990', '0', 'LUNAS', '2023-11-17 05:17:49', 'sahyudi', '2023-11-20 08:48:16', '0000-00-00 00:00:00', 'N', NULL, NULL);

-- ----------------------------
-- Table structure for sale_delivery_copy1
-- ----------------------------
DROP TABLE IF EXISTS `sale_delivery_copy1`;
CREATE TABLE `sale_delivery_copy1`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `customer_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `po_id` int NULL DEFAULT NULL,
  `delivery_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `trans_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_issue` date NULL DEFAULT NULL,
  `term` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `currency` enum('IDR','SGD','USD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IDR',
  `delivery_time` datetime NULL DEFAULT NULL,
  `delivery_project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `attn_delivery` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_delivery` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `city_at` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `prepare_date` date NULL DEFAULT NULL,
  `prepare_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `received_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `received_date` date NULL DEFAULT NULL,
  `delivery_date` date NULL DEFAULT NULL,
  `delivery_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `issued_by` int NULL DEFAULT NULL,
  `issued_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `confirm_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` datetime NULL DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_delivery_copy1
-- ----------------------------
INSERT INTO `sale_delivery_copy1` VALUES (2, 'a2927c9f-6e05-11ee-b8db-e2e7e1b0cffd', 1, 4, 10, 'DO001/10/2023', '001/10/2023', '2023-10-19', NULL, '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', NULL, 'IDR', '2023-10-19 10:00:00', 'Muhamad', NULL, NULL, 'Batam', '2023-10-19', 'Yudi', 'Sahyudi', '2023-10-19', '2023-10-19', 'Yudi', 2, NULL, NULL, '275000', 'Y', 'OPEN', '2023-10-19 05:28:17', 'sahyudi', '2023-10-19 10:34:03', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_delivery_copy1` VALUES (4, '4dc8b557-7156-11ee-b8db-e2e7e1b0cffd', 5, 6, 18, 'DO333/OKT/2023', '333/OKT/2023', '2023-10-23', NULL, '021 3333 4444', 'nevergiveup@yahoo.com', 'coba', '021 3333 4444', 'coba', NULL, 'IDR', '2023-10-30 10:00:00', 'Bambang', NULL, NULL, 'Bekasi', '2023-10-23', 'Joko', 'Yono', '2023-10-23', '2023-10-23', 'Joko', 6, NULL, NULL, '6390000', 'Y', 'OPEN', '2023-10-23 10:43:18', 'venny', '2023-10-25 18:45:12', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_delivery_copy1` VALUES (5, '60d000fa-8223-11ee-a145-3176bc4c4780', 1, 4, 15, '000', '00', '2023-11-13', NULL, '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', NULL, 'IDR', '2023-11-13 19:51:00', 'delivery', NULL, NULL, 'Batam', '2023-11-13', 'sahyudi', 'Sahyudi', '2023-11-13', '2023-11-13', 'Shayudi', 2, NULL, NULL, '78609000', 'Y', 'OPEN', '2023-11-13 19:51:35', 'sahyudi', NULL, NULL, 'N', NULL, NULL);

-- ----------------------------
-- Table structure for sale_delivery_item
-- ----------------------------
DROP TABLE IF EXISTS `sale_delivery_item`;
CREATE TABLE `sale_delivery_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `delivery_id` bigint NULL DEFAULT NULL,
  `po_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `disc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE,
  INDEX `delivery_id`(`delivery_id` ASC) USING BTREE,
  CONSTRAINT `sale_delivery_item_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `sale_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_delivery_item
-- ----------------------------
INSERT INTO `sale_delivery_item` VALUES (28, '4bc2d433-84d8-11ee-a145-3176bc4c4780', 11, 15, 12, 10, '7860900', '0', '78609000', '2023-11-17 06:31:41', 'sahyudi', NULL, NULL);
INSERT INTO `sale_delivery_item` VALUES (29, 'dfb3f265-8746-11ee-a145-3176bc4c4780', 12, 15, 12, 20, '7860900', '0', '157218000', '2023-11-20 08:48:16', 'ranti', NULL, NULL);

-- ----------------------------
-- Table structure for sale_delivery_item_copy1
-- ----------------------------
DROP TABLE IF EXISTS `sale_delivery_item_copy1`;
CREATE TABLE `sale_delivery_item_copy1`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `delivery_id` bigint NULL DEFAULT NULL,
  `po_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE,
  INDEX `delivery_id`(`delivery_id` ASC) USING BTREE,
  CONSTRAINT `sale_delivery_item_copy1_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `sale_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_delivery_item_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for sale_inquiry
-- ----------------------------
DROP TABLE IF EXISTS `sale_inquiry`;
CREATE TABLE `sale_inquiry`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `customer_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `currency` enum('IDR','SGD','USD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IDR',
  `reff` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `terms` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `valid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `terms_remark` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `payment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `delivery_time` datetime NULL DEFAULT NULL,
  `ship` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `issued_by` int NULL DEFAULT NULL,
  `confirm_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_quotation` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `status` enum('CLOSE','OPEN') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` datetime NULL DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_inquiry
-- ----------------------------
INSERT INTO `sale_inquiry` VALUES (4, '9faff2a9-5829-11ee-9a5a-8b6869d6f343', 1, 4, 'IDR', 'terms', 'Muhamad Sahyudi', 'terms', '0853741314181', '(0778) 021 0897', '2023-09-21', 'Valid', 'Project', 'tuahsakti@gmail.com', 'Termsk Remark', 'Payment', '2023-09-24 06:36:00', 'Ship', NULL, 6, NULL, 'Y', 'N', 'OPEN', '2023-09-21 09:50:28', 'sahyudi', '2023-10-04 15:57:04', '0000-00-00 00:00:00', 'N', '2023-09-26 14:10:18', 'sahyudi');
INSERT INTO `sale_inquiry` VALUES (5, 'dc15164e-5b93-11ee-9cff-9289f84058f7', 2, 4, 'IDR', 'wa', 'attn', 'terms', '0813000222', '00022', '2023-09-11', 'valid', 'ada', 'coba@ss.com', 'term', 'ship', NULL, NULL, NULL, 5, NULL, 'Y', 'N', 'OPEN', '2023-09-25 18:08:30', 'venny', '2023-09-26 14:19:30', NULL, 'Y', '2023-09-26 14:19:30', 'sahyudi');
INSERT INTO `sale_inquiry` VALUES (6, 'cbeda5cc-68bf-11ee-9cff-9289f84058f7', 4, 5, 'IDR', 'coba', 'Ranti', 'coba', '021-2233-3445', '021-2233-3444', '2023-10-12', 'coba', 'Banyak', 'sales2@saitecmeter.com', 'coba', 'coba', '0000-00-00 00:00:00', '', NULL, 2, NULL, 'Y', 'N', 'OPEN', '2023-10-12 12:25:45', 'ranti', '2023-10-17 09:12:37', '0000-00-00 00:00:00', 'Y', '2023-10-17 09:12:37', 'ranti');
INSERT INTO `sale_inquiry` VALUES (7, 'd2eadd02-68bf-11ee-9cff-9289f84058f7', 4, 5, 'IDR', 'coba', 'Ranti', 'coba', '021-2233-3445', '021-2233-3444', '2023-10-12', 'coba', 'Banyak', 'sales2@saitecmeter.com', 'coba', 'coba', NULL, NULL, NULL, 6, NULL, 'Y', 'N', 'OPEN', '2023-10-12 12:25:57', 'ranti', '2023-10-17 09:12:42', NULL, 'Y', '2023-10-17 09:12:42', 'ranti');
INSERT INTO `sale_inquiry` VALUES (8, 'd8779bfc-68bf-11ee-9cff-9289f84058f7', 4, 5, 'IDR', 'coba', 'Ranti', 'coba', '021-2233-3445', '021-2233-3444', '2023-10-12', 'coba', 'Banyak', 'sales2@saitecmeter.com', 'coba', 'coba', NULL, NULL, NULL, 6, NULL, 'Y', 'N', 'OPEN', '2023-10-12 12:26:06', 'ranti', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (9, 'e02f0db0-68bf-11ee-9cff-9289f84058f7', 4, 5, 'IDR', 'coba', 'Ranti', 'coba', '021-2233-3445', '021-2233-3444', '2023-10-12', 'coba', 'Banyak', 'sales2@saitecmeter.com', 'coba', 'coba', NULL, NULL, NULL, 6, NULL, 'Y', 'N', 'OPEN', '2023-10-12 12:26:19', 'ranti', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (10, 'e64293b0-68bf-11ee-9cff-9289f84058f7', 4, 5, 'IDR', 'coba', 'Ranti', 'coba', '021-2233-3445', '021-2233-3444', '2023-10-12', 'coba', 'Banyak', 'sales2@saitecmeter.com', 'coba', 'coba', NULL, NULL, NULL, 6, NULL, 'Y', 'N', 'OPEN', '2023-10-12 12:26:30', 'ranti', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (11, 'c468dd35-690d-11ee-9cff-9289f84058f7', 1, 5, 'IDR', 'reff', 'Muhamad sahyudi', 'terms', '0853741314181', '(0778) 021 0897', '2023-10-12', 'valid', 'Project', 'tuahsakti@gmail.com', '', '', NULL, NULL, NULL, 2, NULL, 'Y', 'N', 'OPEN', '2023-10-12 21:43:54', 'sahyudi', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (12, '83705145-690e-11ee-9cff-9289f84058f7', 1, 4, 'IDR', 'terms', 'Muhamad Sahyu', 'terms', '0853741314181', '(0778) 021 0897', '2023-10-12', 'valid', 'project', 'tuahsakti@gmail.com', '', '', '0000-00-00 00:00:00', '', '820000', 2, NULL, 'Y', 'N', 'OPEN', '2023-10-12 21:49:14', 'sahyudi', '2023-10-12 21:57:36', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (13, '3e56a0da-7149-11ee-b8db-e2e7e1b0cffd', 3, 4, 'IDR', 'coba', 'coba', 'coba', '0088223', '09229', '2023-10-23', 'coba', 'coba', 'email@domain.com', 'coba', '', NULL, NULL, '1000000', 5, NULL, 'Y', 'N', 'OPEN', '2023-10-23 09:09:48', 'venny', '2023-10-23 09:10:47', NULL, 'Y', '2023-10-23 09:10:47', 'venny');
INSERT INTO `sale_inquiry` VALUES (14, 'bde15deb-7149-11ee-b8db-e2e7e1b0cffd', 5, 6, 'IDR', 'coba', 'coba', 'coba', '021 3333 4444', '021 1111 2222', '2023-10-23', 'coba', 'coba', 'nevergiveup@yahoo.com', '', '', NULL, NULL, '7100000', 5, NULL, 'Y', 'N', 'OPEN', '2023-10-23 09:13:22', 'venny', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (15, 'f7b1bb84-7176-11ee-b8db-e2e7e1b0cffd', 1, 6, 'IDR', 'coba', 'Naufal', 'coba', '0853741314181', '(0778) 021 0897', '2023-10-23', 'coba', 'coba', 'tuahsakti@gmail.com', 'coba', 'coba', NULL, NULL, '700000', 5, NULL, 'Y', 'N', 'OPEN', '2023-10-23 14:37:07', 'venny', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (16, '5dcd4338-7192-11ee-b8db-e2e7e1b0cffd', 1, 6, 'IDR', 'dwes', 'Ms. Ranti', 'sfwew', '0853741314181', '(0778) 021 0897', '2023-10-23', 'ees', 'wefewwe', 'tuahsakti@gmail.com', 'eedsds', 'erereweae', NULL, NULL, 'NaN', 6, NULL, 'Y', 'N', 'OPEN', '2023-10-23 17:53:14', 'ranti', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (17, '6bdb2eb6-7192-11ee-b8db-e2e7e1b0cffd', 1, 6, 'IDR', 'dwes', 'Ms. Ranti', 'sfwew', '0853741314181', '(0778) 021 0897', '2023-10-23', 'ees', 'wefewwe', 'tuahsakti@gmail.com', 'eedsds', 'erereweae', NULL, NULL, '40540536', 6, NULL, 'Y', 'N', 'OPEN', '2023-10-23 17:53:38', 'ranti', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_inquiry` VALUES (18, 'f6df1ab1-7c77-11ee-a145-3176bc4c4780', 1, 6, 'IDR', 'dwes', 'ftre', 'sfwew', '0853741314181', '(0778) 021 0897', '2023-11-06', 'eese', 'wefewwe', 'tuahsakti@gmail.com', 'eedsds', 'erereweae', NULL, NULL, '700000', 6, NULL, 'Y', 'N', 'OPEN', '2023-11-06 14:41:57', 'ranti', NULL, NULL, 'N', NULL, NULL);

-- ----------------------------
-- Table structure for sale_inquiry_item
-- ----------------------------
DROP TABLE IF EXISTS `sale_inquiry_item`;
CREATE TABLE `sale_inquiry_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `inquiry_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `qty` int NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_quotation` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_inquiry_item
-- ----------------------------
INSERT INTO `sale_inquiry_item` VALUES (13, 'dc154ff9-5b93-11ee-9cff-9289f84058f7', 5, 4, NULL, 'deskripsi', 'Nama item', 1, '150000', '150000', NULL, NULL, '2023-09-25 18:08:30', 'venny', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (20, 'fd4d3cd8-6293-11ee-9cff-9289f84058f7', 4, 2, '', 'DESKRIPSI BARANG', 'NAMA ITEM', 2, '150000', '300000', NULL, NULL, '2023-10-04 15:57:04', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (21, 'fd4d3e3d-6293-11ee-9cff-9289f84058f7', 4, 3, '', 'DESKRIPSI', 'NAMA ITEM 2', 1, '150000', '150000', NULL, NULL, '2023-10-04 15:57:04', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (22, 'fd4d3e88-6293-11ee-9cff-9289f84058f7', 4, 4, '', 'deskripsi', 'Nama item', 1, '150000', '150000', NULL, NULL, '2023-10-04 15:57:04', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (24, 'd2eaf66a-68bf-11ee-9cff-9289f84058f7', 7, 8, NULL, 'ABCDEFGHJKL', 'ABC', 1, '10000', '10000', NULL, NULL, '2023-10-12 12:25:57', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (25, 'd877acb8-68bf-11ee-9cff-9289f84058f7', 8, 8, NULL, 'ABCDEFGHJKL', 'ABC', 1, '10000', '10000', NULL, NULL, '2023-10-12 12:26:06', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (26, 'd877ad7e-68bf-11ee-9cff-9289f84058f7', 8, 2, NULL, 'DESKRIPSI BARANG', 'NAMA ITEM', 1, '150000', '150000', NULL, NULL, '2023-10-12 12:26:06', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (27, 'e02f2686-68bf-11ee-9cff-9289f84058f7', 9, 8, NULL, 'ABCDEFGHJKL', 'ABC', 1, '10000', '10000', NULL, NULL, '2023-10-12 12:26:19', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (28, 'e02f2760-68bf-11ee-9cff-9289f84058f7', 9, 2, NULL, 'DESKRIPSI BARANG', 'NAMA ITEM', 1, '150000', '150000', NULL, NULL, '2023-10-12 12:26:19', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (29, 'e642a611-68bf-11ee-9cff-9289f84058f7', 10, 8, NULL, 'ABCDEFGHJKL', 'ABC', 1, '10000', '10000', NULL, NULL, '2023-10-12 12:26:30', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (30, 'e642a70e-68bf-11ee-9cff-9289f84058f7', 10, 2, NULL, 'DESKRIPSI BARANG', 'NAMA ITEM', 1, '150000', '150000', NULL, NULL, '2023-10-12 12:26:30', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (31, 'a886d37a-690d-11ee-9cff-9289f84058f7', 6, 8, '', 'ABCDEFGHJKL', 'ABC', 1, '10000', '10000', NULL, NULL, '2023-10-12 21:43:07', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (32, 'c4691ae9-690d-11ee-9cff-9289f84058f7', 11, 2, NULL, 'DESKRIPSI BARANG', 'NAMA ITEM', 1, '150000', '150000', NULL, NULL, '2023-10-12 21:43:54', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (33, 'c4691bfd-690d-11ee-9cff-9289f84058f7', 11, 3, NULL, 'DESKRIPSI', 'NAMA ITEM 2', 1, '150000', '150000', NULL, NULL, '2023-10-12 21:43:54', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (34, 'c4691c3f-690d-11ee-9cff-9289f84058f7', 11, 8, NULL, 'ABCDEFGHJKL', 'ABC', 1, '10000', '10000', NULL, NULL, '2023-10-12 21:43:54', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (39, 'aecf38d8-690f-11ee-9cff-9289f84058f7', 12, 2, 'K0-002', 'DESKRIPSI BARANG', 'NAMA ITEM', 2, '150000', '300000', NULL, NULL, '2023-10-12 21:57:36', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (40, 'aecf3aac-690f-11ee-9cff-9289f84058f7', 12, 3, 'K-002', 'DESKRIPSI', 'NAMA ITEM 2', 2, '150000', '300000', NULL, NULL, '2023-10-12 21:57:36', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (41, 'aecf3b16-690f-11ee-9cff-9289f84058f7', 12, 7, 'KH-001', 'DESKRIPSI PRODUK', 'NAMA PRODUK', 2, '100000', '200000', NULL, NULL, '2023-10-12 21:57:36', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (42, 'aecf3be3-690f-11ee-9cff-9289f84058f7', 12, 8, '00A', 'ABCDEFGHJKL', 'ABC', 2, '10000', '20000', NULL, NULL, '2023-10-12 21:57:36', 'sahyudi', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (43, '3e56b37d-7149-11ee-b8db-e2e7e1b0cffd', 13, 9, 'WM', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 1, '1000000', '1000000', NULL, NULL, '2023-10-23 09:09:48', 'venny', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (44, 'bde16f26-7149-11ee-b8db-e2e7e1b0cffd', 14, 9, 'WM', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 5, '1000000', '5000000', NULL, NULL, '2023-10-23 09:13:22', 'venny', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (45, 'bde170d0-7149-11ee-b8db-e2e7e1b0cffd', 14, 10, 'KO01', 'DESKRIPSI PRODUK ADALAH', 'SAITEC METER', 3, '700000', '2100000', NULL, NULL, '2023-10-23 09:13:22', 'venny', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (46, 'f7b1d9e8-7176-11ee-b8db-e2e7e1b0cffd', 15, 10, 'KO01', 'DESKRIPSI PRODUK ADALAH', 'SAITEC METER', 1, '700000', '700000', NULL, NULL, '2023-10-23 14:37:07', 'venny', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (47, '5dcd5882-7192-11ee-b8db-e2e7e1b0cffd', 16, 12, '111', 'Water Meter Modbus DN1', 'Water Meter Modbus', 1, '-', '0', NULL, NULL, '2023-10-23 17:53:14', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (48, '6bdb3e90-7192-11ee-b8db-e2e7e1b0cffd', 17, 12, '111', 'Water Meter Modbus DN1', 'Water Meter Modbus', 6, '6756756', '40540536', NULL, NULL, '2023-10-23 17:53:38', 'ranti', NULL, NULL);
INSERT INTO `sale_inquiry_item` VALUES (49, 'f6df2b04-7c77-11ee-a145-3176bc4c4780', 18, 10, 'KO01', 'DESKRIPSI PRODUK ADALAH', 'SAITEC METER', 1, '700000', '700000', NULL, NULL, '2023-11-06 14:41:57', 'ranti', NULL, NULL);

-- ----------------------------
-- Table structure for sale_invoice
-- ----------------------------
DROP TABLE IF EXISTS `sale_invoice`;
CREATE TABLE `sale_invoice`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `customer_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `po_id` int NULL DEFAULT NULL,
  `invo_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `term` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `currency` enum('IDR','SGD','USD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IDR',
  `ppn` int NULL DEFAULT 11,
  `delivery` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `term_payment` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `time_valid` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `warranty` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tera` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `remark` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tax_ppn` int NULL DEFAULT 11,
  `issued_by` int NULL DEFAULT NULL,
  `issued_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `confirm_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_tax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dp_persen` int NULL DEFAULT NULL,
  `dp_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kurang_bayar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_stat` enum('BELUM BAYAR','BELUM LUNAS','LUNAS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'BELUM LUNAS',
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_invoice` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` datetime NULL DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for sale_invoice_item
-- ----------------------------
DROP TABLE IF EXISTS `sale_invoice_item`;
CREATE TABLE `sale_invoice_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT uuid(),
  `invoice_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `qty` int NULL DEFAULT NULL,
  `qty_do` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_do` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `uuid`) USING BTREE,
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE,
  CONSTRAINT `sale_invoice_item_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_invoice_item
-- ----------------------------

-- ----------------------------
-- Table structure for sale_invoice_payment
-- ----------------------------
DROP TABLE IF EXISTS `sale_invoice_payment`;
CREATE TABLE `sale_invoice_payment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `invoice_id` bigint NULL DEFAULT NULL,
  `remark` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date` date NULL DEFAULT NULL,
  `paid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `unpaid_amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE,
  CONSTRAINT `sale_invoice_payment_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_invoice_payment
-- ----------------------------

-- ----------------------------
-- Table structure for sale_po
-- ----------------------------
DROP TABLE IF EXISTS `sale_po`;
CREATE TABLE `sale_po`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `customer_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `quotation_id` int NULL DEFAULT NULL,
  `po_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `term` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `currency` enum('IDR','SGD','USD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IDR',
  `ppn` int NULL DEFAULT 11,
  `delivery` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `term_payment` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `time_valid` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `warranty` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tera` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `remark` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tax_ppn` int NULL DEFAULT 11,
  `issued_by` int NULL DEFAULT NULL,
  `issued_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `confirm_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_tax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_invoice` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_po
-- ----------------------------
INSERT INTO `sale_po` VALUES (10, '64612665-5d8f-11ee-9cff-9289f84058f7', 1, 4, 7, '001/PO/SEP/2023', '2023-09-25', '2023-10-25', 'term', '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', 'WHATSAPP', 'IDR', 11, 'Ready Order', 'Quotation for Gas Meter Saitec Modbus, Type G4 DN20 & DN25', '- 50% DP After PO - 50% After MOS', 'price remark yudi', 'Valid 3 Weeks', 'Valid 3 Weeks', 'Exclude', NULL, 11, 2, NULL, NULL, '1221000', '1100000', '121000', 'Y', 'N', 'OPEN', '2023-09-28 06:41:34', 'sahyudi', '2023-11-17 05:08:45', NULL, 'N', '2023-09-28 18:49:01', 'sahyudi');
INSERT INTO `sale_po` VALUES (15, '63e0cbc7-7152-11ee-b8db-e2e7e1b0cffd', 1, 4, 7, 'PO01', '2023-09-25', '2023-10-25', 'term', '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', 'WHATSAPP', 'IDR', 11, 'Ready Order', 'Quotation for Gas Meter Saitec Modbus, Type G4 DN20 & DN25', '- 50% DP After PO - 50% After MOS', 'price remark yudi', 'Valid 3 Weeks', 'Valid 3 Weeks', 'Exclude', 'Please Send Purchase Order Back After Approved to Email or WA', 11, 2, NULL, NULL, '567163935', '510958500', '56205435', 'Y', 'N', 'OPEN', '2023-10-23 10:15:17', 'sahyudi', '2023-11-17 05:08:40', 'sahyudi', 'N', NULL, NULL);
INSERT INTO `sale_po` VALUES (16, '2f7bc222-7153-11ee-b8db-e2e7e1b0cffd', 5, 6, 13, '002/PO/OKT/2023', '2023-10-23', '2023-10-30', 'term', '021 3333 4444', 'nevergiveup@yahoo.com', 'coba', '021 3333 4444', 'coba', 'WA', 'IDR', 11, 'ship', 'project', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 weeks', '1 year', 'tera', 'Please Send Purchase Order Back After Approved to Email or WA', 11, 5, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', 'OPEN', '2023-10-23 10:20:58', 'venny', '2023-10-23 10:21:33', NULL, 'Y', '2023-10-23 10:21:33', 'venny');
INSERT INTO `sale_po` VALUES (17, '67d4a83a-7153-11ee-b8db-e2e7e1b0cffd', 5, 6, 13, '002/PO/OKT/2023', '2023-10-23', '2023-10-30', 'term', '021 3333 4444', 'nevergiveup@yahoo.com', 'coba', '021 3333 4444', 'coba', 'WA', 'IDR', 11, 'ship', 'project', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 weeks', '1 year', 'tera', 'Please Send Purchase Order Back After Approved to Email or WA', 11, 5, NULL, NULL, NULL, NULL, NULL, 'Y', 'N', 'OPEN', '2023-10-23 10:22:33', 'venny', '2023-10-23 10:22:56', NULL, 'Y', '2023-10-23 10:22:56', 'venny');
INSERT INTO `sale_po` VALUES (18, '08144a5f-7154-11ee-b8db-e2e7e1b0cffd', 5, 6, 14, '333/PO/OKT/2023', '2023-10-23', '2023-10-30', 'term', '021 3333 4444', 'nevergiveup@yahoo.com', 'coba', '021 3333 4444', 'coba', 'WA', 'IDR', 11, 'ship', 'project', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 weeks', '1 year', 'tera', 'Please Send Purchase Order Back After Approved to Email or WA', 11, 5, NULL, NULL, '7092900', '6390000', '702900', 'Y', 'N', 'OPEN', '2023-10-23 10:27:02', 'venny', '2023-11-16 21:51:49', NULL, 'N', NULL, NULL);
INSERT INTO `sale_po` VALUES (19, 'aef66b3f-7192-11ee-b8db-e2e7e1b0cffd', 5, 6, 12, '2342323234', '2023-10-17', '2023-11-17', 'Net 30', '021 3333 4444', 'nevergiveup@yahoo.com', 'Ms. Ranti', '0821-2386-7664', 'Sudi Apartment', 'WhatsApp', 'IDR', 11, 'ASAP', 'Water Meter Analog ', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 Weeks', ' 1 Year', 'Exclude', 'Please Send Purchase Order Back After Approved to Email or WA', 11, 2, NULL, NULL, '6829830', '6153000', '676830', 'Y', 'N', 'OPEN', '2023-10-23 17:55:31', 'ranti', '2023-11-16 21:51:49', NULL, 'N', NULL, NULL);
INSERT INTO `sale_po` VALUES (20, '4d3de479-7c78-11ee-a145-3176bc4c4780', 1, 6, 17, '34', '2023-11-06', '2023-11-06', 'Net 30', '02182627536', 'umrotakarya@gmail.com', 'Ms. Ranti', '02182627536', 'PROJECT', 'WhatsApp', 'IDR', 11, 'ASAP', 'Water Meter MOD', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 Weeks', ' 1 Year', 'Exclude', 'Please Send Purchase Order Back After Approved to Email or WA', 11, 2, NULL, NULL, '6032850', '5435000', '597850', 'Y', 'N', 'OPEN', '2023-11-06 14:44:22', 'ranti', '2023-11-20 11:33:45', 'sahyudi', 'N', NULL, NULL);

-- ----------------------------
-- Table structure for sale_po_item
-- ----------------------------
DROP TABLE IF EXISTS `sale_po_item`;
CREATE TABLE `sale_po_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `po_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `qty` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_quotation` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_po_item
-- ----------------------------
INSERT INTO `sale_po_item` VALUES (42, '57244480-5de8-11ee-9cff-9289f84058f7', 10, 2, 'K0-002', 'NAMA ITEM', 'NAMA ITEM', 4, 50, '150000', '300000', NULL, NULL, '2023-09-28 17:18:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (43, '57244858-5de8-11ee-9cff-9289f84058f7', 10, 3, 'K-002', 'NAMA ITEM 2', 'NAMA ITEM 2', 4, 50, '150000', '300000', NULL, NULL, '2023-09-28 17:18:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (44, '572448f9-5de8-11ee-9cff-9289f84058f7', 10, 4, 'K0-0001', 'Nama item', 'Nama item', 4, 50, '150000', '300000', NULL, NULL, '2023-09-28 17:18:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (45, '57244935-5de8-11ee-9cff-9289f84058f7', 10, 7, 'KH-001', 'NAMA PRODUK', 'NAMA PRODUK', 4, 50, '100000', '200000', NULL, NULL, '2023-09-28 17:18:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (46, '63e1eebe-7152-11ee-b8db-e2e7e1b0cffd', 0, 2, 'K0-002', 'NAMA ITEM', 'NAMA ITEM', 1, 50, '150000', '75000', NULL, NULL, '2023-10-23 10:15:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (47, '63e1eff7-7152-11ee-b8db-e2e7e1b0cffd', 0, 3, 'K-002', 'NAMA ITEM 2', 'NAMA ITEM 2', 1, 50, '150000', '75000', NULL, NULL, '2023-10-23 10:15:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (48, '63e1f096-7152-11ee-b8db-e2e7e1b0cffd', 0, 4, 'K0-0001', 'Nama item', 'Nama item', 1, 50, '150000', '75000', NULL, NULL, '2023-10-23 10:15:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (49, '63e1f0d3-7152-11ee-b8db-e2e7e1b0cffd', 0, 7, 'KH-001', 'NAMA PRODUK', 'NAMA PRODUK', 1, 50, '100000', '50000', NULL, NULL, '2023-10-23 10:15:17', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (50, '2f7bd939-7153-11ee-b8db-e2e7e1b0cffd', 0, 9, 'WM', 'Water Meter Analog ', 'Water Meter Analog ', 5, 0, '1000000', '5000000', NULL, NULL, '2023-10-23 10:20:58', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (51, '2f7bda18-7153-11ee-b8db-e2e7e1b0cffd', 0, 10, 'KO01', 'SAITEC METER', 'SAITEC METER', 3, 0, '700000', '2100000', NULL, NULL, '2023-10-23 10:20:58', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (52, '67d4c560-7153-11ee-b8db-e2e7e1b0cffd', 0, 9, 'WM', 'Water Meter Analog ', 'Water Meter Analog ', 5, 0, '1000000', '5000000', NULL, NULL, '2023-10-23 10:22:33', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (53, '67d4c667-7153-11ee-b8db-e2e7e1b0cffd', 0, 10, 'KO01', 'SAITEC METER', 'SAITEC METER', 3, 0, '700000', '2100000', NULL, NULL, '2023-10-23 10:22:33', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (54, '081478c0-7154-11ee-b8db-e2e7e1b0cffd', 0, 9, 'WM', 'Water Meter Analog ', 'Water Meter Analog ', 5, 0, '1000000', '5000000', NULL, NULL, '2023-10-23 10:27:02', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (55, '08147a32-7154-11ee-b8db-e2e7e1b0cffd', 0, 10, 'KO01', 'SAITEC METER', 'SAITEC METER', 3, 0, '700000', '2100000', NULL, NULL, '2023-10-23 10:27:02', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (56, '2aff4646-7154-11ee-b8db-e2e7e1b0cffd', 18, 9, 'WM', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 5, 10, '1000000', '4500000', NULL, NULL, '2023-10-23 10:28:00', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (57, '2aff4804-7154-11ee-b8db-e2e7e1b0cffd', 18, 10, 'KO01', 'SAITEC METER', 'SAITEC METER', 3, 10, '700000', '1890000', NULL, NULL, '2023-10-23 10:28:00', 'venny', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (58, 'aef69265-7192-11ee-b8db-e2e7e1b0cffd', 0, 9, 'WM', 'Water Meter Analog ', 'Water Meter Analog ', 1, 0, '400000', '400000', NULL, NULL, '2023-10-23 17:55:31', 'ranti', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (61, 'edcc5db7-7776-11ee-a145-3176bc4c4780', 19, 12, '111', 'Water Meter Modbus', 'Water Meter Modbus', 7, 0, '879000', '6153000', NULL, NULL, '2023-10-31 05:51:57', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (62, 'f6289f63-7776-11ee-a145-3176bc4c4780', 15, 12, '111', 'Water Meter Modbus', 'Water Meter Modbus', 65, 0, '7860900', '510958500', NULL, NULL, '2023-10-31 05:52:11', 'sahyudi', NULL, NULL);
INSERT INTO `sale_po_item` VALUES (64, 'fde423af-875d-11ee-a145-3176bc4c4780', 20, 9, 'WM', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 1, 0, '5435000', '5435000', NULL, NULL, '2023-11-20 11:33:45', 'sahyudi', NULL, NULL);

-- ----------------------------
-- Table structure for sale_quotation
-- ----------------------------
DROP TABLE IF EXISTS `sale_quotation`;
CREATE TABLE `sale_quotation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `customer_id` bigint NULL DEFAULT NULL,
  `company_id` bigint NULL DEFAULT NULL,
  `inquiry_id` int NULL DEFAULT NULL,
  `quot_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `term` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `attn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `currency` enum('IDR','SGD','USD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'IDR',
  `ppn` int NULL DEFAULT 11,
  `delivery` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `term_payment` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `time_valid` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `warranty` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tera` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tax_ppn` int NULL DEFAULT 11,
  `issued_by` int NULL DEFAULT NULL,
  `issued_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `confirm_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_tax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_po` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `status` enum('OPEN','CLOSE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'OPEN',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` datetime NULL DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_quotation
-- ----------------------------
INSERT INTO `sale_quotation` VALUES (7, 'e08d3c29-5b58-11ee-9cff-9289f84058f7', 1, 4, NULL, '201/QUOT/2023', '2023-09-25', '2023-10-25', 'term', '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', 'WHATSAPP', 'IDR', 11, 'Ready Order', 'Quotation for Gas Meter Saitec Modbus, Type G4 DN20 & DN25', '- 50% DP After PO - 50% After MOS', 'price remark yudi', 'Valid 3 Weeks', 'Valid 3 Weeks', 'Exclude', 11, 6, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA', '305250', '275000', '30250', 'Y', 'N', 'CLOSE', '2023-09-25 11:06:17', 'sahyudi', '2023-10-23 10:15:17', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (9, '2fbb6424-5b8a-11ee-9cff-9289f84058f7', 1, 4, NULL, '202/QUOT/2023', '2023-09-25', '2023-10-25', 'net 30', '085374131481', 'tuahsakti@gmail.com', 'MUHAMAD SAHYUDI', '085374131481', 'PROJECT', 'WHATSAPP', 'IDR', 11, 'Ready Order', 'Quotation for Gas Meter Saitec Modbus, Type G4 DN20 & DN25', '- 50% DP After PO - 50% After MOS', 'Valid 3 Weeks', 'Valid 3 Weeks', 'Valid 3 Weeks', 'Exclude', 11, 5, NULL, NULL, NULL, '444000', '400000', '44000', 'Y', 'N', 'OPEN', '2023-09-25 16:59:15', 'sahyudi', '2023-10-02 11:04:18', '0000-00-00 00:00:00', 'N', '2023-09-26 14:06:10', 'sahyudi');
INSERT INTO `sale_quotation` VALUES (10, '12a8b5b0-60d6-11ee-9cff-9289f84058f7', 3, 4, NULL, '201', '2023-09-11', '2023-09-04', 'term', 'hgojj', 'email@domain.com', 'veni', '09234567', 'data center', 'WA', 'IDR', 11, 'ship', 'project', 'terms ', '20000', 'valid', 'waranty', 'tera', 11, 5, NULL, NULL, NULL, '482850', '435000', '47850', 'Y', 'N', 'OPEN', '2023-10-02 10:45:04', 'venny', '2023-10-02 11:30:34', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (11, '1397f98a-6913-11ee-9cff-9289f84058f7', 1, 4, NULL, '002/QUOT/10/2023', '2023-10-12', '2023-11-12', 'Terms', '0853741314181', 'tuahsakti@gmail.com', 'Muhamad Sahyudi', '0853741314181', 'Project', 'Source', 'IDR', 11, 'Delevery', 'Subject', '', '', '', '', '', 11, 2, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA', '366300', '330000', '36300', 'Y', 'N', 'OPEN', '2023-10-12 22:21:54', 'sahyudi', '2023-10-12 22:22:59', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (12, 'f310aece-6c95-11ee-b8db-e2e7e1b0cffd', 5, 6, NULL, '076/SPM/NGU/QT/X/2023', '2023-10-17', '2023-11-17', 'Net 30', '021 3333 4444', 'nevergiveup@yahoo.com', 'Ms. Ranti', '0821-2386-7664', 'Sudi Apartment', 'WhatsApp', 'IDR', 11, 'ASAP', 'Water Meter Analog ', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 Weeks', ' 1 Year', 'Exclude', 11, 6, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA', '444000', '400000', '44000', 'Y', 'N', 'CLOSE', '2023-10-17 09:36:17', 'ranti', '2023-10-23 17:55:31', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (13, '056be796-714e-11ee-b8db-e2e7e1b0cffd', 5, 6, NULL, '222', '2023-10-23', '2023-10-30', 'term', '021 3333 4444', 'nevergiveup@yahoo.com', 'coba', '021 3333 4444', 'coba', 'WA', 'IDR', 11, 'ship', 'project', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 weeks', '1 year', 'tera', 11, 5, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA. Thankyou', '7881000', '7100000', '781000', 'Y', 'N', 'CLOSE', '2023-10-23 09:44:00', 'venny', '2023-10-23 10:20:58', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (14, 'eecf4df6-7153-11ee-b8db-e2e7e1b0cffd', 5, 6, NULL, '333', '2023-10-23', '2023-10-30', 'term', '021 3333 4444', 'nevergiveup@yahoo.com', 'coba', '021 3333 4444', 'coba', 'WA', 'IDR', 11, 'ship', 'project', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 weeks', '1 year', 'tera', 11, 5, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA', '7881000', '7100000', '781000', 'Y', 'N', 'CLOSE', '2023-10-23 10:26:19', 'venny', '2023-10-23 10:27:02', '0000-00-00 00:00:00', 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (15, '457faad8-7177-11ee-b8db-e2e7e1b0cffd', 1, 6, NULL, '444', '2023-10-23', '2023-10-23', 'term', '3336582023', 'tuahsakti@gmail.com', 'Naufal', '3336582023', 'coba', 'WA', 'IDR', 11, 'ship', 'project', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 weeks', '1 year', 'tera', 11, 5, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA', '777000', '700000', '77000', 'Y', 'N', 'OPEN', '2023-10-23 14:39:17', 'venny', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (16, '0826e73a-718d-11ee-b8db-e2e7e1b0cffd', 5, 6, NULL, '076/SPM/NGU0/QT/X/2023', '2023-10-23', '2023-10-23', 'Net 30', '021 3333 4444', 'nevergiveup@yahoo.com', 'Ms. Ranti', '0', 'Sudi Apartment', 'WhatsApp', 'IDR', 11, 'ASAP', 'Water Meter MOD', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 Weeks', ' 1 Year', 'Exclude', 11, 6, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA', '6032850', '5435000', '597850', 'Y', 'N', 'OPEN', '2023-10-23 17:15:03', 'ranti', NULL, NULL, 'N', NULL, NULL);
INSERT INTO `sale_quotation` VALUES (17, '3aad0e0a-7c78-11ee-a145-3176bc4c4780', 1, 6, NULL, '90', '2023-11-06', '2023-11-06', 'Net 30', '02182627536', 'umrotakarya@gmail.com', 'Ms. Ranti', '02182627536', 'PROJECT', 'WhatsApp', 'IDR', 11, 'ASAP', 'Water Meter MOD', '- 50% After PO, - 50% Cek/Giro', 'Loco Jakarta', '3 Weeks', ' 1 Year', 'Exclude', 11, 6, NULL, NULL, 'Please Send Quotation Back After Approved to Email or WA', '6032850', '5435000', '597850', 'Y', 'N', 'CLOSE', '2023-11-06 14:43:51', 'ranti', '2023-11-06 14:44:22', '0000-00-00 00:00:00', 'N', NULL, NULL);

-- ----------------------------
-- Table structure for sale_quotation_item
-- ----------------------------
DROP TABLE IF EXISTS `sale_quotation_item`;
CREATE TABLE `sale_quotation_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `quotation_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `qty` int NULL DEFAULT NULL,
  `disc` int NULL DEFAULT 0,
  `price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `path_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_quotation` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_quotation_item
-- ----------------------------
INSERT INTO `sale_quotation_item` VALUES (65, '7942e0fe-60d9-11ee-9cff-9289f84058f7', 9, 2, 'K0-002', 'NAMA ITEM', 'NAMA ITEM', 1, 0, '150000', '150000', NULL, NULL, '2023-10-02 11:09:25', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (66, '7942e252-60d9-11ee-9cff-9289f84058f7', 9, 3, 'K-002', 'NAMA ITEM 2', 'NAMA ITEM 2', 1, 0, '150000', '150000', NULL, NULL, '2023-10-02 11:09:25', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (67, '7942e2c2-60d9-11ee-9cff-9289f84058f7', 9, 7, 'KH-001', 'NAMA PRODUK', 'NAMA PRODUK', 1, 0, '100000', '100000', NULL, NULL, '2023-10-02 11:09:25', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (68, '6dbcd951-60dc-11ee-9cff-9289f84058f7', 10, 2, 'K0-002', 'NAMA ITEM', 'NAMA ITEM', 1, 10, '150000', '135000', NULL, NULL, '2023-10-02 11:30:34', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (69, '6dbcdaa5-60dc-11ee-9cff-9289f84058f7', 10, 7, 'KH-001', 'NAMA PRODUK', 'NAMA PRODUK', 3, 0, '100000', '300000', NULL, NULL, '2023-10-02 11:30:34', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (70, '185af7cc-6294-11ee-9cff-9289f84058f7', 7, 2, 'K0-002', 'NAMA ITEM', 'NAMA ITEM', 1, 50, '150000', '75000', NULL, NULL, '2023-10-04 15:57:49', 'ranti', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (71, '185af8f3-6294-11ee-9cff-9289f84058f7', 7, 3, 'K-002', 'NAMA ITEM 2', 'NAMA ITEM 2', 1, 50, '150000', '75000', NULL, NULL, '2023-10-04 15:57:49', 'ranti', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (72, '185af96f-6294-11ee-9cff-9289f84058f7', 7, 4, 'K0-0001', 'Nama item', 'Nama item', 1, 50, '150000', '75000', NULL, NULL, '2023-10-04 15:57:49', 'ranti', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (73, '185af9d7-6294-11ee-9cff-9289f84058f7', 7, 7, 'KH-001', 'NAMA PRODUK', 'NAMA PRODUK', 1, 50, '100000', '50000', NULL, NULL, '2023-10-04 15:57:49', 'ranti', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (75, '3a762e7f-6913-11ee-9cff-9289f84058f7', 11, 2, 'K0-002', 'NAMA ITEM', 'NAMA ITEM', 2, 50, '150000', '150000', NULL, NULL, '2023-10-12 22:22:59', 'sahyudi', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (76, '3a76307d-6913-11ee-9cff-9289f84058f7', 11, 7, 'KH-001', 'NAMA PRODUK', 'NAMA PRODUK', 2, 10, '100000', '180000', NULL, NULL, '2023-10-12 22:22:59', 'sahyudi', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (77, 'f310bc5f-6c95-11ee-b8db-e2e7e1b0cffd', 12, 9, 'WM', 'Water Meter Analog \"SAITEC\"', 'Water Meter Analog \"SAITEC\"', 1, 0, '400000', '400000', NULL, NULL, '2023-10-17 09:36:17', 'ranti', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (84, '5706d540-7153-11ee-b8db-e2e7e1b0cffd', 13, 9, 'WM', 'Water Meter Analog ', 'Water Meter Analog ', 5, 0, '1000000', '5000000', NULL, NULL, '2023-10-23 10:22:05', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (85, '5706d701-7153-11ee-b8db-e2e7e1b0cffd', 13, 10, 'KO01', 'SAITEC METER', 'SAITEC METER', 3, 0, '700000', '2100000', NULL, NULL, '2023-10-23 10:22:05', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (86, 'eecf5b65-7153-11ee-b8db-e2e7e1b0cffd', 14, 9, 'WM', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 5, 0, '1000000', '5000000', NULL, NULL, '2023-10-23 10:26:19', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (87, 'eecf5cc9-7153-11ee-b8db-e2e7e1b0cffd', 14, 10, 'KO01', 'SAITEC METER', 'SAITEC METER', 3, 0, '700000', '2100000', NULL, NULL, '2023-10-23 10:26:19', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (88, '457fc8f3-7177-11ee-b8db-e2e7e1b0cffd', 15, 10, 'KO01', 'SAITEC METER', 'SAITEC METER', 1, 0, '700000', '700000', NULL, NULL, '2023-10-23 14:39:17', 'venny', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (89, '0826f781-718d-11ee-b8db-e2e7e1b0cffd', 16, 12, '111', 'Water Meter Modbus', 'Water Meter Modbus', 1, 0, '5435000', '5435000', NULL, NULL, '2023-10-23 17:15:03', 'ranti', NULL, NULL);
INSERT INTO `sale_quotation_item` VALUES (90, '3aad2381-7c78-11ee-a145-3176bc4c4780', 17, 9, 'WM', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 'Water Meter Analog \"SAITEC\" DN15 (1/2\")', 1, 0, '5435000', '5435000', NULL, NULL, '2023-11-06 14:43:51', 'ranti', NULL, NULL);

-- ----------------------------
-- Table structure for status_tracking
-- ----------------------------
DROP TABLE IF EXISTS `status_tracking`;
CREATE TABLE `status_tracking`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_tracking
-- ----------------------------
INSERT INTO `status_tracking` VALUES (1, 'BARANG SUDAH DIPESAN', 1);
INSERT INTO `status_tracking` VALUES (2, 'BARANG SUDAH TIBA DI GUDANG CHINA', 1);
INSERT INTO `status_tracking` VALUES (3, 'BARANG DALAM PERJALANAN KE JAKARTA', 1);
INSERT INTO `status_tracking` VALUES (4, 'BARANG SUDAH TIBA DIJAKARTA', 1);
INSERT INTO `status_tracking` VALUES (5, 'BARANG HILANG', 1);

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
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `full_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `role_id` int NULL DEFAULT NULL COMMENT '1 = ADMIN, 2 = OPERATOR',
  `group` int NULL DEFAULT NULL,
  `is_active` int NULL DEFAULT 1,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `updated_at` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'f8931832-5f19-11ee-9cff-9289f84058f7', 'admin', 'Admin', NULL, '$2y$10$E72ht6crYU54lJ.zn9j55eHx7A.306Fk2Nl8RD4BfryeKzbXfSN6O', 2, 1, 1, NULL, 'sahyudi', '2021-12-24 16:12:08', '2023-10-09 11:28:46', 'N', 'sahyudi', '2023-10-02 10:06:04');
INSERT INTO `users` VALUES (2, 'f89318ea-5f19-11ee-9cff-9289f84058f7', 'sahyudi', 'Sahyudi', '085374131481', '$2y$10$szxvQDQbu8DPJeYR5IQvDuJMXNUnN4/uqxRUpd3VxnhF47UN4PZhO', 1, 1, 1, NULL, NULL, '2021-12-24 16:12:08', '2023-10-09 11:28:38', 'N', 'sahyudi', '2023-10-09 11:27:31');
INSERT INTO `users` VALUES (5, 'f893192e-5f19-11ee-9cff-9289f84058f7', 'venny', 'Venny', '085374131481', '$2y$10$al32CkxNArMzpQvhuMxcmukljmzqttBjm0TDWzDWtl.HMqdimVbla', 5, 1, 1, 'sahyudi', 'sahyudi', '2022-09-05 21:23:31', '2023-10-03 21:51:18', 'N', NULL, NULL);
INSERT INTO `users` VALUES (6, 'f8931962-5f19-11ee-9cff-9289f84058f7', 'ranti', 'Ranti', '085374131481', '$2y$10$RZLBagdzEUASM/a.QUqvou1kws.z3lOMVS1b2ep6e/xIEGbrYeQgC', 5, 1, 1, NULL, 'vira', '2023-09-26 14:57:36', '2023-10-23 17:38:24', 'N', NULL, NULL);
INSERT INTO `users` VALUES (7, 'd3a9a545-60d6-11ee-9cff-9289f84058f7', 'alfiyan', 'Muhamad Sahyudi', '085374131481', '$2y$10$4MHz8gcvaTrxDxZH7cI8POnyBaFTwegZCHIr1VdKERK12fvF77OPu', 5, NULL, 0, 'sahyudi', 'alfiyan', '2023-10-02 10:50:28', '2023-10-23 17:03:36', 'N', 'sahyudi', '2023-10-02 10:53:34');
INSERT INTO `users` VALUES (9, 'edfe161d-68b8-11ee-9cff-9289f84058f7', 'vira', 'Devira Santoso', '081398484964', '$2y$10$6I/2a5yJJsjn1qCackTKseO6ngtC5WfaXLx3c2xQhplPG8UEd.j.e', 5, NULL, 1, 'ranti', NULL, '2023-10-12 11:36:36', '2023-10-12 11:36:36', 'N', NULL, NULL);
INSERT INTO `users` VALUES (10, '3214cb1f-7190-11ee-b8db-e2e7e1b0cffd', 'saitecpm', 'Motorized Valve', '081398484964', '$2y$10$xi11ISpfe.xcd0Owli4Rq.28xO76bldaXlgkrRIRi5tOKj0grF.ku', 5, NULL, 1, 'vira', NULL, '2023-10-23 17:37:42', '2023-10-23 17:37:56', 'Y', 'vira', '2023-10-23 17:37:56');
INSERT INTO `users` VALUES (11, '95b0d620-7255-11ee-b8db-e2e7e1b0cffd', 'admin1', 'admin 1', '081398484964', '$2y$10$MNBDeZ.9X1WvI/pLm83MC.FqGJsyEy8tAWKZluf2Uwkg2u/vKQlDK', 6, NULL, 1, 'sahyudi', 'sahyudi', '2023-10-24 17:10:40', '2023-10-24 17:26:25', 'N', NULL, NULL);
INSERT INTO `users` VALUES (12, '2ef36925-7256-11ee-b8db-e2e7e1b0cffd', 'admin2', 'admin 2', '081398484964', '$2y$10$/EOGnvXK4Q6TLWxPZy.yoOU8XOR3X9ZJ9H4n8fX8YJEBAgik8bmKu', 6, NULL, 1, 'sahyudi', 'sahyudi', '2023-10-24 17:14:57', '2023-10-24 17:26:36', 'N', NULL, NULL);
INSERT INTO `users` VALUES (13, '509ad63e-7256-11ee-b8db-e2e7e1b0cffd', 'admin3', 'admin 3', '081398484964', '$2y$10$hycejjrPI5lUwBrYF27VeeklqY3y1mF7Rxsu7/bep.S2SIhR8FBsC', 6, NULL, 1, 'sahyudi', 'sahyudi', '2023-10-24 17:15:53', '2023-10-24 17:33:23', 'N', NULL, NULL);
INSERT INTO `users` VALUES (14, 'd812038e-7258-11ee-b8db-e2e7e1b0cffd', 'muhamadsahyudi', 'admin', '085374131481', '$2y$10$sI1RMhZcIL5h9dPTM2fO8.rAepCUCWWx6TQ9/bJ4PbSt4p2TYGimC', 7, NULL, 1, 'sahyudi', NULL, '2023-10-24 17:34:00', '2023-10-24 17:43:10', 'Y', 'sahyudi', '2023-10-24 17:43:10');
INSERT INTO `users` VALUES (15, '3123db18-725a-11ee-b8db-e2e7e1b0cffd', 'alfiyanmustaqin', 'nama lengkap', '00000000', '$2y$10$3Xm3v0cPHf10DGmx.bT5Puu06Qdt1NmQABnqYGZ/Wfoe.2G8dCUZy', 5, NULL, 1, 'sahyudi', NULL, '2023-10-24 17:43:39', '2023-10-24 17:43:49', 'Y', 'sahyudi', '2023-10-24 17:43:49');

-- ----------------------------
-- Table structure for vendors
-- ----------------------------
DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT uuid(),
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `npwp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nohp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Y',
  `is_deleted` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` datetime NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vendors
-- ----------------------------
INSERT INTO `vendors` VALUES (2, '8ed65816-534e-11ee-9a5a-8b6869d6f343', 'PT MUDA BERTUAH SEJAHTERA', '12092031', 'Batam Kepulauan Riau Indonesia', '085374131481', '0778651009', 'tuah@gmail.com', '085374131481', 'Y', 'N', '2023-09-15 05:32:15', 'sahyudi', '2023-09-24 07:26:28', '0000-00-00 00:00:00', '2023-09-15 06:03:21', 'sahyudi');
INSERT INTO `vendors` VALUES (4, 'c338695f-68b8-11ee-9cff-9289f84058f7', 'Coba', '000', 'Coba', '000', '000', 'sales2@saitecmeter.com', '000', 'Y', 'N', '2023-10-12 11:35:24', 'ranti', NULL, NULL, NULL, NULL);

-- ----------------------------
-- View structure for view_stocks
-- ----------------------------
DROP VIEW IF EXISTS `view_stocks`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_stocks` AS select `B`.`id` AS `id`,`B`.`id` AS `item_id`,`B`.`photo` AS `photo`,`B`.`name` AS `name`,`B`.`desc` AS `desc`,`B`.`code` AS `code`,`B`.`price_hpp` AS `price_hpp`,`B`.`price_sale` AS `price_sale`,sum(case when `A`.`type` = 'IN' then `A`.`total` else 0 end) - sum(case when `A`.`type` = 'OUT' then `A`.`total` else 0 end) AS `stock` from (`item_stock` `B` left join `item_stock_transaction` `A` on(`A`.`item_id` = `B`.`id`)) group by `A`.`item_id`;

SET FOREIGN_KEY_CHECKS = 1;

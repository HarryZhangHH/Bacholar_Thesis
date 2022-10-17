/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : final_project_test

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 04/05/2021 11:56:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for law_terms
-- ----------------------------
DROP TABLE IF EXISTS `law_terms`;
CREATE TABLE `law_terms`  (
  `id` int(11) NOT NULL,
  `law_term` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `law_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `key_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_terms
-- ----------------------------
INSERT INTO `law_terms` VALUES (1, 'E-commerce operators shall register as market subjects in accordance with the law.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (2, 'E-commerce operators shall fulfill their tax obligations according to law and enjoy preferential tax benefits according to law.', 'E-commerce Law', 2, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (3, 'E-commerce operators shall obtain administrative licenses in accordance with law if they need to obtain relevant administrative licenses for their business activities.', 'E-commerce Law', 2, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (4, 'The commodities sold or services provided by e-commerce operators shall comply with the requirements for the protection of personal and property safety and the requirements for environmental protection, and they shall not sell or provide commodities or services that are prohibited from trading by laws and administrative regulations.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (5, 'E-commerce operators selling commodities or providing services shall, according to law, issue paper invoices or electronic invoices and other purchase vouchers or service vouchers. The electronic invoice has the same legal effect as the paper invoice.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (6, 'An e-commerce operator shall continue to publicize business license information, administrative license information related to its business operations, information that does not need to be registered as a market subject in accordance with the provisions of Article 10 of this Law, etc. in a prominent position on its home page, or the link marks of the above-mentioned information.Where the information prescribed in the preceding paragraph is changed, the e-commerce operator shall timely update the public information.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (7, 'Where an e-commerce operator terminates its engagement in e-commerce on its own, it shall continuously publicize relevant information in a prominent position on the home page 30 days in advance.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (8, ' E-commerce operators shall disclose commodity or service information in a comprehensive, true, accurate and timely manner to protect consumers\' right to know and right to choose. E-commerce operators shall not fabricate transactions, fabricate user evaluations and other ways to carry out false or misleading commercial publicity, deceive and mislead consumers.', 'E-commerce Law', 2, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (9, 'Where an e-commerce operator provides search results for commodities or services to a consumer based on his or her interests, hobbies, consumption habits and other characteristics, it shall at the same time provide such consumer with options that are not specific to his or her personal characteristics, and respect and equally protect the legitimate rights and interests of the consumer.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (10, 'E-commerce operators shall draw consumers\' attention to the bundling of commodities or services in a conspicuous way, and shall not take bundling of commodities or services as an option of acquiescent consent.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (11, 'An e-commerce operator shall deliver commodities or services to consumers in the manner and time limit promised or agreed upon with consumers, and bear the risks and responsibilities in the transportation of commodities. However, the consumer chooses another express logistics service provider except.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (12, 'Where an e-commerce operator collects a deposit from a consumer in accordance with the contract, it shall clearly state the way and procedure for the return of the deposit, and shall not set unreasonable conditions for the return of the deposit. If a consumer applies for a refund of the deposit and meets the conditions for the refund of the deposit, the e-commerce operator shall refund the deposit in time.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (13, 'Where an e-commerce operator has a dominant market position due to such factors as its technological advantages, the number of users, its ability to control the relevant industries and the degree to which other operators depend on the e-commerce operator in transactions, it shall not abuse its dominant market position to eliminate or restrict competition.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (14, 'E-commerce operators shall, in collecting and using their users\' personal information, comply with the provisions of laws and administrative regulations on the protection of personal information.', 'E-commerce Law', 2, 'Data Collection', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (15, 'An e-commerce operator shall clearly state the methods and procedures for user information inquiry, correction, deletion and user logout, and shall not set unreasonable conditions for user information inquiry, correction, deletion and user logout.', 'E-commerce Law', 1, 'Data Collection', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (16, 'Where relevant competent authorities require e-commerce operators to provide relevant e-commerce data and information according to the provisions of laws and administrative regulations, e-commerce operators shall provide such data and information. The competent departments concerned shall take necessary measures to protect the security of the data and information provided by e-commerce operators, and strictly keep confidential the personal information, privacy and business secrets therein, and shall not divulge, sell or illegally provide them to others.', 'E-commerce Law', 1, 'Data Collection', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (17, 'E-commerce operators engaged in cross-border e-commerce shall abide by the laws, administrative regulations and relevant provisions of the State on import and export supervision and administration.', 'E-commerce Law', 1, 'Obligation', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (18, 'An operator of an e-commerce platform shall require the operator who applies to enter the platform to sell commodities or provide services to submit his/her identity, address, contact information, administrative license and other true information, conduct verification and registration, establish a registration file, and periodically check and update it.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (19, 'E-commerce platform operators shall, in accordance with the regulations to the market supervision and regulation department shall submit the platform within the operator\'s identity information and prompt did not deal with the market main body registration of operators in accordance with the law, and cooperate with the market supervision and regulation department, according to the characteristics of e-commerce, for the market main body registration of operator shall be required to provide convenient.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (20, 'Operators of e-commerce platforms shall take technical measures and other necessary measures to ensure their network security and stable operation, guard against network illegal and criminal activities, effectively respond to network security incidents and ensure the security of e-commerce transactions.', 'E-commerce Law for e-commerce platform', 2, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (21, 'The operator of an e-commerce platform shall formulate an emergency plan for a cyber security incident. In the event of a cyber security incident, the operator shall immediately activate the emergency plan, take appropriate remedial measures, and report to the relevant competent authorities.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (22, ' An operator of an e-commerce platform shall record and keep the commodity and service information and trading information published on the platform, and ensure the integrity, confidentiality and availability of the information. The information on commodities and services and transactions shall be kept for no less than three years from the date of completion of the transaction; Where there are other provisions in laws or administrative regulations, such provisions shall prevail.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (23, 'Operators of an e-commerce platform shall follow the principles of openness, fairness and impartiality, formulate service agreements and trading rules of the platform, and define their rights and obligations in terms of entering and exiting the platform, guaranteeing the quality of commodities and services, protecting the rights and interests of consumers, and protecting personal information, etc.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (24, 'An operator of an e-commerce platform shall continuously publish information about the service agreement and trading rules of the platform or the link marks of the above information in a prominent position on its home page, and ensure that operators and consumers can read and download it conveniently and completely.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (25, 'When modifying the service agreement and trading rules of the platform, an operator of an e-commerce platform shall solicit public opinions in a prominent place on its homepage, and take reasonable measures to ensure that all parties concerned can express their opinions in a timely and sufficient manner. Amendments shall be made public at least seven days before implementation.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (26, 'An e-commerce platform operator shall not, by means of service agreements, trading rules and technologies, impose unreasonable restrictions on or attach unreasonable conditions to the transactions, prices and transactions with other operators within the platform, or charge unreasonable fees to the operators within the platform.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (27, 'If an e-commerce platform operator, in accordance with the service agreement and trading rules of the platform, implements measures such as warning, suspension or termination of services against the acts of the operators in the platform that violate laws and regulations, it shall promptly make a public announcement.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (28, 'Where an e-commerce platform operator conducts its own business on its platform, it shall distinguish and mark its own business from the business carried out by the platform operator in a significant way, and shall not mislead consumers.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (29, ' If an operator of an e-commerce platform knows or should know that the commodities sold or services provided by an operator on the platform do not meet the requirements for the protection of personal and property safety, or that there are other acts infringing upon the legitimate rights and interests of consumers, and fails to take necessary measures, it shall assume joint and several liability with the operator of the platform in accordance with the law.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (30, 'An operator of an e-commerce platform shall establish and improve a credit evaluation system, publicize credit evaluation rules, and provide consumers with ways to evaluate the commodities sold or services provided on the platform.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (31, ' An operator of an e-commerce platform shall display search results of commodities or services to consumers in various ways based on prices, sales volume and credit of commodities or services. For commodities or services ranked by bidding, the word \"advertisement\" shall be clearly marked.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (32, 'The operators of e-commerce platforms shall establish rules for intellectual property protection, strengthen cooperation with the owners of intellectual property rights, and protect intellectual property rights according to law.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (33, 'Where an intellectual property right holder considers that his intellectual property rights have been infringed, he shall have the right to notify the operator of an e-commerce platform to take necessary measures such as deleting, shielding, disconnecting links, and terminating transactions and services. The notice shall include prima facie evidence that constitutes an infringement.Upon receipt of the notice, the operator of an e-commerce platform shall take necessary measures in a timely manner and transmit the notice to the operator of the platform; If necessary measures are not taken in time, the operators on the platform shall be jointly and severally liable for the expanded part of the damage.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (34, 'If an operator of an e-commerce platform knows or should know that an operator within the platform has infringed intellectual property rights, it shall take necessary measures such as deleting, shielding, disconnecting links, and terminating transactions and services. If it fails to take necessary measures, it shall bear joint and several liability with the infringer.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (35, 'Operators of an e-commerce platform may, in accordance with the service agreement and trading rules of the platform, provide such services as warehousing, logistics, payment and settlement, and settlement for e-commerce between operators. Operators of e-commerce platforms shall abide by laws, administrative regulations and relevant state regulations when providing services for e-commerce between operators, and shall not conduct transactions through centralized trading methods such as centralized bidding and market makers, or conduct transactions through standardized contracts.', 'E-commerce Law for e-commerce platform', 0, 'Obligation of e-commerce platform', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (36, 'The use of the automatic information system by the parties to enter into or perform a contract has legal effect on the parties using the system.', 'E-commerce Law - Contract', 1, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (37, 'If the commodity or service information released by an e-commerce operator meets the conditions for an offer, the contract is established after the user successfully selects the said commodity or service and submits an order. If the parties have agreed otherwise, such agreement shall prevail. E-commerce operators should not agree that the contract will not be established after consumers pay the price by means of standard terms. Where such content is contained in the standard terms, such content shall be invalid.', 'E-commerce Law - Contract', 1, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (38, 'An e-commerce operator shall clearly, comprehensively and explicitly inform users of the steps, matters needing attention and downloading methods for concluding a contract, and ensure that users can read and download it conveniently and completely.', 'E-commerce Law - Contract', 2, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (39, 'If the subject matter of the contract is the goods to be delivered and the goods are delivered by express logistics, the time when the consignee signs for receipt shall be the time of delivery. If the subject matter of the contract is the provision of services, the time stated in the electronic certificate or physical certificate generated shall be the delivery time; If the aforesaid voucher does not indicate the time or the time indicated is inconsistent with the actual time of service provision, the actual time of service provision shall be the delivery time.', 'E-commerce Law - Contract', 1, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (40, 'The parties to an e-commerce business may agree on the delivery of commodities by express logistics.', 'E-commerce Law - Contract', 1, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (41, 'When providing express logistics services for e-commerce, express logistics service providers shall abide by laws and administrative regulations, and shall conform to the promised service standards and time limits. When delivering goods, the express logistics service provider shall prompt the consignee for face-to-face inspection; If the collection is handed over to another person, the consent of the consignee shall be obtained.', 'E-commerce Law - Contract', 1, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (42, 'The parties to e-commerce may agree to adopt electronic payment methods to pay the price.', 'E-commerce Law - Contract', 1, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (43, 'When providing electronic payment services for e-commerce, the electronic payment service provider shall abide by the provisions of the State, inform the users of the functions, methods of use, matters for attention, relevant risks and charging standards of the electronic payment service, and shall not attach unreasonable transaction conditions. The electronic payment service provider shall ensure the integrity, consistency, traceability, auditing and immutability of the electronic payment instructions.', 'E-commerce Law - Contract', 1, 'Contract', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (44, 'Where an operator of an e-commerce platform and an operator within the platform agree to set up a deposit for the rights and interests of consumers, the two parties shall clearly agree on the amount of withdrawal, management, use and refund of the deposit for the rights and interests of consumers.', 'E-commerce Law - Consumer Rights', 0, 'Disputes over Consumer Rights', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (45, 'An e-commerce operator shall establish a convenient and effective complaint and report mechanism, publicize such information as the way of complaint and report, and accept and handle complaints and report in a timely manner.', 'E-commerce Law - Consumer Rights', 0, 'Disputes over Consumer Rights', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (46, 'Disputes over e-commerce may be settled through consultation, by requesting consumer organizations, trade associations or other lawfully established mediation organizations for mediation, or by filing complaints with relevant departments, submitting for arbitration, or bringing lawsuits.', 'E-commerce Law - Consumer Rights', 0, 'Disputes over Consumer Rights', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (47, ' In case of a dispute between a consumer and a business operator on an e-commerce platform when purchasing commodities or receiving services on the platform, the business operator of the e-commerce platform shall actively assist consumers in safeguarding their legal rights and interests.', 'E-commerce Law - Consumer Rights', 0, 'Disputes over Consumer Rights', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (48, ' In the settlement of e-commerce disputes, e-commerce operators shall provide original contracts and transaction records. Where the people\'s court, arbitration institution or relevant authorities cannot find out the facts due to the loss, falsification, tampering, destruction, concealment or refusal to provide the aforesaid materials by the e-commerce operator, the e-commerce operator shall bear corresponding legal liabilities.', 'E-commerce Law - Consumer Rights', 0, 'Disputes over Consumer Rights', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (49, 'An e-commerce platform operator may establish an online dispute resolution mechanism, formulate and publicize dispute resolution rules, and fairly and justly settle disputes between the parties in accordance with the principle of voluntarism.', 'E-commerce Law - Consumer Rights', 0, 'Disputes over Consumer Rights', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (50, 'Where an advertisement indicates the performance, function, place of origin, use, quality, composition, price, producer, expiry date or promise of a commodity, or the content, provider, form, quality, price or promise of a service, it shall be accurate, clear and clear.', 'Advertisement law', 0, 'Advertisement', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (51, 'Where an advertisement indicates that a gift is attached to a commodity or service for sale, it shall clearly state the type, specification, quantity, period and method of the complimentary commodity or service.', 'Advertisement law', 0, 'Advertisement', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (52, 'Advertisements shall not contain false or misleading contents, nor shall they deceive or mislead consumers.', 'Advertisement law', 0, 'Advertisement', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (53, 'Advertisers shall be responsible for the authenticity of the contents of their advertisements', 'Advertisement law', 0, 'Advertisement', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (54, 'Advertisers, advertising agents and advertisement publishers shall, in engaging in advertising activities, abide by laws and regulations, be honest and trustworthy and compete fairly.', 'Advertisement law', 0, 'Advertisement', '2021-05-01 16:13:25');
INSERT INTO `law_terms` VALUES (55, 'Robots protocol is the site for security and privacy considerations, to prevent the search engine to grab sensitive information and set, all content is contained in a text file (robots.txt), is the search engine to visit a website to view the first file. The principle of search engine is through a kind of spider program, automatically collect web pages on the Internet and obtain relevant information. And in view of the network security and privacy concerns, each site can set up your own Robots agreement, to express the search engine, which content is willing to allow collected by search engine, which is not allowed, the way to search engine, convenient crawler better grab your content, but also protect the small and medium-sized websites traffic balance, Avoid the crawler fast crawl to the website server to bring too much pressure.', 'Robots Exclusion Protocol', 2, 'Crawl', '2021-05-01 16:13:25');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original_price` double NOT NULL,
  `promote_price` double NOT NULL,
  `sku` bigint(20) NULL DEFAULT NULL,
  `spu` bigint(20) NULL DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for productimage
-- ----------------------------
DROP TABLE IF EXISTS `productimage`;
CREATE TABLE `productimage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productimage
-- ----------------------------

-- ----------------------------
-- Table structure for shop_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES (1, '健身训练器械');
INSERT INTO `shop_category` VALUES (2, '运动护具');
INSERT INTO `shop_category` VALUES (3, '瑜伽用品');
INSERT INTO `shop_category` VALUES (4, '运动服饰');
INSERT INTO `shop_category` VALUES (5, '户外装备');
INSERT INTO `shop_category` VALUES (6, '运动附件');
INSERT INTO `shop_category` VALUES (7, '新品区');

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `confirm_date` datetime(0) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `delivery_date` datetime(0) NULL DEFAULT NULL,
  `order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_date` datetime(0) NULL DEFAULT NULL,
  `user_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_user`(`uid`) USING BTREE,
  CONSTRAINT `fk_order_user` FOREIGN KEY (`uid`) REFERENCES `shop_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for shop_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderitem`;
CREATE TABLE `shop_orderitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `oid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_orderitem_order`(`oid`) USING BTREE,
  INDEX `fk_orderitem_product`(`pid`) USING BTREE,
  INDEX `fk_orderitem_user`(`uid`) USING BTREE,
  CONSTRAINT `fk_orderitem_order` FOREIGN KEY (`oid`) REFERENCES `shop_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_orderitem_product` FOREIGN KEY (`pid`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_orderitem_user` FOREIGN KEY (`uid`) REFERENCES `shop_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product`  (
  `id` int(11) NOT NULL,
  `sku` bigint(22) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original_price` float NULL DEFAULT NULL,
  `promote_price` float NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  `update_time` date NULL DEFAULT NULL,
  `detail` varchar(510) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spu` bigint(20) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_product_category`(`cid`) USING BTREE,
  CONSTRAINT `fk_product_category` FOREIGN KEY (`cid`) REFERENCES `shop_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES (1, 10021410523680, 'TMT 蹦蹦床儿童家用室内蹦床成人健身小孩跳跳床玩具弹跳床 红色-旗舰款1.4m直径-U型管脚 1', '蹦床', 298, 248, 69, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 蹦蹦床儿童家用室内蹦床成人健身小孩跳跳床玩具弹跳床 红色-旗舰款1.4m直径-U型管脚 1    商品编号：10021410523680    店铺： TMT户外官方旗舰店    商品毛重：9.0kg    商品产地：中国大陆    货号：BC1    是否可折叠：可折叠    是否带护网：带护网    尺寸：54英寸    上市时间：2021年春季    适用对象：儿童', NULL, NULL);
INSERT INTO `shop_product` VALUES (2, 10029086256077, 'TMT弹力健身棒飞力士震颤棒多功能燃脂训练棒菲利斯瑜伽棒男菲力士 战斗黑【玻璃纤维+工艺橡胶】', '飞力士棒', 78, 69, 63, 1, '2021-04-24', '2021-04-24', '商品名称：TMT弹力健身棒飞力士震颤棒多功能燃脂训练棒菲利斯瑜伽棒男菲力士 战斗黑【玻璃纤维+工艺橡胶】    商品编号：10029086256077    店铺： TMT户外官方旗舰店    商品毛重：500.00g    货号：FS02    材质：玻璃纤维    是否可拆卸：不可拆卸    上市时间：2021年春季', NULL, NULL);
INSERT INTO `shop_product` VALUES (3, 10025062202961, 'TMT 沙袋绑腿负重跑步学生脚踝体能训练舞蹈运动装备隐形绑手腿部 黑色 一只2KG（一对装）', '负重沙袋', 58, 55.8, 53, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 沙袋绑腿负重跑步学生脚踝体能训练舞蹈运动装备隐形绑手腿部 黑色 一只2KG（一对装）    商品编号：10025062202961    店铺： TMT户外官方旗舰店    商品毛重：1.0kg    商品产地：中国大陆    货号：TF05    类别：其它    上市时间：2020年冬季', NULL, NULL);
INSERT INTO `shop_product` VALUES (4, 10021203181436, 'TMT 门上单杠儿童秋千室内家用引体向上器拉伸单杠免打孔运动健身器材 加吊环中款90-130cm', '门上单杠', 159, 108, 64, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 门上单杠儿童秋千室内家用引体向上器拉伸单杠免打孔运动健身器材 加吊环中款90-130cm    商品编号：10021203181436    店铺： TMT户外官方旗舰店    商品毛重：300.00g    商品产地：中国大陆    货号：OH03    类别：门上单杠    安装方式：免打孔    长度调节：可调节    上市时间：2020年夏季', NULL, NULL);
INSERT INTO `shop_product` VALUES (5, 10020484911421, 'TMT 竞速跳绳成人负重男女健身钢丝绳中考儿童学生专用 竞速+负重+双绳 黑橙色', '跳绳', 99, 78, 96, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 竞速跳绳成人负重男女健身钢丝绳中考儿童学生专用 竞速+负重+双绳 黑橙色    商品编号：10020484911421    店铺： TMT户外官方旗舰店    商品毛重：310.00g    商品产地：中国大陆    货号：TSJ1    是否可计数：不可计数    材质：钢丝    长度：2-3（含）M    类别：轴承跳绳    产品定位：体能训练    计数方式：机械计数    功能：考试专用跳绳    上市时间：2020年秋季', NULL, NULL);
INSERT INTO `shop_product` VALUES (6, 10028550200989, 'TMT拉筋板器材家用足脚踝矫正板足底按摩小腿塑形瑜伽拉筋凳拉筋斜踏板神器筋膜健身拉伸板可折叠 桃花粉【多档调节+磁石按摩+承重500斤】', '拉筋板', 99, 59, 81, 1, '2021-04-24', '2021-04-24', '商品名称：TMT拉筋板器材家用足脚踝矫正板足底按摩小腿塑形瑜伽拉筋凳拉筋斜踏板神器筋膜健身拉伸板可折叠 桃花粉【多档调节+磁石按摩+承重500斤】    商品编号：10028550200989    店铺： TMT户外官方旗舰店    商品毛重：300.00g    商品产地：中国大陆    货号：LJB1    上市时间：2021年春季', NULL, NULL);
INSERT INTO `shop_product` VALUES (7, 10027900853404, 'TMT 无绳跳绳成人智能计数减肥负重儿童中考专用无线钢丝绳子健身 黑色4.0两用版-长绳+无绳球', '跳绳', 79, 49, 58, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 无绳跳绳成人智能计数减肥负重儿童中考专用无线钢丝绳子健身 黑色4.0两用版-长绳+无绳球    商品编号：10027900853404    店铺： TMT户外官方旗舰店    商品毛重：300.00g    商品产地：中国大陆    货号：TSD8    是否可计数：可计数    材质：橡胶    长度：2-3（含）M    类别：计数跳绳    产品定位：体能训练    计数方式：电子计数    功能：体能训练绳    上市时间：2021年春季', NULL, NULL);
INSERT INTO `shop_product` VALUES (8, 10029425202860, 'TMT 儿童跳绳发光幼儿园小学生小孩子初学者夜光绳子锻炼燃脂减肥 粉手柄+玫红发光跳绳', '跳绳', 79, 49, 88, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童跳绳发光幼儿园小学生小孩子初学者夜光绳子锻炼燃脂减肥 粉手柄+玫红发光跳绳    商品编号：10029425202860    店铺： TMT户外官方旗舰店    商品毛重：200.00g    商品产地：中国大陆    货号：M128    是否可计数：不可计数    材质：橡胶    长度：2m及以下    类别：普通跳绳    产品定位：休闲娱乐    功能：体能训练绳    上市时间：2021年春季', NULL, NULL);
INSERT INTO `shop_product` VALUES (9, 10023736624181, 'TMT液压臂力器可调节男士家用多功能训练臂力棒胸肌手臂锻炼健身器材 加强版10-200公斤可调节液压臂力器 更多', '臂力器', 189, 189, 91, 1, '2021-04-24', '2021-04-24', '商品名称：TMT液压臂力器可调节男士家用多功能训练臂力棒胸肌手臂锻炼健身器材 加强版10-200公斤可调节液压臂力器 更多    商品编号：10023736624181    店铺： TMT户外官方旗舰店    商品毛重：1.0kg    商品产地：中国大陆    货号：TBLP001J-1    健身部位：臂肌    是否可调节：可调节    类别：臂力器    阻力重量：其它    形状：其它    种类：其它    上市时间：2020年秋季', NULL, NULL);
INSERT INTO `shop_product` VALUES (10, 10029183585310, 'TMT脚蹬拉力器男弹力带健身器材拉力绳练臂力器仰卧起坐辅助器弹力绳阻力带 多功能脚蹬拉力器', '臂力器', 88, 69, 51, 1, '2021-04-24', '2021-04-24', '商品名称：TMT脚蹬拉力器男弹力带健身器材拉力绳练臂力器仰卧起坐辅助器弹力绳阻力带 多功能脚蹬拉力器    商品编号：10029183585310    店铺： TMT户外官方旗舰店    商品毛重：500.00g    货号：LLQ1    拉力器分类：脚蹬拉力器    包含手柄：包含    上市时间：2021年春季    是否套装：套装    阻力方式：弹簧', NULL, NULL);
INSERT INTO `shop_product` VALUES (11, 10025037604334, 'TMT 筋膜刀健身肌肉放松全套通用不锈钢松解刀刮痧按摩刀 鲨鱼刀', '筋膜刀', 98, 98, 76, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 筋膜刀健身肌肉放松全套通用不锈钢松解刀刮痧按摩刀 鲨鱼刀    商品编号：10025037604334    店铺： TMT户外官方旗舰店    商品毛重：2.0kg    货号：JMD-1    套内件数：5件    上市时间：2020年冬季', NULL, NULL);
INSERT INTO `shop_product` VALUES (12, 10029889652265, 'TMT 乒乓球训练器弹力软轴室内家用儿童玩具成人健身含对拍 乒乓球训练器-儿童版', '乒乓球训练器', 49, 39, 61, 1, '2021-04-24', '2021-04-24', '商品名称：TMT 乒乓球训练器弹力软轴室内家用儿童玩具成人健身含对拍 乒乓球训练器-儿童版    商品编号：10029889652265    店铺： TMT户外官方旗舰店    商品毛重：300.00g    货号：PP05    适用人群：通用    上市时间：2021年春季', NULL, NULL);
INSERT INTO `shop_product` VALUES (13, 30280278697, 'TMT 硬拉助力带健身手套男引体向上单杠哑铃握力带牛皮运动护腕防滑（一双装） 升级牛皮款 均码', '助力带', 79, 57.8, 67, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 硬拉助力带健身手套男引体向上单杠哑铃握力带牛皮运动护腕防滑（一双装） 升级牛皮款 均码    商品编号：30280278697    店铺： TMT户外官方旗舰店    商品毛重：209.00g    商品产地：中国大陆    货号：B59    材质：复合材质    适用人群：通用    防护等级：专业防护    适用季节：四季    功能：防护，防滑    运动项目：健身，健身训练，引体向上，健身器械，哑铃，单杠，双杠，握力器，深蹲', NULL, NULL);
INSERT INTO `shop_product` VALUES (14, 10020041439843, 'TMT 护颈杠铃男健身深蹲杠铃套护肩垫举重器械力量训练保护肩部 J23绒布自粘款升级款 均码', '健身手套', 69, 59, 87, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 护颈杠铃男健身深蹲杠铃套护肩垫举重器械力量训练保护肩部 J23绒布自粘款升级款 均码    商品编号：10020041439843    店铺： TMT户外官方旗舰店    商品毛重：200.00g    商品产地：中国大陆    货号：J20    材质：复合材质    类别：其它    适用人群：通用，男    防护等级：专业防护    适用季节：四季    运动项目：乒乓球，羽毛球，网球，篮球，足球，排球，轮滑，轮滑滑板，冰上运动，瑜伽，舞蹈，高尔夫，壁球，棒球，保龄球，橄榄球，健身，健身训练，F1赛车，篮球/NBA，健身器械，动感单车，其它    功能：防护', NULL, NULL);
INSERT INTO `shop_product` VALUES (15, 30233894997, 'TMT 健身腰带深蹲硬拉腰带举重运动护腰带男女专业训练力量护具 【15CM】【黑色】 L腰围2尺6-3尺【86CM-100CM】', '护腰带', 138, 128, 84, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 健身腰带深蹲硬拉腰带举重运动护腰带男女专业训练力量护具 【15CM】【黑色】 L腰围2尺6-3尺【86CM-100CM】    商品编号：30233894997    店铺： TMT户外官方旗舰店    商品毛重：200.00g    商品产地：中国大陆    货号：Y88    类别：护腰    材质：复合材质    支撑结构：腰托支撑，束带加压    适用人群：通用    防护等级：专业防护    适用季节：四季    运动项目：健身，健身训练，健身器械，深蹲    功能：防护，加压', NULL, NULL);
INSERT INTO `shop_product` VALUES (16, 32968234685, 'TMT 健身护腕男力量加压举重训练手套扭伤绷带运动护具 B66软甲护腕-碳素纹 一对装', '健身手套', 59, 59, 98, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 健身护腕男力量加压举重训练手套扭伤绷带运动护具 B66软甲护腕-碳素纹 一对装    商品编号：32968234685    店铺： TMT户外官方旗舰店    商品毛重：300.00g    商品产地：中国大陆    货号：B66-1    类别：护腕    材质：复合材质    功能：防护，防滑，加压    适用人群：通用    防护等级：专业防护    适用季节：四季    适用场景：扭伤/骨折    运动项目：乒乓球，舞蹈，保龄球，极限运动，健身，健身训练，骑行，登山，武术，泰拳，搏击，散打，单板，格斗，引体向上，健身器械，动感单车，哑铃，单杠，双杠，握力器，越野跑，弓箭，街舞，深蹲，其它', NULL, NULL);
INSERT INTO `shop_product` VALUES (17, 39935659349, 'TMT 健身手套女运动瑜伽器械训练动感单车男士健身防滑手套半指透气薄款健身房 粉色 S【适合手围17-18cm】', '健身手套', 36.8, 36.8, 93, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 健身手套女运动瑜伽器械训练动感单车男士健身防滑手套半指透气薄款健身房 粉色 S【适合手围17-18cm】    商品编号：39935659349    店铺： TMT户外官方旗舰店    商品毛重：300.00g    商品产地：中国大陆    货号：W46    适用人群：通用    类别：半指    防护等级：专业防护    适用季节：四季    运动项目：乒乓球，羽毛球，网球，篮球，足球，排球，轮滑，轮滑滑板，冰上运动，瑜伽，舞蹈，高尔夫，壁球，棒球，保龄球，橄榄球，极限运动，健身，健身训练，跑步，马拉松，滑雪，摩托车，电动车，骑行，登山，F1赛车，武术，台球，军迷战术，泰拳，搏击，散打，花样滑冰，单板，格斗，篮球/NBA，钓鱼，机车，射箭，引体向上，健身器械，动感单车，哑铃，单杠，双杠，握力器，越野跑，弓箭，街舞，深蹲，芭蕾    功能：耐磨，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (18, 10026610915903, 'TMT 液态硅胶髌骨带跑步篮球羽毛球半月板膝盖护具髌骨带防滑 【21年新款】液态硅胶髌骨带【舒适防滑】 均码', '髌骨带', 69, 58.8, 75, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 液态硅胶髌骨带跑步篮球羽毛球半月板膝盖护具髌骨带防滑 【21年新款】液态硅胶髌骨带【舒适防滑】 均码    商品编号：10026610915903    店铺： TMT户外官方旗舰店    商品毛重：200.00g    商品产地：中国大陆    货号：BG51    材质：硅胶    适用人群：男，女    防护等级：基本防护    适用季节：四季，夏    运动项目：乒乓球，羽毛球，网球，篮球，足球，排球，轮滑，瑜伽，舞蹈，高尔夫，棒球，保龄球，台球    功能：防护，防滑，加压', NULL, NULL);
INSERT INTO `shop_product` VALUES (19, 30721395877, 'TMT 健身护腕男绷带训练扭伤防护运动手腕带护具装备手套卧推 单只', '健身手套', 28, 28, 80, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 健身护腕男绷带训练扭伤防护运动手腕带护具装备手套卧推 单只    商品编号：30721395877    店铺： TMT户外官方旗舰店    商品毛重：200.00g    商品产地：中国大陆    货号：B18    类别：护腕    材质：复合材质    功能：防护，加压，透气    适用人群：通用，男，女    防护等级：专业防护    适用季节：四季    适用场景：开车，办公室    运动项目：乒乓球，羽毛球，网球，篮球，足球，排球，轮滑，轮滑滑板，冰上运动，瑜伽，舞蹈，高尔夫，壁球，棒球，保龄球，橄榄球，极限运动，健身，健身训练，跑步，马拉松，滑雪，摩托车，电动车，骑行，登山，F1赛车，武术，台球，军迷战术，泰拳，搏击，散打，花样滑冰，单板，格斗，篮球/NBA，钓鱼，机车，射箭，引体向上，健身器械，动感单车，哑铃，单杠，双杠，握力器，越野跑，弓箭，街舞，深蹲，芭蕾，其它', NULL, NULL);
INSERT INTO `shop_product` VALUES (20, 69780860604, 'TMT 运动护肘男女篮球健身手肘保护套关节护腕护臂保暖护手肘护具夏季 升级6代轻薄材质全透气网孔 两只装', '健身手套', 69, 69, 87, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 运动护肘男女篮球健身手肘保护套关节护腕护臂保暖护手肘护具夏季 升级6代轻薄材质全透气网孔 两只装    商品编号：69780860604    店铺： TMT户外官方旗舰店    商品毛重：1.0kg    商品产地：中国大陆    货号：B37    适用人群：男，女    运动项目：乒乓球，羽毛球，网球，篮球，足球，排球，轮滑，瑜伽，舞蹈，高尔夫，壁球，棒球，保龄球，橄榄球，F1赛车，武术，台球    适用季节：夏    材质：羊毛    功能：保暖', NULL, NULL);
INSERT INTO `shop_product` VALUES (21, 69779660487, 'TMT 健身手套男器械单杠女训练防滑半指运动引体向上防起茧 W25升级力量加长腕带款【店长推荐】 L码(适用于掌围:20-21.5cm)', '健身手套', 59, 49.8, 74, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 健身手套男器械单杠女训练防滑半指运动引体向上防起茧 W25升级力量加长腕带款【店长推荐】 L码(适用于掌围:20-21.5cm)    商品编号：69779660487    店铺： TMT户外官方旗舰店    商品毛重：110.00g    商品产地：中国大陆    货号：W23    适用人群：男，女    类别：半指    适用季节：四季    运动项目：排球，瑜伽，舞蹈，高尔夫，棒球    功能：防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (22, 30902588889, 'TMT 健身护腕男绷带训练防扭伤运动手腕带护具装备手套卧推 红色', '健身手套', 39, 39, 81, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 健身护腕男绷带训练防扭伤运动手腕带护具装备手套卧推 红色    商品编号：30902588889    店铺： TMT户外官方旗舰店    商品毛重：300.00g    商品产地：中国大陆    货号：B26    类别：护腕    材质：复合材质    功能：防护，防滑，加压    适用人群：通用    防护等级：专业防护    适用季节：四季    适用场景：腱鞘炎    运动项目：极限运动，健身，健身训练，泰拳，搏击，散打，单板，引体向上，健身器械，动感单车，哑铃，单杠，双杠，握力器，街舞，深蹲', NULL, NULL);
INSERT INTO `shop_product` VALUES (23, 69780833408, 'TMT 护髌骨带护膝运动男跑步登山篮球半月板损伤膝盖健身护具女 FE36(2只装) 均码(2只装)', '护膝', 58, 58, 64, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 护髌骨带护膝运动男跑步登山篮球半月板损伤膝盖健身护具女 FE36(2只装) 均码(2只装)    商品编号：69780833408    店铺： TMT户外官方旗舰店    商品毛重：1.0kg    商品产地：中国大陆    货号：NT36    适用人群：男，女    适用季节：夏    运动项目：乒乓球，羽毛球，网球，篮球，足球，排球，轮滑，瑜伽，舞蹈，高尔夫，壁球，棒球，保龄球，橄榄球，F1赛车，武术，台球', NULL, NULL);
INSERT INTO `shop_product` VALUES (24, 10025104556804, 'TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）', '健身手套', 42, 42, 94, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (25, 69780175252, 'TMT 健身护肘男绷带运动护具卧推弹力量举重缠绕护手肘 黑红色 均码', '健身手套', 59, 59, 92, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (26, 69780164395, 'TMT 护踝扭伤防护固定护脚踝篮球运动男女脚腕护具装备关节跑步薄 H66-3.0级软甲轻薄系列【加压带版】【纯黑色】 M【适合36-39】', '护踝', 79, 79, 86, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (27, 72337469641, 'TMT 跪地舞蹈护膝运动女士跳舞瑜伽专用 儿童膝盖防撞防摔薄款套装升级款 常规款黑色[双层加厚垫片+空气层透气面料] 2只装（成人款）【 粘贴大小可调节】', '护膝', 49.8, 36.8, 68, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (28, 10025098463529, 'TMT 健身手套女运动夏季单杠哑铃骑行半指透气护掌液态硅胶防滑秒脱 黑灰 S（手围15-17cm）', '健身手套', 59, 49.8, 65, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (29, 69780130184, 'TMT 深蹲护膝弹力健身男女绷带绑膝绑带缠绕运动护具健美举重加压绑腿 TB68【钢铁之躯】【有魔术贴】 180CM*8CM一对', '护膝', 59, 59, 60, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (30, 10026029857293, 'TMT 跑步护膝男运动膝盖专用女士晨跑马拉松训练半月板专业护具薄款 超薄软甲加压', '护膝', 89, 69.8, 77, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (31, 30751447365, 'TMT 运动护腰带男健身腰带腰椎间盘腹部深蹲硬拉训练篮球跑步护具束腰收腹带女 Y35双层加压舒适款 L（适合腰围2尺6以内）', '护腰带', 69, 56, 68, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (32, 25578366769, 'TMT 健身手套运动半指器械单杠训练锻炼防滑引体向上护腕男女薄款 W46升级镂空款灰色 L（适用于手围19.5-21.5CM）', '健身手套', 59, 59, 52, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (33, 30280278697, 'TMT 硬拉助力带健身手套男引体向上单杠哑铃握力带牛皮运动护腕防滑（一双装） 升级牛皮款 均码', '助力带', 79, 57.8, 71, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (34, 10020041439843, 'TMT 护颈杠铃男健身深蹲杠铃套护肩垫举重器械力量训练保护肩部 J23绒布自粘款升级款 均码', '健身手套', 69, 59, 66, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (35, 30233894997, 'TMT 健身腰带深蹲硬拉腰带举重运动护腰带男女专业训练力量护具 【15CM】【黑色】 L腰围2尺6-3尺【86CM-100CM】', '护腰带', 138, 128, 89, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (36, 32968234685, 'TMT 健身护腕男力量加压举重训练手套扭伤绷带运动护具 B66软甲护腕-碳素纹 一对装', '健身手套', 59, 59, 82, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (37, 39935659349, 'TMT 健身手套女运动瑜伽器械训练动感单车男士健身防滑手套半指透气薄款健身房 粉色 S【适合手围17-18cm】', '健身手套', 36.8, 36.8, 82, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (38, 10026610915903, 'TMT 液态硅胶髌骨带跑步篮球羽毛球半月板膝盖护具髌骨带防滑 【21年新款】液态硅胶髌骨带【舒适防滑】 均码', '髌骨带', 69, 58.8, 52, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (39, 30721395877, 'TMT 健身护腕男绷带训练扭伤防护运动手腕带护具装备手套卧推 单只', '健身手套', 28, 28, 60, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (40, 69780860604, 'TMT 运动护肘男女篮球健身手肘保护套关节护腕护臂保暖护手肘护具夏季 升级6代轻薄材质全透气网孔 两只装', '健身手套', 69, 69, 94, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (41, 69779660487, 'TMT 健身手套男器械单杠女训练防滑半指运动引体向上防起茧 W25升级力量加长腕带款【店长推荐】 L码(适用于掌围:20-21.5cm)', '健身手套', 59, 49.8, 100, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (42, 30902588889, 'TMT 健身护腕男绷带训练防扭伤运动手腕带护具装备手套卧推 红色', '健身手套', 39, 39, 82, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (43, 69780833408, 'TMT 护髌骨带护膝运动男跑步登山篮球半月板损伤膝盖健身护具女 FE36(2只装) 均码(2只装)', '护膝', 58, 58, 67, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (44, 10025104556804, 'TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）', '健身手套', 42, 42, 89, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (45, 69780175252, 'TMT 健身护肘男绷带运动护具卧推弹力量举重缠绕护手肘 黑红色 均码', '健身手套', 59, 59, 75, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (46, 69780164395, 'TMT 护踝扭伤防护固定护脚踝篮球运动男女脚腕护具装备关节跑步薄 H66-3.0级软甲轻薄系列【加压带版】【纯黑色】 M【适合36-39】', '护踝', 79, 79, 76, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (47, 72337469641, 'TMT 跪地舞蹈护膝运动女士跳舞瑜伽专用 儿童膝盖防撞防摔薄款套装升级款 常规款黑色[双层加厚垫片+空气层透气面料] 2只装（成人款）【 粘贴大小可调节】', '护膝', 49.8, 36.8, 83, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (48, 10025098463529, 'TMT 健身手套女运动夏季单杠哑铃骑行半指透气护掌液态硅胶防滑秒脱 黑灰 S（手围15-17cm）', '健身手套', 59, 49.8, 74, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (49, 69780130184, 'TMT 深蹲护膝弹力健身男女绷带绑膝绑带缠绕运动护具健美举重加压绑腿 TB68【钢铁之躯】【有魔术贴】 180CM*8CM一对', '护膝', 59, 59, 82, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (50, 10026029857293, 'TMT 跑步护膝男运动膝盖专用女士晨跑马拉松训练半月板专业护具薄款 超薄软甲加压', '护膝', 89, 69.8, 72, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (51, 30751447365, 'TMT 运动护腰带男健身腰带腰椎间盘腹部深蹲硬拉训练篮球跑步护具束腰收腹带女 Y35双层加压舒适款 L（适合腰围2尺6以内）', '护腰带', 69, 56, 75, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (52, 25578366769, 'TMT 健身手套运动半指器械单杠训练锻炼防滑引体向上护腕男女薄款 W46升级镂空款灰色 L（适用于手围19.5-21.5CM）', '健身手套', 59, 59, 95, 2, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (53, 10024952193973, 'TMT 跳绳垫隔音瑜伽垫加厚儿童男女室内健身运动训练垫子双面防滑瑜伽毯 灰色130x62.5cm', '瑜伽垫', 69, 59, 51, 3, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (54, 69780864311, 'TMT篮球护膝运动男跑步户外装备半月板登山女膝盖保护套关节 【店长推荐】TMT研发T-comb系【新6代】【4 L尺码【100斤到170斤】2支装', '瑜伽用品', 79, 79, 100, 3, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (55, 10029275955655, 'TMT 健身垫男加厚瑜伽垫运动跳绳垫锻炼毯加宽防滑静音折叠 黑色 10mm', '瑜伽垫', 88, 68, 56, 3, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (56, 10020041475116, 'TMT 瑜伽拉力带弹力带健身女绳翘臀拉伸带开阻力拉力带 粉色升级款', '瑜伽/健身拉力带', 29, 29, 87, 3, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (57, 69780169131, 'TMT 脚蹬拉力器仰卧起坐辅助健身家用多功能开背瑜伽器材高弹力绳 梦幻紫【经典四管】', '瑜伽/健身拉力带', 59, 59, 71, 3, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (58, 10025478849606, 'TMT 健身包运动背包干湿分离带鞋位男女防水大容量旅行游泳瑜伽训练手提单肩斜跨包 干湿分离健身包【黑橙】', '健身包', 119, 88, 58, 5, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (59, 10021732744314, 'TMT室内儿童秋千学生寝室宿舍单人吊床户外加厚摇篮椅家用防侧翻 儿童秋千(咖啡色)', '吊床秋千', 88, 69.8, 76, 5, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (60, 10021410523680, 'TMT 蹦蹦床儿童家用室内蹦床成人健身小孩跳跳床玩具弹跳床 红色-旗舰款1.4m直径-U型管脚 1', '新品区', 298, 248, 52, 7, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (61, 10026610915903, 'TMT 液态硅胶髌骨带跑步篮球羽毛球半月板膝盖护具髌骨带防滑 【21年新款】液态硅胶髌骨带【舒适防滑】 均码', '新品区', 69, 58.8, 51, 7, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);
INSERT INTO `shop_product` VALUES (62, 10026610952534, 'TMT护腰带运动篮球专用束腰男士收腹训练健身薄款护腰腰带 【21年新款】仿生软骨护腰 XL(适合腰围2尺6-3尺3，体重150斤-180', '新品区', 108, 78.8, 74, 7, '2021-04-24', '2021-04-24', '商品名称：TMT 儿童健身手套夏薄款半指防滑运动骑行健身单杠轮滑男女童小孩子护具 活力灰 M（手围14-17cm）    商品编号：10025104556804    店铺： TMT户外官方旗舰店    商品毛重：50.00g    商品产地：中国大陆    货号：W73    适用人群：儿童    类别：半指    防护等级：基本防护    适用季节：四季，春，夏，秋，冬    运动项目：羽毛球，轮滑，舞蹈，健身，健身训练，骑行，引体向上，健身器械，哑铃，单杠，双杠，弓箭，街舞，芭蕾    功能：护掌，透气，防滑', NULL, NULL);

-- ----------------------------
-- Table structure for shop_product_es
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_es`;
CREATE TABLE `shop_product_es`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original_price` float NOT NULL,
  `promote_price` float NOT NULL,
  `stock` int(11) NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_product_es
-- ----------------------------

-- ----------------------------
-- Table structure for shop_productimage
-- ----------------------------
DROP TABLE IF EXISTS `shop_productimage`;
CREATE TABLE `shop_productimage`  (
  `id` bigint(22) NOT NULL,
  `pid` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKc3xlrvuah7r3w3mbr58cr9uwh`(`pid`) USING BTREE,
  CONSTRAINT `FKc3xlrvuah7r3w3mbr58cr9uwh` FOREIGN KEY (`pid`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_productimage
-- ----------------------------
INSERT INTO `shop_productimage` VALUES (1, 1, 'single');
INSERT INTO `shop_productimage` VALUES (2, 2, 'single');
INSERT INTO `shop_productimage` VALUES (3, 3, 'single');
INSERT INTO `shop_productimage` VALUES (4, 4, 'single');
INSERT INTO `shop_productimage` VALUES (5, 5, 'single');
INSERT INTO `shop_productimage` VALUES (6, 6, 'single');
INSERT INTO `shop_productimage` VALUES (7, 7, 'single');
INSERT INTO `shop_productimage` VALUES (8, 8, 'single');
INSERT INTO `shop_productimage` VALUES (9, 9, 'single');
INSERT INTO `shop_productimage` VALUES (10, 10, 'single');
INSERT INTO `shop_productimage` VALUES (11, 11, 'single');
INSERT INTO `shop_productimage` VALUES (12, 12, 'single');
INSERT INTO `shop_productimage` VALUES (13, 13, 'single');
INSERT INTO `shop_productimage` VALUES (14, 14, 'single');
INSERT INTO `shop_productimage` VALUES (15, 15, 'single');
INSERT INTO `shop_productimage` VALUES (16, 16, 'single');
INSERT INTO `shop_productimage` VALUES (17, 17, 'single');
INSERT INTO `shop_productimage` VALUES (18, 18, 'single');
INSERT INTO `shop_productimage` VALUES (19, 19, 'single');
INSERT INTO `shop_productimage` VALUES (20, 20, 'single');
INSERT INTO `shop_productimage` VALUES (21, 21, 'single');
INSERT INTO `shop_productimage` VALUES (22, 22, 'single');
INSERT INTO `shop_productimage` VALUES (23, 23, 'single');
INSERT INTO `shop_productimage` VALUES (24, 24, 'single');
INSERT INTO `shop_productimage` VALUES (25, 25, 'single');
INSERT INTO `shop_productimage` VALUES (26, 26, 'single');
INSERT INTO `shop_productimage` VALUES (27, 27, 'single');
INSERT INTO `shop_productimage` VALUES (28, 28, 'single');
INSERT INTO `shop_productimage` VALUES (29, 29, 'single');
INSERT INTO `shop_productimage` VALUES (30, 30, 'single');
INSERT INTO `shop_productimage` VALUES (31, 31, 'single');
INSERT INTO `shop_productimage` VALUES (32, 32, 'single');
INSERT INTO `shop_productimage` VALUES (33, 33, 'single');
INSERT INTO `shop_productimage` VALUES (34, 34, 'single');
INSERT INTO `shop_productimage` VALUES (35, 35, 'single');
INSERT INTO `shop_productimage` VALUES (36, 36, 'single');
INSERT INTO `shop_productimage` VALUES (37, 37, 'single');
INSERT INTO `shop_productimage` VALUES (38, 38, 'single');
INSERT INTO `shop_productimage` VALUES (39, 39, 'single');
INSERT INTO `shop_productimage` VALUES (40, 40, 'single');
INSERT INTO `shop_productimage` VALUES (41, 41, 'single');
INSERT INTO `shop_productimage` VALUES (42, 42, 'single');
INSERT INTO `shop_productimage` VALUES (43, 43, 'single');
INSERT INTO `shop_productimage` VALUES (44, 44, 'single');
INSERT INTO `shop_productimage` VALUES (45, 45, 'single');
INSERT INTO `shop_productimage` VALUES (46, 46, 'single');
INSERT INTO `shop_productimage` VALUES (47, 47, 'single');
INSERT INTO `shop_productimage` VALUES (48, 48, 'single');
INSERT INTO `shop_productimage` VALUES (49, 49, 'single');
INSERT INTO `shop_productimage` VALUES (50, 50, 'single');
INSERT INTO `shop_productimage` VALUES (51, 51, 'single');
INSERT INTO `shop_productimage` VALUES (52, 52, 'single');
INSERT INTO `shop_productimage` VALUES (53, 53, 'single');
INSERT INTO `shop_productimage` VALUES (54, 54, 'single');
INSERT INTO `shop_productimage` VALUES (55, 55, 'single');
INSERT INTO `shop_productimage` VALUES (56, 56, 'single');
INSERT INTO `shop_productimage` VALUES (57, 57, 'single');
INSERT INTO `shop_productimage` VALUES (58, 58, 'single');
INSERT INTO `shop_productimage` VALUES (59, 59, 'single');
INSERT INTO `shop_productimage` VALUES (60, 60, 'single');
INSERT INTO `shop_productimage` VALUES (61, 61, 'single');
INSERT INTO `shop_productimage` VALUES (62, 62, 'single');
INSERT INTO `shop_productimage` VALUES (4907311, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (5320982, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (25105543, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (44184732, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (62131427, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (72191622, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (99870427, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (100710636, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (108436353, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (144696874, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (168988205, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (184836508, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (198758921, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (225529126, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (232077240, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (243092203, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (255141064, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (268827772, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (272952605, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (274082529, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (279262847, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (283790108, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (309957072, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (324801083, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (328884198, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (357677890, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (358786925, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (396033039, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (450495378, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (470437564, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (470948468, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (473876739, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (474886065, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (477737931, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (512323708, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (520238181, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (523907224, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (536586792, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (543142017, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (614755875, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (626216052, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (627217641, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (648596537, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (662818439, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (675792486, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (681216998, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (701638279, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (707795997, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (716753051, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (727061753, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (775594050, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (776653122, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (789194850, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (817445140, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (827065367, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (850175731, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (861661037, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (875509499, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (876618563, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (901691121, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (914775364, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (951141901, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (951401409, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (970334106, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (982589921, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (992993354, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (994978011, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (1009290731, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (1038005062, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (1042263837, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (1065467540, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (1069528373, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (1087547517, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (1091286233, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (1092742819, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (1098571257, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (1100417153, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (1105319889, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (1111170037, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (1129195046, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (1136482306, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (1140066664, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (1156304188, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (1161474788, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (1163922338, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (1171340379, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (1191703196, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (1210130420, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (1217227287, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (1243560447, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (1245644263, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (1246620545, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (1278953969, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (1316527439, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (1317662088, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (1318345509, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (1341006807, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (1344667100, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (1351080520, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (1354264673, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (1366634764, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (1369332339, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (1370348661, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (1396620067, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (1400470831, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (1411298434, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (1417048605, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (1445398943, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (1447739876, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (1464164056, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (1481775915, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (1512294171, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (1537495810, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (1544946109, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (1550648583, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (1568845152, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (1569248380, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (1613487474, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (1620644226, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (1625691288, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (1636342980, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (1644813982, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (1660080851, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (1700563027, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (1742954515, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (1750770711, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (1756991560, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (1773038705, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (1773845444, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (1775884657, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (1785910645, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (1819617982, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (1829670576, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (1841080698, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (1843252376, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (1850067450, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (1852830229, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (1862712212, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (1874576730, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (1880844227, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (1880896254, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (1889085467, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (1903676542, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (1962668208, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (1977448061, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (1992824930, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (2009543504, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (2033559716, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (2044881108, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (2050157569, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (2052698561, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (2068132143, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (2079355941, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (2082637536, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (2095717263, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (2098837117, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (2112464506, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (2121716649, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (2172648915, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (2205584571, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (2218632738, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (2232435384, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (2275684544, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (2280253331, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (2291522783, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (2303241636, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (2321492642, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (2324222805, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (2327633398, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (2328449053, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (2340593808, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (2350006406, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (2350043424, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (2350155865, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (2358770066, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (2369119545, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (2371191094, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (2380648934, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (2382462511, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (2382783324, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (2395192996, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (2425201894, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (2434091280, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (2452263456, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (2457555044, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (2457781573, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (2459950469, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (2473203165, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (2489833511, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (2512585731, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (2514357672, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (2514776733, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (2515806572, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (2521334697, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (2555387805, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (2574676102, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (2589079480, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (2592349757, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (2592605135, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (2611854092, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (2615452781, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (2617456648, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (2623155030, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (2625845170, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (2645096589, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (2660082317, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (2710043950, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (2710668925, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (2711386108, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (2712851802, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (2716049355, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (2732394373, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (2739602232, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (2740921053, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (2765551505, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (2777916091, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (2780019286, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (2782382578, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (2805781314, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (2812294019, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (2816403480, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (2838939844, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (2870959122, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (2885441519, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (2905266841, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (2909684981, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (2914587317, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (2927135110, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (2948156587, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (2949213925, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (2969068812, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (2975121824, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (2985746607, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (3022152066, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (3045929933, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (3048470246, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (3058755557, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (3060303617, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (3089209418, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (3118217735, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (3123964413, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (3134427624, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (3135767896, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (3164727331, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (3177081870, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (3197550973, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (3198191728, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (3200797747, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (3233926940, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (3260027405, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (3285258826, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (3307592631, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (3313089483, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (3339679085, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (3343938958, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (3350895414, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (3355858933, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (3375914924, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (3399523922, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (3415385809, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (3442301346, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (3447151633, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (3454123673, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (3456183934, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (3456455024, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (3462070081, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (3484537856, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (3489712570, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (3491012152, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (3503545175, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (3516120670, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (3528443592, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (3553442775, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (3568895485, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (3570395276, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (3574258335, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (3589694575, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (3596598862, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (3610963354, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (3642055404, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (3664347481, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (3679513917, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (3690971636, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (3726558275, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (3730215436, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (3735629315, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (3739633361, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (3749809870, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (3764865028, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (3766583304, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (3811674031, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (3827706141, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (3837484799, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (3895908260, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (3901877856, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (3908724365, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (3915870086, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (3923044807, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (3932922545, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (3959371325, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (3972400980, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (3982979046, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (3983300006, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (3990905028, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (4008389836, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (4011020647, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (4029831265, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (4039223141, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (4065197552, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (4065838434, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (4069337134, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (4079493018, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (4102350638, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (4108938767, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (4113902842, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (4118739679, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (4146808057, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (4156753309, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (4176967584, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (4179683621, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (4203698635, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (4205692258, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (4214996380, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (4228232829, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (4231189922, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (4239203276, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (4240608289, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (4244136014, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (4247957783, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (4258777963, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (4263808827, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (4284835682, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (4290947490, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (4296295032, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (4301675580, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (4335101162, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (4341844527, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (4344201391, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (4364986867, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (4379303805, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (4402553980, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (4407439829, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (4422334301, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (4440560208, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (4462798262, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (4494412940, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (4529408415, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (4534708845, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (4536437060, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (4561756419, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (4580573334, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (4649171765, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (4662324871, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (4675586190, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (4678058748, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (4751699469, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (4787648813, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (4796802293, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (4801104096, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (4837821290, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (4843325932, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (4847263653, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (4851745113, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (4874186311, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (4881705046, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (4889616847, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (4899135409, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (4904910179, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (4921526206, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (4925783786, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (4927875093, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (4930141172, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (4952996043, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (4979582701, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (4979671262, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (4996809032, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (5029878595, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (5030048347, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (5031764650, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (5044679149, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (5070614249, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (5091882541, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (5133167544, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (5139330114, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (5144587711, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (5188231437, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (5203225887, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (5208713435, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (5217621797, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (5234815660, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (5242667881, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (5253633748, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (5273961728, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (5312892273, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (5340643440, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (5343922628, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (5363419780, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (5363457234, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (5382697508, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (5382968438, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (5410080889, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (5432116558, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (5491670503, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (5503021631, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (5506707248, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (5516108188, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (5527602836, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (5538788399, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (5551706489, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (5575905454, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (5581989577, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (5610049123, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (5620374307, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (5622979466, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (5627573317, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (5644589659, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (5651815083, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (5653203713, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (5658831594, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (5662766039, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (5684785836, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (5687224195, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (5703864248, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (5704951795, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (5758056524, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (5759125210, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (5797885621, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (5801213463, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (5812374079, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (5821038417, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (5822893525, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (5826140273, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (5869754294, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (5886140788, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (5888267090, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (5890537456, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (5894706502, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (5896523761, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (5907027418, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (5913762069, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (5915055338, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (5927792363, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (5927864456, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (5952884595, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (5965688059, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (5982379287, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (5986327877, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (5988801144, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (5992910448, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (6010559388, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (6013556596, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (6038840574, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (6064413931, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (6070714214, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (6075145698, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (6081493890, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (6092797298, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (6094028627, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (6119293369, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (6126849982, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (6133142409, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (6148551751, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (6180425527, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (6188601280, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (6239132402, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (6294855219, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (6315964090, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (6322144896, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (6355565939, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (6367789808, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (6374232971, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (6405414198, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (6437490753, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (6443850747, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (6451537796, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (6473619030, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (6500057852, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (6513102569, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (6520847050, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (6533513258, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (6535024504, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (6539807233, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (6567096629, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (6577337516, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (6585635073, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (6595743769, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (6606020320, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (6607739081, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (6610789264, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (6614133479, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (6627937909, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (6649414091, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (6654595997, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (6659237607, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (6675964601, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (6687732337, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (6687887071, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (6693884917, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (6703557930, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (6713095487, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (6775586279, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (6791772020, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (6826018365, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (6845214956, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (6855547883, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (6860717860, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (6899334095, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (6929241076, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (6941052874, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (6949704280, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (6953332752, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (6957469932, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (6960166320, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (6977102480, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (6977679522, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (7014954304, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (7015580898, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (7046342175, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (7048350477, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (7059495386, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (7087467591, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (7091810766, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (7103811763, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (7105542545, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (7128803901, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (7138595132, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (7158611473, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (7162806704, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (7186095181, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (7194690822, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (7196536111, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (7222773887, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (7250391625, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (7250820984, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (7260706253, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (7277991868, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (7279942025, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (7296431829, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (7297275383, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (7311291390, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (7355021985, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (7382210589, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (7388101480, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (7389293251, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (7390282426, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (7397688206, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (7399754995, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (7410404365, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (7457266483, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (7481332216, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (7498713952, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (7515834384, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (7529977933, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (7536281170, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (7539780730, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (7545967144, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (7557228184, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (7557338456, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (7571714172, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (7579309118, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (7616004442, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (7647941402, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (7668168940, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (7668544555, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (7679369399, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (7699175793, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (7711096110, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (7737483609, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (7766213854, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (7766958074, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (7770101591, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (7773348692, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (7779326787, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (7781071205, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (7805429738, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (7810199199, 33, 'detail');
INSERT INTO `shop_productimage` VALUES (7834788169, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (7836722859, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (7856023216, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (7879167137, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (7883756363, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (7887328806, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (7890054424, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (7893822144, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (7902339245, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (7903906067, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (7923579178, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (7925646600, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (7935721959, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (7950570064, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (7956398783, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (7958250870, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (7961798963, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (7987387252, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (8000091699, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (8050416597, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (8083240554, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (8088540017, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (8091306440, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (8100034230, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (8103053693, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (8116248120, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (8155301176, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (8164809642, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (8173379322, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (8174664018, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (8197184403, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (8237459276, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (8261112209, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (8268105854, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (8270985382, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (8289384447, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (8289498630, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (8323653933, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (8358928292, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (8361796088, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (8373694340, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (8379805116, 32, 'detail');
INSERT INTO `shop_productimage` VALUES (8392064365, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (8400797970, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (8410665473, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (8413450360, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (8424302243, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (8462899652, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (8484154858, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (8511076849, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (8553414942, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (8586263342, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (8592192049, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (8619280928, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (8622334862, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (8630272147, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (8637654418, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (8646790606, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (8647723583, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (8681186434, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (8695727569, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (8727394337, 30, 'detail');
INSERT INTO `shop_productimage` VALUES (8731526599, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (8780597771, 62, 'detail');
INSERT INTO `shop_productimage` VALUES (8784251142, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (8788892993, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (8823392712, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (8831541075, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (8848770704, 26, 'detail');
INSERT INTO `shop_productimage` VALUES (8853094294, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (8877828972, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (8879993555, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (8902954970, 40, 'detail');
INSERT INTO `shop_productimage` VALUES (8973411639, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (8981782717, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (9002457148, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (9004761383, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (9010274289, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (9055355085, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (9060711055, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (9061786548, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (9089904940, 37, 'detail');
INSERT INTO `shop_productimage` VALUES (9098433986, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (9101809718, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (9104317358, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (9114194300, 35, 'detail');
INSERT INTO `shop_productimage` VALUES (9135176424, 27, 'detail');
INSERT INTO `shop_productimage` VALUES (9135405036, 14, 'detail');
INSERT INTO `shop_productimage` VALUES (9135591460, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (9141287263, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (9146986612, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (9161024538, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (9177700672, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (9210236596, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (9230138924, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (9236532595, 49, 'detail');
INSERT INTO `shop_productimage` VALUES (9237456699, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (9258230578, 18, 'detail');
INSERT INTO `shop_productimage` VALUES (9276822425, 24, 'detail');
INSERT INTO `shop_productimage` VALUES (9320328231, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (9322640376, 58, 'detail');
INSERT INTO `shop_productimage` VALUES (9324019640, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (9324181590, 31, 'detail');
INSERT INTO `shop_productimage` VALUES (9328740777, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (9339072619, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (9368305930, 15, 'detail');
INSERT INTO `shop_productimage` VALUES (9384464650, 46, 'detail');
INSERT INTO `shop_productimage` VALUES (9388675440, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (9392557373, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (9396008871, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (9408346789, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (9418878788, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (9421377015, 61, 'detail');
INSERT INTO `shop_productimage` VALUES (9432228598, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (9432637190, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (9442247777, 36, 'detail');
INSERT INTO `shop_productimage` VALUES (9448565378, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (9482774738, 5, 'detail');
INSERT INTO `shop_productimage` VALUES (9491654785, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (9512290052, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (9548635890, 39, 'detail');
INSERT INTO `shop_productimage` VALUES (9565080358, 43, 'detail');
INSERT INTO `shop_productimage` VALUES (9576352554, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (9579102857, 52, 'detail');
INSERT INTO `shop_productimage` VALUES (9597059600, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (9597821184, 54, 'detail');
INSERT INTO `shop_productimage` VALUES (9608194646, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (9612957958, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (9617820359, 25, 'detail');
INSERT INTO `shop_productimage` VALUES (9623897656, 9, 'detail');
INSERT INTO `shop_productimage` VALUES (9623986931, 55, 'detail');
INSERT INTO `shop_productimage` VALUES (9641414397, 56, 'detail');
INSERT INTO `shop_productimage` VALUES (9644637121, 29, 'detail');
INSERT INTO `shop_productimage` VALUES (9668854598, 23, 'detail');
INSERT INTO `shop_productimage` VALUES (9681012561, 45, 'detail');
INSERT INTO `shop_productimage` VALUES (9699756299, 60, 'detail');
INSERT INTO `shop_productimage` VALUES (9710133499, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (9738821373, 21, 'detail');
INSERT INTO `shop_productimage` VALUES (9788956689, 44, 'detail');
INSERT INTO `shop_productimage` VALUES (9812223104, 47, 'detail');
INSERT INTO `shop_productimage` VALUES (9814690588, 11, 'detail');
INSERT INTO `shop_productimage` VALUES (9876065317, 57, 'detail');
INSERT INTO `shop_productimage` VALUES (9876788075, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (9893610902, 34, 'detail');
INSERT INTO `shop_productimage` VALUES (9895859205, 16, 'detail');
INSERT INTO `shop_productimage` VALUES (9900003176, 42, 'detail');
INSERT INTO `shop_productimage` VALUES (9911156496, 59, 'detail');
INSERT INTO `shop_productimage` VALUES (9920038690, 41, 'detail');
INSERT INTO `shop_productimage` VALUES (9922263465, 48, 'detail');
INSERT INTO `shop_productimage` VALUES (9935024216, 53, 'detail');
INSERT INTO `shop_productimage` VALUES (9950427197, 28, 'detail');
INSERT INTO `shop_productimage` VALUES (9968762843, 51, 'detail');
INSERT INTO `shop_productimage` VALUES (9969265254, 20, 'detail');
INSERT INTO `shop_productimage` VALUES (9988423694, 38, 'detail');
INSERT INTO `shop_productimage` VALUES (9995177013, 50, 'detail');
INSERT INTO `shop_productimage` VALUES (9997306991, 38, 'detail');

-- ----------------------------
-- Table structure for shop_property
-- ----------------------------
DROP TABLE IF EXISTS `shop_property`;
CREATE TABLE `shop_property`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_property_category`(`cid`) USING BTREE,
  CONSTRAINT `fk_property_category` FOREIGN KEY (`cid`) REFERENCES `shop_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_property
-- ----------------------------
INSERT INTO `shop_property` VALUES (1, '门上单杠', 1);
INSERT INTO `shop_property` VALUES (2, '跳绳', 1);
INSERT INTO `shop_property` VALUES (3, '负重沙袋', 1);
INSERT INTO `shop_property` VALUES (4, '俯卧支撑架', 1);
INSERT INTO `shop_property` VALUES (5, '健腹轮', 1);
INSERT INTO `shop_property` VALUES (6, '腕力球', 1);
INSERT INTO `shop_property` VALUES (7, '握力器', 1);
INSERT INTO `shop_property` VALUES (8, '臂力器', 1);
INSERT INTO `shop_property` VALUES (9, '筋膜枪', 1);
INSERT INTO `shop_property` VALUES (10, '筋膜刀', 1);
INSERT INTO `shop_property` VALUES (11, '蹦床', 1);
INSERT INTO `shop_property` VALUES (12, '拉力器', 1);
INSERT INTO `shop_property` VALUES (13, '拉筋板', 1);
INSERT INTO `shop_property` VALUES (14, '飞力士棒', 1);
INSERT INTO `shop_property` VALUES (15, '乒乓球训练器', 1);
INSERT INTO `shop_property` VALUES (16, '助力带', 2);
INSERT INTO `shop_property` VALUES (17, '护膝', 2);
INSERT INTO `shop_property` VALUES (18, '健身手套', 2);
INSERT INTO `shop_property` VALUES (19, '护腰带', 2);
INSERT INTO `shop_property` VALUES (20, '髌骨带', 2);
INSERT INTO `shop_property` VALUES (21, '护踝', 2);
INSERT INTO `shop_property` VALUES (22, '护腕', 2);
INSERT INTO `shop_property` VALUES (23, '冰巾/头带', 2);
INSERT INTO `shop_property` VALUES (24, '拳击散打绷带/护齿', 2);
INSERT INTO `shop_property` VALUES (25, '护臂护肘护肩', 2);
INSERT INTO `shop_property` VALUES (26, '瑜伽垫', 3);
INSERT INTO `shop_property` VALUES (27, '瑜伽裤', 3);
INSERT INTO `shop_property` VALUES (28, '瑜伽/健身拉力带', 3);
INSERT INTO `shop_property` VALUES (29, '筋膜球', 3);
INSERT INTO `shop_property` VALUES (30, '瑜伽环', 3);
INSERT INTO `shop_property` VALUES (31, '瑜伽柱', 3);
INSERT INTO `shop_property` VALUES (32, '跳绳袜', 3);
INSERT INTO `shop_property` VALUES (33, '暴汗服', 4);
INSERT INTO `shop_property` VALUES (34, '运动内衣', 4);
INSERT INTO `shop_property` VALUES (35, '登山杖', 5);
INSERT INTO `shop_property` VALUES (36, '吊床秋千', 5);
INSERT INTO `shop_property` VALUES (37, '健身包', 5);
INSERT INTO `shop_property` VALUES (38, '运动水杯', 6);
INSERT INTO `shop_property` VALUES (39, '卷尺', 6);

-- ----------------------------
-- Table structure for shop_propertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `shop_propertyvalue`;
CREATE TABLE `shop_propertyvalue`  (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `ptid` int(11) NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_propertyvalue_product`(`pid`) USING BTREE,
  INDEX `fk_propertyvalue_property`(`ptid`) USING BTREE,
  CONSTRAINT `fk_propertyvalue_product` FOREIGN KEY (`pid`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_propertyvalue_property` FOREIGN KEY (`ptid`) REFERENCES `shop_property` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_propertyvalue
-- ----------------------------
INSERT INTO `shop_propertyvalue` VALUES (1, 1, 11, '蹦床');
INSERT INTO `shop_propertyvalue` VALUES (2, 2, 14, '飞力士棒');
INSERT INTO `shop_propertyvalue` VALUES (3, 3, 3, '负重沙袋');
INSERT INTO `shop_propertyvalue` VALUES (4, 4, 1, '门上单杠');
INSERT INTO `shop_propertyvalue` VALUES (5, 5, 2, '跳绳');
INSERT INTO `shop_propertyvalue` VALUES (6, 6, 13, '拉筋板');
INSERT INTO `shop_propertyvalue` VALUES (7, 7, 2, '跳绳');
INSERT INTO `shop_propertyvalue` VALUES (8, 8, 2, '跳绳');
INSERT INTO `shop_propertyvalue` VALUES (9, 9, 8, '臂力器');
INSERT INTO `shop_propertyvalue` VALUES (10, 10, 8, '臂力器');
INSERT INTO `shop_propertyvalue` VALUES (11, 11, 10, '筋膜刀');
INSERT INTO `shop_propertyvalue` VALUES (12, 12, 15, '乒乓球训练器');
INSERT INTO `shop_propertyvalue` VALUES (13, 13, 16, '助力带');
INSERT INTO `shop_propertyvalue` VALUES (14, 14, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (15, 15, 19, '护腰带');
INSERT INTO `shop_propertyvalue` VALUES (16, 16, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (17, 17, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (18, 18, 20, '髌骨带');
INSERT INTO `shop_propertyvalue` VALUES (19, 19, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (20, 20, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (21, 21, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (22, 22, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (23, 23, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (24, 24, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (25, 25, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (26, 26, 21, '护踝');
INSERT INTO `shop_propertyvalue` VALUES (27, 27, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (28, 28, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (29, 29, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (30, 30, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (31, 31, 19, '护腰带');
INSERT INTO `shop_propertyvalue` VALUES (32, 32, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (33, 33, 16, '助力带');
INSERT INTO `shop_propertyvalue` VALUES (34, 34, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (35, 35, 19, '护腰带');
INSERT INTO `shop_propertyvalue` VALUES (36, 36, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (37, 37, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (38, 38, 20, '髌骨带');
INSERT INTO `shop_propertyvalue` VALUES (39, 39, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (40, 40, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (41, 41, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (42, 42, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (43, 43, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (44, 44, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (45, 45, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (46, 46, 21, '护踝');
INSERT INTO `shop_propertyvalue` VALUES (47, 47, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (48, 48, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (49, 49, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (50, 50, 17, '护膝');
INSERT INTO `shop_propertyvalue` VALUES (51, 51, 19, '护腰带');
INSERT INTO `shop_propertyvalue` VALUES (52, 52, 18, '健身手套');
INSERT INTO `shop_propertyvalue` VALUES (53, 53, 26, '瑜伽垫');
INSERT INTO `shop_propertyvalue` VALUES (55, 55, 26, '瑜伽垫');
INSERT INTO `shop_propertyvalue` VALUES (56, 56, 28, '瑜伽/健身拉力带');
INSERT INTO `shop_propertyvalue` VALUES (57, 57, 28, '瑜伽/健身拉力带');
INSERT INTO `shop_propertyvalue` VALUES (58, 58, 37, '健身包');
INSERT INTO `shop_propertyvalue` VALUES (59, 59, 36, '吊床秋千');

-- ----------------------------
-- Table structure for shop_review
-- ----------------------------
DROP TABLE IF EXISTS `shop_review`;
CREATE TABLE `shop_review`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_review_product`(`pid`) USING BTREE,
  INDEX `fk_review_user`(`uid`) USING BTREE,
  CONSTRAINT `fk_review_product` FOREIGN KEY (`pid`) REFERENCES `shop_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_review_user` FOREIGN KEY (`uid`) REFERENCES `shop_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_review
-- ----------------------------

-- ----------------------------
-- Table structure for shop_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user`  (
  `id` int(11) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonenumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_user
-- ----------------------------

-- ----------------------------
-- Table structure for software_comment
-- ----------------------------
DROP TABLE IF EXISTS `software_comment`;
CREATE TABLE `software_comment`  (
  `id` bigint(22) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `entity_type` int(11) NULL DEFAULT NULL,
  `entity_id` int(11) NULL DEFAULT NULL,
  `target_id` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_software_comment_user`(`user_id`) USING BTREE,
  CONSTRAINT `fk_software_comment_user` FOREIGN KEY (`user_id`) REFERENCES `software_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of software_comment
-- ----------------------------
INSERT INTO `software_comment` VALUES (32173823, 150654, 2, 32246726, 0, 'Test', 0, '2021-05-04');
INSERT INTO `software_comment` VALUES (32246726, 150654, 1, 32160787, 0, '', 0, '2021-05-04');

-- ----------------------------
-- Table structure for software_discuss_post
-- ----------------------------
DROP TABLE IF EXISTS `software_discuss_post`;
CREATE TABLE `software_discuss_post`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  `comment_count` int(11) NULL DEFAULT NULL,
  `score` double(11, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_software_discuss_post-user`(`user_id`) USING BTREE,
  CONSTRAINT `fk_software_discuss_post-user` FOREIGN KEY (`user_id`) REFERENCES `software_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of software_discuss_post
-- ----------------------------
INSERT INTO `software_discuss_post` VALUES (32160787, 891767, 'Hello', 'Hello! Hello! Hello', 0, 0, '2021-04-29', 1, 0);
INSERT INTO `software_discuss_post` VALUES (51439624, 891767, 'Hello', 'Hello! Hello! Hello', 0, 0, '2021-04-29', 1, 0);
INSERT INTO `software_discuss_post` VALUES (52062115, 891767, 'yanhaohan', 'hhhh', 0, 0, '2021-04-29', 2, 0);
INSERT INTO `software_discuss_post` VALUES (61130646, 891767, 'Come on ', 'Come togehjsjdsaldjalkjdaoiwur', 0, 0, '2021-04-29', 6, 0);

-- ----------------------------
-- Table structure for software_message
-- ----------------------------
DROP TABLE IF EXISTS `software_message`;
CREATE TABLE `software_message`  (
  `id` bigint(22) NOT NULL,
  `from_id` int(11) NULL DEFAULT NULL,
  `to_id` int(11) NULL DEFAULT NULL,
  `conversation_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_software_message_user`(`to_id`) USING BTREE,
  CONSTRAINT `fk_software_message_user` FOREIGN KEY (`to_id`) REFERENCES `software_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of software_message
-- ----------------------------
INSERT INTO `software_message` VALUES (920327, 891767, 891767, '891767_891767', 'nihao', 1, '2021-04-29');
INSERT INTO `software_message` VALUES (980644, 891767, 150654, '150654_891767', 'hello', 1, '2021-04-29');
INSERT INTO `software_message` VALUES (197409467, 1, 477063, 'law', 'An e-commerce operator shall clearly, comprehensively and explicitly inform users of the steps, matters needing attention and downloading methods for concluding a contract, and ensure that users can read and download it conveniently and completely.', 0, '2021-05-03');
INSERT INTO `software_message` VALUES (258499351, 1, 477063, 'law', 'E-commerce operators shall, in collecting and using their users&#39; personal information, comply with the provisions of laws and administrative regulations on the protection of personal information.', 0, '2021-05-03');
INSERT INTO `software_message` VALUES (322212274, 1, 150654, 'comment', '{&quot;entityType&quot;:2,&quot;entityId&quot;:32246726,&quot;postId&quot;:32160787,&quot;userId&quot;:150654}', 0, '2021-05-04');
INSERT INTO `software_message` VALUES (434254722, 1, 477063, 'law', 'Robots protocol is the site for security and privacy considerations, to prevent the search engine to grab sensitive information and set, all content is contained in a text file (robots.txt), is the search engine to visit a website to view the first file. The principle of search engine is through a kind of spider program, automatically collect web pages on the Internet and obtain relevant information. And in view of the network security and privacy concerns, each site can set up your own Robots agreement, to express the search engine, which content is willing to allow collected by search engine, which is not allowed, the way to search engine, convenient crawler better grab your content, but also protect the small and medium-sized websites traffic balance, Avoid the crawler fast crawl to the website server to bring too much pressure.', 0, '2021-05-03');
INSERT INTO `software_message` VALUES (477144481, 1, 477063, 'law', ' E-commerce operators shall disclose commodity or service information in a comprehensive, true, accurate and timely manner to protect consumers&#39; right to know and right to choose. E-commerce operators shall not fabricate transactions, fabricate user evaluations and other ways to carry out false or misleading commercial publicity, deceive and mislead consumers.', 0, '2021-05-03');
INSERT INTO `software_message` VALUES (655849299, 1, 891767, 'comment', '{&quot;entityType&quot;:1,&quot;entityId&quot;:32160787,&quot;postId&quot;:32160787,&quot;userId&quot;:150654}', 0, '2021-05-04');
INSERT INTO `software_message` VALUES (696385227, 1, 477063, 'law', 'E-commerce operators shall fulfill their tax obligations according to law and enjoy preferential tax benefits according to law.', 0, '2021-05-03');
INSERT INTO `software_message` VALUES (765653827, 1, 477063, 'law', 'E-commerce operators shall obtain administrative licenses in accordance with law if they need to obtain relevant administrative licenses for their business activities.', 0, '2021-05-03');
INSERT INTO `software_message` VALUES (875539476, 1, 477063, 'law', 'Operators of e-commerce platforms shall take technical measures and other necessary measures to ensure their network security and stable operation, guard against network illegal and criminal activities, effectively respond to network security incidents and ensure the security of e-commerce transactions.', 0, '2021-05-03');

-- ----------------------------
-- Table structure for software_user
-- ----------------------------
DROP TABLE IF EXISTS `software_user`;
CREATE TABLE `software_user`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `header_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of software_user
-- ----------------------------
INSERT INTO `software_user` VALUES (150654, 'jp2017212901', 'dc255c2331d3fca49f8ace2136020c81', 'faaf3', 'zhhmail@bupt.edu.cn', 0, 1, '297a16a38ef942069991b856c48390e3', 'http://localhost:8082/community/user/header/14ed27652773481d950233348a5c00e1.jpg', '2021-04-28');
INSERT INTO `software_user` VALUES (356410, 'yanhaohan', 'fff578a849456c0e15d93b2fbdba18ee', 'f98c0', '891735032@qq.com', 0, 0, '897ddb64e025472799a1c6f25c8b1146', 'http://localhost:8082/community/user/header/default.jpg', '2021-04-29');
INSERT INTO `software_user` VALUES (477063, 'zhanghaohui', '626ca9bf90a38747de50ec5019faf666', '32578', '1326036712@qq.com', 0, 1, 'ae76cfdfd4244e1297966f0825e9cf26', 'http://localhost:8082/community/user/header/default.jpg', '2021-05-03');
INSERT INTO `software_user` VALUES (891767, 'zhanghaohui777', '4531f26dc29d863b3b8368b3e06bde31', 'ce15f', 'jp2017212901@qmul.ac.uk', 1, 1, 'e2999cadce43414381b6ba265111b5f2', 'http://localhost:8082/community/user/header/default.jpg', '2021-04-28');

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 20/04/2020 10:47:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货地址',
  `orderCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '关联的订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL COMMENT '商品id',
  `gpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品主图',
  `status` int(3) NULL DEFAULT 0 COMMENT '是否启用',
  `bannerQuale` int(3) NULL DEFAULT 0 COMMENT '哪个专场',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 1, '//m.360buyimg.com/babel/jfs/t1/105674/25/4755/112040/5de8d0d8E05a0b6e2/911ada18a4daee7f.jpg!q70.jpg', 1, 1, '2019-12-15 11:14:10');
INSERT INTO `banner` VALUES (2, 1, '//m.360buyimg.com/babel/jfs/t1/105674/25/4755/112040/5de8d0d8E05a0b6e2/911ada18a4daee7f.jpg!q70.jpg', 1, 1, '2019-12-15 11:16:57');
INSERT INTO `banner` VALUES (3, 1, '//m.360buyimg.com/babel/jfs/t1/105674/25/4755/112040/5de8d0d8E05a0b6e2/911ada18a4daee7f.jpg!q70.jpg', 1, 1, '2019-12-15 11:17:10');
INSERT INTO `banner` VALUES (4, 1, '//m.360buyimg.com/babel/jfs/t1/105674/25/4755/112040/5de8d0d8E05a0b6e2/911ada18a4daee7f.jpg!q70.jpg', 1, 1, '2019-12-15 11:17:19');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌名字',
  `status` int(2) NULL DEFAULT 0 COMMENT '在页面上是否展示的品牌；0:不展示；1:展示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL COMMENT '商品id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL COMMENT '商品id',
  `orderCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号code',
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价内容',
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '0差评，1好评',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `price` int(11) NOT NULL DEFAULT 0 COMMENT '商品售价',
  `linePrice` int(11) NOT NULL DEFAULT 0 COMMENT '商品划线价',
  `brandId` int(11) NULL DEFAULT 0 COMMENT '属于的品牌id',
  `brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `category1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '第一类目',
  `category2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '第二类目',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主图url',
  `details` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详情图url，多个以英文逗号分隔',
  `size1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格1，如：红色',
  `size2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格2，如：大',
  `source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '中国' COMMENT '货源，如：中国，美国，韩国',
  `store` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '怡博时尚店铺' COMMENT '来源店铺',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '华为 HUAWEI Mate20 X (5G) 7nm工艺5G旗舰芯片全面屏超大广角徕卡三摄8GB+256GB宝石蓝5G双模全', 3299, 3599, 0, '华为', '手机', '5G', '//m.360buyimg.com/babel/jfs/t1/105674/25/4755/112040/5de8d0d8E05a0b6e2/911ada18a4daee7f.jpg!q70.jpg', 'http://img20.360buyimg.com/vc/jfs/t1/104789/27/5841/348528/5def749dEbd0e7e40/03204d31a6bef1e4.jpg,http://img20.360buyimg.com/vc/jfs/t1/103516/34/5720/227863/5def749dE55178e1e/46eb043bc2ac1dee.jpg,http://img20.360buyimg.com/vc/jfs/t1/89923/19/5563/1902109/5dee1fb7Eb0998938/f447229d9be2b13d.jpg,http://img20.360buyimg.com/vc/jfs/t1/102249/4/5585/2457244/5dee1fb8E89bcaf3a/45942186b3ce7cd3.jpg', '32G', '蓝色', '中国', '怡博时尚店铺');
INSERT INTO `goods` VALUES (2, '三星 Galaxy A90 5G（SM-A9080）全息黑 疾速5G 骁龙855 8GB+128GB 全息3D格纹设计 双卡双待手机', 3999, 4399, 0, '三星', '手机', '5G', '//img14.360buyimg.com/n1/s450x450_jfs/t1/49042/15/15820/99252/5dcd1eb3E59798b1b/bb63f1f9baa33e7f.jpg', '//img30.360buyimg.com/sku/jfs/t1/53973/38/13578/897689/5da95724E06f25c9f/03d5667e9b8932f8.jpg,//img30.360buyimg.com/sku/jfs/t1/66204/11/13165/81528/5da962cfEf5148d23/cd7c6536f0958c8b.jpg', '126G', '黑色', '中国', '怡博时尚店铺');
INSERT INTO `goods` VALUES (3, 'vivo iQOO Neo 855竞速版 8GB+128GB冰岛极光 骁龙855Plus 33W超快闪充 4500mAh大电池游戏手机 全网通4G手机', 2598, 2999, 0, 'viovo', '手机', '5G', '//img13.360buyimg.com/n1/s450x450_jfs/t1/104938/3/4382/293302/5de79526Ed0dc1128/98172f958de06eec.jpg', '//img10.360buyimg.com/imgzone/jfs/t1/102439/9/4793/202355/5de8d06fEa606f43a/a378a7e582595d95.jpg,//img10.360buyimg.com/imgzone/jfs/t1/88715/6/4501/632877/5de78d7fE930cdf5f/3ae63fde30f02574.jpg,//img10.360buyimg.com/imgzone/jfs/t1/105117/25/4541/158425/5de78d65E77df918c/0c6966e8d2592960.jpg', '64G', '炫彩蓝', '中国', '怡博时尚店铺');
INSERT INTO `goods` VALUES (5, '英氏童装儿童羽绒服轻薄男女宝羽绒服保暖外套多色 188Ayh6814 红色 188A-yh-6814 90cm(建议1-2岁)', 359, 399, 0, '英氏', '鞋服', '上衣', '//img10.360buyimg.com/n1/jfs/t1/73149/18/13568/144971/5dad5e21E4af26ca5/c2f7686f70610018.jpg', 'http://img30.360buyimg.com/popWaterMark/jfs/t29761/254/1185302174/307225/5f54385f/5cd8fcf4Nb95ea6e7.jpg,http://img30.360buyimg.com/popWaterMark/jfs/t11056/226/2773726396/83218/f343c84e/5cd8fcf4Nc1e27831.jpg,http://img30.360buyimg.com/popWaterMark/jfs/t11086/226/2766008567/101084/d688d323/5cd8fcf4N48d81a99.jpg,http://img30.360buyimg.com/popWaterMark/jfs/t28735/253/1202084374/130151/b77c6fab/5cd8fcf5Nd0207eb5.jpg,http://img30.360buyimg.com/popWaterMark/jfs/t28588/235/1196673613/186277/4e6c9eb/5cd8fcf5N67643d88.jpg', '红色', '小', '中国', '怡博时尚店铺');

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logisticsCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当前物流节点的描述',
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当前时间节点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `sum` int(10) NULL DEFAULT 1 COMMENT '购买几个',
  `gid` int(11) NOT NULL COMMENT '购买的商品id',
  `gprice` int(11) NOT NULL COMMENT '商品金额',
  `gname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买的商品名称',
  `payWay` int(3) NOT NULL DEFAULT 0 COMMENT '支付方式',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'O100' COMMENT '订单状态',
  `logisticsCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '物流单号',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取消备注或者是下单备注',
  `createTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建订单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '123456', 2, 1, 2, 1000, '撒旦法的是', 1, 'O103', '0', '尽快发货', '2019-12-15 15:30:21');
INSERT INTO `order` VALUES (2, '201576405538155', 13, 1, 1, 3299, '华为 HUAWEI Mate20 X (5G) 7nm工艺5G旗舰芯片全面屏超大广角徕卡三摄8GB+256GB宝石蓝5G双模全', 0, 'O102', '0', NULL, '2019-12-15 18:25:38');
INSERT INTO `order` VALUES (3, '201576412348807', 13, 1, 1, 3299, '华为 HUAWEI Mate20 X (5G) 7nm工艺5G旗舰芯片全面屏超大广角徕卡三摄8GB+256GB宝石蓝5G双模全', 0, 'O101', '0', NULL, '2019-12-15 20:19:08');
INSERT INTO `order` VALUES (4, '201576412376326', 13, 3, 1, 3299, '华为 HUAWEI Mate20 X (5G) 7nm工艺5G旗舰芯片全面屏超大广角徕卡三摄8GB+256GB宝石蓝5G双模全', 0, 'O100', '0', NULL, '2019-12-15 20:19:36');
INSERT INTO `order` VALUES (5, '201576415188524', 13, 2, 5, 359, '英氏童装儿童羽绒服轻薄男女宝羽绒服保暖外套多色 188Ayh6814 红色 188A-yh-6814 90cm(建议1-2岁)', 0, 'O103', '0', NULL, '2019-12-15 21:06:28');
INSERT INTO `order` VALUES (6, '201582611406885', 2, 1, 2, 3999, '三星 Galaxy A90 5G（SM-A9080）全息黑 疾速5G 骁龙855 8GB+128GB 全息3D格纹设计 双卡双待手机', 0, 'O101', '0', NULL, '2020-02-25 14:16:46');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省',
  `cityCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 991 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES (496, '110000', '北京', '110101', '东城区');
INSERT INTO `provinces` VALUES (497, '110000', '北京', '110102', '西城区');
INSERT INTO `provinces` VALUES (498, '110000', '北京', '110103', '崇文区');
INSERT INTO `provinces` VALUES (499, '110000', '北京', '110104', '宣武区');
INSERT INTO `provinces` VALUES (500, '110000', '北京', '110105', '朝阳区');
INSERT INTO `provinces` VALUES (501, '110000', '北京', '110106', '丰台区');
INSERT INTO `provinces` VALUES (502, '110000', '北京', '110107', '石景山区');
INSERT INTO `provinces` VALUES (503, '110000', '北京', '110108', '海淀区');
INSERT INTO `provinces` VALUES (504, '110000', '北京', '110109', '门头沟区');
INSERT INTO `provinces` VALUES (505, '110000', '北京', '110111', '房山区');
INSERT INTO `provinces` VALUES (506, '110000', '北京', '110112', '通州区');
INSERT INTO `provinces` VALUES (507, '110000', '北京', '110113', '顺义区');
INSERT INTO `provinces` VALUES (508, '110000', '北京', '110114', '昌平区');
INSERT INTO `provinces` VALUES (509, '110000', '北京', '110115', '大兴区');
INSERT INTO `provinces` VALUES (510, '110000', '北京', '110116', '怀柔区');
INSERT INTO `provinces` VALUES (511, '110000', '北京', '110117', '平谷区');
INSERT INTO `provinces` VALUES (512, '110000', '北京', '110228', '密云区');
INSERT INTO `provinces` VALUES (513, '110000', '北京', '110229', '延庆区');
INSERT INTO `provinces` VALUES (514, '110000', '北京', '110230', '其它区');
INSERT INTO `provinces` VALUES (515, '120000', '天津', '120101', '和平区');
INSERT INTO `provinces` VALUES (516, '120000', '天津', '120102', '河东区');
INSERT INTO `provinces` VALUES (517, '120000', '天津', '120103', '河西区');
INSERT INTO `provinces` VALUES (518, '120000', '天津', '120104', '南开区');
INSERT INTO `provinces` VALUES (519, '120000', '天津', '120105', '河北区');
INSERT INTO `provinces` VALUES (520, '120000', '天津', '120106', '红桥区');
INSERT INTO `provinces` VALUES (521, '120000', '天津', '120107', '塘沽区');
INSERT INTO `provinces` VALUES (522, '120000', '天津', '120108', '汉沽区');
INSERT INTO `provinces` VALUES (523, '120000', '天津', '120109', '大港区');
INSERT INTO `provinces` VALUES (524, '120000', '天津', '120110', '东丽区');
INSERT INTO `provinces` VALUES (525, '120000', '天津', '120111', '西青区');
INSERT INTO `provinces` VALUES (526, '120000', '天津', '120112', '津南区');
INSERT INTO `provinces` VALUES (527, '120000', '天津', '120113', '北辰区');
INSERT INTO `provinces` VALUES (528, '120000', '天津', '120114', '武清区');
INSERT INTO `provinces` VALUES (529, '120000', '天津', '120115', '宝坻区');
INSERT INTO `provinces` VALUES (530, '120000', '天津', '120116', '滨海新区');
INSERT INTO `provinces` VALUES (531, '120000', '天津', '120221', '宁河区');
INSERT INTO `provinces` VALUES (532, '120000', '天津', '120223', '静海区');
INSERT INTO `provinces` VALUES (533, '120000', '天津', '120225', '蓟州区');
INSERT INTO `provinces` VALUES (534, '120000', '天津', '120226', '其它区');
INSERT INTO `provinces` VALUES (535, '130000', '河北', '130100', '石家庄');
INSERT INTO `provinces` VALUES (536, '130000', '河北', '130200', '唐山');
INSERT INTO `provinces` VALUES (537, '130000', '河北', '130300', '秦皇岛');
INSERT INTO `provinces` VALUES (538, '130000', '河北', '130400', '邯郸');
INSERT INTO `provinces` VALUES (539, '130000', '河北', '130500', '邢台');
INSERT INTO `provinces` VALUES (540, '130000', '河北', '130600', '保定');
INSERT INTO `provinces` VALUES (541, '130000', '河北', '130700', '张家口');
INSERT INTO `provinces` VALUES (542, '130000', '河北', '130800', '承德');
INSERT INTO `provinces` VALUES (543, '130000', '河北', '130900', '沧州');
INSERT INTO `provinces` VALUES (544, '130000', '河北', '131000', '廊坊');
INSERT INTO `provinces` VALUES (545, '130000', '河北', '131100', '衡水');
INSERT INTO `provinces` VALUES (546, '140000', '山西', '140100', '太原');
INSERT INTO `provinces` VALUES (547, '140000', '山西', '140200', '大同');
INSERT INTO `provinces` VALUES (548, '140000', '山西', '140300', '阳泉');
INSERT INTO `provinces` VALUES (549, '140000', '山西', '140400', '长治');
INSERT INTO `provinces` VALUES (550, '140000', '山西', '140500', '晋城');
INSERT INTO `provinces` VALUES (551, '140000', '山西', '140600', '朔州');
INSERT INTO `provinces` VALUES (552, '140000', '山西', '140700', '晋中');
INSERT INTO `provinces` VALUES (553, '140000', '山西', '140800', '运城');
INSERT INTO `provinces` VALUES (554, '140000', '山西', '140900', '忻州');
INSERT INTO `provinces` VALUES (555, '140000', '山西', '141000', '临汾');
INSERT INTO `provinces` VALUES (556, '140000', '山西', '141100', '吕梁');
INSERT INTO `provinces` VALUES (557, '150000', '内蒙古', '150100', '呼和浩特');
INSERT INTO `provinces` VALUES (558, '150000', '内蒙古', '150200', '包头');
INSERT INTO `provinces` VALUES (559, '150000', '内蒙古', '150300', '乌海');
INSERT INTO `provinces` VALUES (560, '150000', '内蒙古', '150400', '赤峰');
INSERT INTO `provinces` VALUES (561, '150000', '内蒙古', '150500', '通辽');
INSERT INTO `provinces` VALUES (562, '150000', '内蒙古', '150600', '鄂尔多斯');
INSERT INTO `provinces` VALUES (563, '150000', '内蒙古', '150700', '呼伦贝尔');
INSERT INTO `provinces` VALUES (564, '150000', '内蒙古', '150800', '巴彦淖尔');
INSERT INTO `provinces` VALUES (565, '150000', '内蒙古', '150900', '乌兰察布');
INSERT INTO `provinces` VALUES (566, '150000', '内蒙古', '152200', '兴安');
INSERT INTO `provinces` VALUES (567, '150000', '内蒙古', '152500', '锡盟');
INSERT INTO `provinces` VALUES (568, '150000', '内蒙古', '152900', '阿拉善');
INSERT INTO `provinces` VALUES (569, '210000', '辽宁', '210100', '沈阳');
INSERT INTO `provinces` VALUES (570, '210000', '辽宁', '210200', '大连');
INSERT INTO `provinces` VALUES (571, '210000', '辽宁', '210300', '鞍山');
INSERT INTO `provinces` VALUES (572, '210000', '辽宁', '210400', '抚顺');
INSERT INTO `provinces` VALUES (573, '210000', '辽宁', '210500', '本溪');
INSERT INTO `provinces` VALUES (574, '210000', '辽宁', '210600', '丹东');
INSERT INTO `provinces` VALUES (575, '210000', '辽宁', '210700', '锦州');
INSERT INTO `provinces` VALUES (576, '210000', '辽宁', '210800', '营口');
INSERT INTO `provinces` VALUES (577, '210000', '辽宁', '210900', '阜新');
INSERT INTO `provinces` VALUES (578, '210000', '辽宁', '211000', '辽阳');
INSERT INTO `provinces` VALUES (579, '210000', '辽宁', '211100', '盘锦');
INSERT INTO `provinces` VALUES (580, '210000', '辽宁', '211200', '铁岭');
INSERT INTO `provinces` VALUES (581, '210000', '辽宁', '211300', '朝阳');
INSERT INTO `provinces` VALUES (582, '210000', '辽宁', '211400', '葫芦岛');
INSERT INTO `provinces` VALUES (583, '220000', '吉林', '220100', '长春');
INSERT INTO `provinces` VALUES (584, '220000', '吉林', '220200', '吉林');
INSERT INTO `provinces` VALUES (585, '220000', '吉林', '220300', '四平');
INSERT INTO `provinces` VALUES (586, '220000', '吉林', '220400', '辽源');
INSERT INTO `provinces` VALUES (587, '220000', '吉林', '220500', '通化');
INSERT INTO `provinces` VALUES (588, '220000', '吉林', '220600', '白山');
INSERT INTO `provinces` VALUES (589, '220000', '吉林', '220700', '松原');
INSERT INTO `provinces` VALUES (590, '220000', '吉林', '220800', '白城');
INSERT INTO `provinces` VALUES (591, '220000', '吉林', '222400', '延边');
INSERT INTO `provinces` VALUES (592, '230000', '黑龙江', '230100', '哈尔滨');
INSERT INTO `provinces` VALUES (593, '230000', '黑龙江', '230200', '齐齐哈尔');
INSERT INTO `provinces` VALUES (594, '230000', '黑龙江', '230300', '鸡西');
INSERT INTO `provinces` VALUES (595, '230000', '黑龙江', '230400', '鹤岗');
INSERT INTO `provinces` VALUES (596, '230000', '黑龙江', '230500', '双鸭山');
INSERT INTO `provinces` VALUES (597, '230000', '黑龙江', '230600', '大庆');
INSERT INTO `provinces` VALUES (598, '230000', '黑龙江', '230700', '伊春');
INSERT INTO `provinces` VALUES (599, '230000', '黑龙江', '230800', '佳木斯');
INSERT INTO `provinces` VALUES (600, '230000', '黑龙江', '230900', '七台河');
INSERT INTO `provinces` VALUES (601, '230000', '黑龙江', '231000', '牡丹江');
INSERT INTO `provinces` VALUES (602, '230000', '黑龙江', '231100', '黑河');
INSERT INTO `provinces` VALUES (603, '230000', '黑龙江', '231200', '绥化');
INSERT INTO `provinces` VALUES (604, '230000', '黑龙江', '232700', '大兴安岭');
INSERT INTO `provinces` VALUES (605, '310000', '上海', '310101', '黄浦区');
INSERT INTO `provinces` VALUES (606, '310000', '上海', '310103', '卢湾区');
INSERT INTO `provinces` VALUES (607, '310000', '上海', '310104', '徐汇区');
INSERT INTO `provinces` VALUES (608, '310000', '上海', '310105', '长宁区');
INSERT INTO `provinces` VALUES (609, '310000', '上海', '310106', '静安区');
INSERT INTO `provinces` VALUES (610, '310000', '上海', '310107', '普陀区');
INSERT INTO `provinces` VALUES (611, '310000', '上海', '310108', '闸北区');
INSERT INTO `provinces` VALUES (612, '310000', '上海', '310109', '虹口区');
INSERT INTO `provinces` VALUES (613, '310000', '上海', '310110', '杨浦区');
INSERT INTO `provinces` VALUES (614, '310000', '上海', '310112', '闵行区');
INSERT INTO `provinces` VALUES (615, '310000', '上海', '310113', '宝山区');
INSERT INTO `provinces` VALUES (616, '310000', '上海', '310114', '嘉定区');
INSERT INTO `provinces` VALUES (617, '310000', '上海', '310115', '浦东新区');
INSERT INTO `provinces` VALUES (618, '310000', '上海', '310116', '金山区');
INSERT INTO `provinces` VALUES (619, '310000', '上海', '310117', '松江区');
INSERT INTO `provinces` VALUES (620, '310000', '上海', '310118', '青浦区');
INSERT INTO `provinces` VALUES (621, '310000', '上海', '310119', '南汇区');
INSERT INTO `provinces` VALUES (622, '310000', '上海', '310120', '奉贤区');
INSERT INTO `provinces` VALUES (623, '310000', '上海', '310152', '川沙区');
INSERT INTO `provinces` VALUES (624, '310000', '上海', '310230', '崇明区');
INSERT INTO `provinces` VALUES (625, '310000', '上海', '310231', '其它区');
INSERT INTO `provinces` VALUES (626, '320000', '江苏', '320100', '南京');
INSERT INTO `provinces` VALUES (627, '320000', '江苏', '320200', '无锡');
INSERT INTO `provinces` VALUES (628, '320000', '江苏', '320300', '徐州');
INSERT INTO `provinces` VALUES (629, '320000', '江苏', '320400', '常州');
INSERT INTO `provinces` VALUES (630, '320000', '江苏', '320500', '苏州');
INSERT INTO `provinces` VALUES (631, '320000', '江苏', '320600', '南通');
INSERT INTO `provinces` VALUES (632, '320000', '江苏', '320700', '连云港');
INSERT INTO `provinces` VALUES (633, '320000', '江苏', '320800', '淮安');
INSERT INTO `provinces` VALUES (634, '320000', '江苏', '320900', '盐城');
INSERT INTO `provinces` VALUES (635, '320000', '江苏', '321000', '扬州');
INSERT INTO `provinces` VALUES (636, '320000', '江苏', '321100', '镇江');
INSERT INTO `provinces` VALUES (637, '320000', '江苏', '321200', '泰州');
INSERT INTO `provinces` VALUES (638, '320000', '江苏', '321300', '宿迁');
INSERT INTO `provinces` VALUES (639, '330000', '浙江', '330100', '杭州');
INSERT INTO `provinces` VALUES (640, '330000', '浙江', '330200', '宁波');
INSERT INTO `provinces` VALUES (641, '330000', '浙江', '330300', '温州');
INSERT INTO `provinces` VALUES (642, '330000', '浙江', '330400', '嘉兴');
INSERT INTO `provinces` VALUES (643, '330000', '浙江', '330500', '湖州');
INSERT INTO `provinces` VALUES (644, '330000', '浙江', '330600', '绍兴');
INSERT INTO `provinces` VALUES (645, '330000', '浙江', '330700', '金华');
INSERT INTO `provinces` VALUES (646, '330000', '浙江', '330800', '衢州');
INSERT INTO `provinces` VALUES (647, '330000', '浙江', '330900', '舟山');
INSERT INTO `provinces` VALUES (648, '330000', '浙江', '331000', '台州');
INSERT INTO `provinces` VALUES (649, '330000', '浙江', '331100', '丽水');
INSERT INTO `provinces` VALUES (650, '340000', '安徽', '340100', '合肥');
INSERT INTO `provinces` VALUES (651, '340000', '安徽', '340200', '芜湖');
INSERT INTO `provinces` VALUES (652, '340000', '安徽', '340300', '蚌埠');
INSERT INTO `provinces` VALUES (653, '340000', '安徽', '340400', '淮南');
INSERT INTO `provinces` VALUES (654, '340000', '安徽', '340500', '马鞍山');
INSERT INTO `provinces` VALUES (655, '340000', '安徽', '340600', '淮北');
INSERT INTO `provinces` VALUES (656, '340000', '安徽', '340700', '铜陵');
INSERT INTO `provinces` VALUES (657, '340000', '安徽', '340800', '安庆');
INSERT INTO `provinces` VALUES (658, '340000', '安徽', '341000', '黄山');
INSERT INTO `provinces` VALUES (659, '340000', '安徽', '341100', '滁州');
INSERT INTO `provinces` VALUES (660, '340000', '安徽', '341200', '阜阳');
INSERT INTO `provinces` VALUES (661, '340000', '安徽', '341300', '宿州');
INSERT INTO `provinces` VALUES (662, '340000', '安徽', '341500', '六安');
INSERT INTO `provinces` VALUES (663, '340000', '安徽', '341600', '亳州');
INSERT INTO `provinces` VALUES (664, '340000', '安徽', '341700', '池州');
INSERT INTO `provinces` VALUES (665, '340000', '安徽', '341800', '宣城');
INSERT INTO `provinces` VALUES (666, '350000', '福建', '350100', '福州');
INSERT INTO `provinces` VALUES (667, '350000', '福建', '350200', '厦门');
INSERT INTO `provinces` VALUES (668, '350000', '福建', '350300', '莆田');
INSERT INTO `provinces` VALUES (669, '350000', '福建', '350400', '三明');
INSERT INTO `provinces` VALUES (670, '350000', '福建', '350500', '泉州');
INSERT INTO `provinces` VALUES (671, '350000', '福建', '350600', '漳州');
INSERT INTO `provinces` VALUES (672, '350000', '福建', '350700', '南平');
INSERT INTO `provinces` VALUES (673, '350000', '福建', '350800', '龙岩');
INSERT INTO `provinces` VALUES (674, '350000', '福建', '350900', '宁德');
INSERT INTO `provinces` VALUES (675, '360000', '江西', '360100', '南昌');
INSERT INTO `provinces` VALUES (676, '360000', '江西', '360200', '景德镇');
INSERT INTO `provinces` VALUES (677, '360000', '江西', '360300', '萍乡');
INSERT INTO `provinces` VALUES (678, '360000', '江西', '360400', '九江');
INSERT INTO `provinces` VALUES (679, '360000', '江西', '360500', '新余');
INSERT INTO `provinces` VALUES (680, '360000', '江西', '360600', '鹰潭');
INSERT INTO `provinces` VALUES (681, '360000', '江西', '360700', '赣州');
INSERT INTO `provinces` VALUES (682, '360000', '江西', '360800', '吉安');
INSERT INTO `provinces` VALUES (683, '360000', '江西', '360900', '宜春');
INSERT INTO `provinces` VALUES (684, '360000', '江西', '361000', '抚州');
INSERT INTO `provinces` VALUES (685, '360000', '江西', '361100', '上饶');
INSERT INTO `provinces` VALUES (686, '370000', '山东', '370100', '济南');
INSERT INTO `provinces` VALUES (687, '370000', '山东', '370200', '青岛');
INSERT INTO `provinces` VALUES (688, '370000', '山东', '370300', '淄博');
INSERT INTO `provinces` VALUES (689, '370000', '山东', '370400', '枣庄');
INSERT INTO `provinces` VALUES (690, '370000', '山东', '370500', '东营');
INSERT INTO `provinces` VALUES (691, '370000', '山东', '370600', '烟台');
INSERT INTO `provinces` VALUES (692, '370000', '山东', '370700', '潍坊');
INSERT INTO `provinces` VALUES (693, '370000', '山东', '370800', '济宁');
INSERT INTO `provinces` VALUES (694, '370000', '山东', '370900', '泰安');
INSERT INTO `provinces` VALUES (695, '370000', '山东', '371000', '威海');
INSERT INTO `provinces` VALUES (696, '370000', '山东', '371100', '日照');
INSERT INTO `provinces` VALUES (697, '370000', '山东', '371200', '莱芜');
INSERT INTO `provinces` VALUES (698, '370000', '山东', '371300', '临沂');
INSERT INTO `provinces` VALUES (699, '370000', '山东', '371400', '德州');
INSERT INTO `provinces` VALUES (700, '370000', '山东', '371500', '聊城');
INSERT INTO `provinces` VALUES (701, '370000', '山东', '371600', '滨州');
INSERT INTO `provinces` VALUES (702, '370000', '山东', '371700', '菏泽');
INSERT INTO `provinces` VALUES (703, '410000', '河南', '410100', '郑州');
INSERT INTO `provinces` VALUES (704, '410000', '河南', '410200', '开封');
INSERT INTO `provinces` VALUES (705, '410000', '河南', '410300', '洛阳');
INSERT INTO `provinces` VALUES (706, '410000', '河南', '410400', '平顶山');
INSERT INTO `provinces` VALUES (707, '410000', '河南', '410500', '安阳');
INSERT INTO `provinces` VALUES (708, '410000', '河南', '410600', '鹤壁');
INSERT INTO `provinces` VALUES (709, '410000', '河南', '410700', '新乡');
INSERT INTO `provinces` VALUES (710, '410000', '河南', '410800', '焦作');
INSERT INTO `provinces` VALUES (711, '410000', '河南', '410881', '济源');
INSERT INTO `provinces` VALUES (712, '410000', '河南', '410900', '濮阳');
INSERT INTO `provinces` VALUES (713, '410000', '河南', '411000', '许昌');
INSERT INTO `provinces` VALUES (714, '410000', '河南', '411100', '漯河');
INSERT INTO `provinces` VALUES (715, '410000', '河南', '411200', '三门峡');
INSERT INTO `provinces` VALUES (716, '410000', '河南', '411300', '南阳');
INSERT INTO `provinces` VALUES (717, '410000', '河南', '411400', '商丘');
INSERT INTO `provinces` VALUES (718, '410000', '河南', '411500', '信阳');
INSERT INTO `provinces` VALUES (719, '410000', '河南', '411600', '周口');
INSERT INTO `provinces` VALUES (720, '410000', '河南', '411700', '驻马店');
INSERT INTO `provinces` VALUES (721, '420000', '湖北', '420100', '武汉');
INSERT INTO `provinces` VALUES (722, '420000', '湖北', '420200', '黄石');
INSERT INTO `provinces` VALUES (723, '420000', '湖北', '420300', '十堰');
INSERT INTO `provinces` VALUES (724, '420000', '湖北', '420500', '宜昌');
INSERT INTO `provinces` VALUES (725, '420000', '湖北', '420600', '襄阳');
INSERT INTO `provinces` VALUES (726, '420000', '湖北', '420700', '鄂州');
INSERT INTO `provinces` VALUES (727, '420000', '湖北', '420800', '荆门');
INSERT INTO `provinces` VALUES (728, '420000', '湖北', '420900', '孝感');
INSERT INTO `provinces` VALUES (729, '420000', '湖北', '421000', '荆州');
INSERT INTO `provinces` VALUES (730, '420000', '湖北', '421100', '黄冈');
INSERT INTO `provinces` VALUES (731, '420000', '湖北', '421200', '咸宁');
INSERT INTO `provinces` VALUES (732, '420000', '湖北', '421300', '随州');
INSERT INTO `provinces` VALUES (733, '420000', '湖北', '422800', '恩施');
INSERT INTO `provinces` VALUES (734, '420000', '湖北', '429004', '仙桃');
INSERT INTO `provinces` VALUES (735, '420000', '湖北', '429005', '潜江');
INSERT INTO `provinces` VALUES (736, '420000', '湖北', '429006', '天门');
INSERT INTO `provinces` VALUES (737, '420000', '湖北', '429021', '神农架');
INSERT INTO `provinces` VALUES (738, '430000', '湖南', '430100', '长沙');
INSERT INTO `provinces` VALUES (739, '430000', '湖南', '430200', '株洲');
INSERT INTO `provinces` VALUES (740, '430000', '湖南', '430300', '湘潭');
INSERT INTO `provinces` VALUES (741, '430000', '湖南', '430400', '衡阳');
INSERT INTO `provinces` VALUES (742, '430000', '湖南', '430500', '邵阳');
INSERT INTO `provinces` VALUES (743, '430000', '湖南', '430600', '岳阳');
INSERT INTO `provinces` VALUES (744, '430000', '湖南', '430700', '常德');
INSERT INTO `provinces` VALUES (745, '430000', '湖南', '430800', '张家界');
INSERT INTO `provinces` VALUES (746, '430000', '湖南', '430900', '益阳');
INSERT INTO `provinces` VALUES (747, '430000', '湖南', '431000', '郴州');
INSERT INTO `provinces` VALUES (748, '430000', '湖南', '431100', '永州');
INSERT INTO `provinces` VALUES (749, '430000', '湖南', '431200', '怀化');
INSERT INTO `provinces` VALUES (750, '430000', '湖南', '431300', '娄底');
INSERT INTO `provinces` VALUES (751, '430000', '湖南', '433100', '湘西');
INSERT INTO `provinces` VALUES (752, '440000', '广东', '440100', '广州');
INSERT INTO `provinces` VALUES (753, '440000', '广东', '440200', '韶关');
INSERT INTO `provinces` VALUES (754, '440000', '广东', '440300', '深圳');
INSERT INTO `provinces` VALUES (755, '440000', '广东', '440400', '珠海');
INSERT INTO `provinces` VALUES (756, '440000', '广东', '440500', '汕头');
INSERT INTO `provinces` VALUES (757, '440000', '广东', '440600', '佛山');
INSERT INTO `provinces` VALUES (758, '440000', '广东', '440700', '江门');
INSERT INTO `provinces` VALUES (759, '440000', '广东', '440800', '湛江');
INSERT INTO `provinces` VALUES (760, '440000', '广东', '440900', '茂名');
INSERT INTO `provinces` VALUES (761, '440000', '广东', '441200', '肇庆');
INSERT INTO `provinces` VALUES (762, '440000', '广东', '441300', '惠州');
INSERT INTO `provinces` VALUES (763, '440000', '广东', '441400', '梅州');
INSERT INTO `provinces` VALUES (764, '440000', '广东', '441500', '汕尾');
INSERT INTO `provinces` VALUES (765, '440000', '广东', '441600', '河源');
INSERT INTO `provinces` VALUES (766, '440000', '广东', '441700', '阳江');
INSERT INTO `provinces` VALUES (767, '440000', '广东', '441800', '清远');
INSERT INTO `provinces` VALUES (768, '440000', '广东', '441900', '东莞');
INSERT INTO `provinces` VALUES (769, '440000', '广东', '442000', '中山');
INSERT INTO `provinces` VALUES (770, '440000', '广东', '442101', '东沙');
INSERT INTO `provinces` VALUES (771, '440000', '广东', '445100', '潮州');
INSERT INTO `provinces` VALUES (772, '440000', '广东', '445200', '揭阳');
INSERT INTO `provinces` VALUES (773, '440000', '广东', '445300', '云浮');
INSERT INTO `provinces` VALUES (774, '450000', '广西', '450100', '南宁');
INSERT INTO `provinces` VALUES (775, '450000', '广西', '450200', '柳州');
INSERT INTO `provinces` VALUES (776, '450000', '广西', '450300', '桂林');
INSERT INTO `provinces` VALUES (777, '450000', '广西', '450400', '梧州');
INSERT INTO `provinces` VALUES (778, '450000', '广西', '450500', '北海');
INSERT INTO `provinces` VALUES (779, '450000', '广西', '450600', '防城港');
INSERT INTO `provinces` VALUES (780, '450000', '广西', '450700', '钦州');
INSERT INTO `provinces` VALUES (781, '450000', '广西', '450800', '贵港');
INSERT INTO `provinces` VALUES (782, '450000', '广西', '450900', '玉林');
INSERT INTO `provinces` VALUES (783, '450000', '广西', '451000', '百色');
INSERT INTO `provinces` VALUES (784, '450000', '广西', '451100', '贺州');
INSERT INTO `provinces` VALUES (785, '450000', '广西', '451200', '河池');
INSERT INTO `provinces` VALUES (786, '450000', '广西', '451300', '来宾');
INSERT INTO `provinces` VALUES (787, '450000', '广西', '451400', '崇左');
INSERT INTO `provinces` VALUES (788, '460000', '海南', '460100', '海口');
INSERT INTO `provinces` VALUES (789, '460000', '海南', '460200', '三亚');
INSERT INTO `provinces` VALUES (790, '460000', '海南', '460300', '三沙');
INSERT INTO `provinces` VALUES (791, '460000', '海南', '469001', '五指山');
INSERT INTO `provinces` VALUES (792, '460000', '海南', '469002', '琼海');
INSERT INTO `provinces` VALUES (793, '460000', '海南', '469003', '儋州');
INSERT INTO `provinces` VALUES (794, '460000', '海南', '469005', '文昌');
INSERT INTO `provinces` VALUES (795, '460000', '海南', '469006', '万宁');
INSERT INTO `provinces` VALUES (796, '460000', '海南', '469007', '东方');
INSERT INTO `provinces` VALUES (797, '460000', '海南', '469025', '定安县');
INSERT INTO `provinces` VALUES (798, '460000', '海南', '469026', '屯昌县');
INSERT INTO `provinces` VALUES (799, '460000', '海南', '469027', '澄迈县');
INSERT INTO `provinces` VALUES (800, '460000', '海南', '469028', '临高县');
INSERT INTO `provinces` VALUES (801, '460000', '海南', '469030', '白沙县');
INSERT INTO `provinces` VALUES (802, '460000', '海南', '469031', '昌江县');
INSERT INTO `provinces` VALUES (803, '460000', '海南', '469033', '乐东县');
INSERT INTO `provinces` VALUES (804, '460000', '海南', '469034', '陵水县');
INSERT INTO `provinces` VALUES (805, '460000', '海南', '469035', '保亭县');
INSERT INTO `provinces` VALUES (806, '460000', '海南', '469036', '琼中县');
INSERT INTO `provinces` VALUES (807, '460000', '海南', '469037', '西沙群岛');
INSERT INTO `provinces` VALUES (808, '460000', '海南', '469038', '南沙群岛');
INSERT INTO `provinces` VALUES (809, '460000', '海南', '469039', '中沙群岛');
INSERT INTO `provinces` VALUES (810, '500000', '重庆', '500101', '万州区');
INSERT INTO `provinces` VALUES (811, '500000', '重庆', '500102', '涪陵区');
INSERT INTO `provinces` VALUES (812, '500000', '重庆', '500103', '渝中区');
INSERT INTO `provinces` VALUES (813, '500000', '重庆', '500104', '大渡口区');
INSERT INTO `provinces` VALUES (814, '500000', '重庆', '500105', '江北区');
INSERT INTO `provinces` VALUES (815, '500000', '重庆', '500106', '沙坪坝区');
INSERT INTO `provinces` VALUES (816, '500000', '重庆', '500107', '九龙坡区');
INSERT INTO `provinces` VALUES (817, '500000', '重庆', '500108', '南岸区');
INSERT INTO `provinces` VALUES (818, '500000', '重庆', '500109', '北碚区');
INSERT INTO `provinces` VALUES (819, '500000', '重庆', '500110', '万盛区');
INSERT INTO `provinces` VALUES (820, '500000', '重庆', '500111', '双桥区');
INSERT INTO `provinces` VALUES (821, '500000', '重庆', '500112', '渝北区');
INSERT INTO `provinces` VALUES (822, '500000', '重庆', '500113', '巴南区');
INSERT INTO `provinces` VALUES (823, '500000', '重庆', '500114', '黔江区');
INSERT INTO `provinces` VALUES (824, '500000', '重庆', '500115', '长寿区');
INSERT INTO `provinces` VALUES (825, '500000', '重庆', '500222', '綦江区');
INSERT INTO `provinces` VALUES (826, '500000', '重庆', '500223', '潼南区');
INSERT INTO `provinces` VALUES (827, '500000', '重庆', '500224', '铜梁区');
INSERT INTO `provinces` VALUES (828, '500000', '重庆', '500225', '大足区');
INSERT INTO `provinces` VALUES (829, '500000', '重庆', '500226', '荣昌区');
INSERT INTO `provinces` VALUES (830, '500000', '重庆', '500227', '璧山区');
INSERT INTO `provinces` VALUES (831, '500000', '重庆', '500228', '梁平区');
INSERT INTO `provinces` VALUES (832, '500000', '重庆', '500229', '城口县');
INSERT INTO `provinces` VALUES (833, '500000', '重庆', '500230', '丰都县');
INSERT INTO `provinces` VALUES (834, '500000', '重庆', '500231', '垫江县');
INSERT INTO `provinces` VALUES (835, '500000', '重庆', '500232', '武隆区');
INSERT INTO `provinces` VALUES (836, '500000', '重庆', '500233', '忠县');
INSERT INTO `provinces` VALUES (837, '500000', '重庆', '500234', '开州区');
INSERT INTO `provinces` VALUES (838, '500000', '重庆', '500235', '云阳县');
INSERT INTO `provinces` VALUES (839, '500000', '重庆', '500236', '奉节县');
INSERT INTO `provinces` VALUES (840, '500000', '重庆', '500237', '巫山县');
INSERT INTO `provinces` VALUES (841, '500000', '重庆', '500238', '巫溪县');
INSERT INTO `provinces` VALUES (842, '500000', '重庆', '500240', '石柱县');
INSERT INTO `provinces` VALUES (843, '500000', '重庆', '500241', '秀山县');
INSERT INTO `provinces` VALUES (844, '500000', '重庆', '500242', '酉阳县');
INSERT INTO `provinces` VALUES (845, '500000', '重庆', '500243', '彭水县');
INSERT INTO `provinces` VALUES (846, '500000', '重庆', '500381', '江津区');
INSERT INTO `provinces` VALUES (847, '500000', '重庆', '500382', '合川区');
INSERT INTO `provinces` VALUES (848, '500000', '重庆', '500383', '永川区');
INSERT INTO `provinces` VALUES (849, '500000', '重庆', '500384', '南川区');
INSERT INTO `provinces` VALUES (850, '500000', '重庆', '500385', '其它区');
INSERT INTO `provinces` VALUES (851, '510000', '四川', '510100', '成都');
INSERT INTO `provinces` VALUES (852, '510000', '四川', '510300', '自贡');
INSERT INTO `provinces` VALUES (853, '510000', '四川', '510400', '攀枝花');
INSERT INTO `provinces` VALUES (854, '510000', '四川', '510500', '泸州');
INSERT INTO `provinces` VALUES (855, '510000', '四川', '510600', '德阳');
INSERT INTO `provinces` VALUES (856, '510000', '四川', '510700', '绵阳');
INSERT INTO `provinces` VALUES (857, '510000', '四川', '510800', '广元');
INSERT INTO `provinces` VALUES (858, '510000', '四川', '510900', '遂宁');
INSERT INTO `provinces` VALUES (859, '510000', '四川', '511000', '内江');
INSERT INTO `provinces` VALUES (860, '510000', '四川', '511100', '乐山');
INSERT INTO `provinces` VALUES (861, '510000', '四川', '511300', '南充');
INSERT INTO `provinces` VALUES (862, '510000', '四川', '511400', '眉山');
INSERT INTO `provinces` VALUES (863, '510000', '四川', '511500', '宜宾');
INSERT INTO `provinces` VALUES (864, '510000', '四川', '511600', '广安');
INSERT INTO `provinces` VALUES (865, '510000', '四川', '511700', '达州');
INSERT INTO `provinces` VALUES (866, '510000', '四川', '511800', '雅安');
INSERT INTO `provinces` VALUES (867, '510000', '四川', '511900', '巴中');
INSERT INTO `provinces` VALUES (868, '510000', '四川', '512000', '资阳');
INSERT INTO `provinces` VALUES (869, '510000', '四川', '513200', '阿坝');
INSERT INTO `provinces` VALUES (870, '510000', '四川', '513300', '甘孜');
INSERT INTO `provinces` VALUES (871, '510000', '四川', '513400', '凉山');
INSERT INTO `provinces` VALUES (872, '520000', '贵州', '520100', '贵阳');
INSERT INTO `provinces` VALUES (873, '520000', '贵州', '520200', '六盘水');
INSERT INTO `provinces` VALUES (874, '520000', '贵州', '520300', '遵义');
INSERT INTO `provinces` VALUES (875, '520000', '贵州', '520400', '安顺');
INSERT INTO `provinces` VALUES (876, '520000', '贵州', '522200', '铜仁');
INSERT INTO `provinces` VALUES (877, '520000', '贵州', '522300', '黔西南');
INSERT INTO `provinces` VALUES (878, '520000', '贵州', '522400', '毕节');
INSERT INTO `provinces` VALUES (879, '520000', '贵州', '522600', '黔东南');
INSERT INTO `provinces` VALUES (880, '520000', '贵州', '522700', '黔南');
INSERT INTO `provinces` VALUES (881, '530000', '云南', '530100', '昆明');
INSERT INTO `provinces` VALUES (882, '530000', '云南', '530300', '曲靖');
INSERT INTO `provinces` VALUES (883, '530000', '云南', '530400', '玉溪');
INSERT INTO `provinces` VALUES (884, '530000', '云南', '530500', '保山');
INSERT INTO `provinces` VALUES (885, '530000', '云南', '530600', '昭通');
INSERT INTO `provinces` VALUES (886, '530000', '云南', '530700', '丽江');
INSERT INTO `provinces` VALUES (887, '530000', '云南', '530800', '普洱');
INSERT INTO `provinces` VALUES (888, '530000', '云南', '530900', '临沧');
INSERT INTO `provinces` VALUES (889, '530000', '云南', '532300', '楚雄');
INSERT INTO `provinces` VALUES (890, '530000', '云南', '532500', '红河');
INSERT INTO `provinces` VALUES (891, '530000', '云南', '532600', '文山');
INSERT INTO `provinces` VALUES (892, '530000', '云南', '532800', '西双版纳');
INSERT INTO `provinces` VALUES (893, '530000', '云南', '532900', '大理');
INSERT INTO `provinces` VALUES (894, '530000', '云南', '533100', '德宏');
INSERT INTO `provinces` VALUES (895, '530000', '云南', '533300', '怒江');
INSERT INTO `provinces` VALUES (896, '530000', '云南', '533400', '迪庆');
INSERT INTO `provinces` VALUES (897, '540000', '西藏', '540100', '拉萨');
INSERT INTO `provinces` VALUES (898, '540000', '西藏', '542100', '昌都');
INSERT INTO `provinces` VALUES (899, '540000', '西藏', '542200', '山南');
INSERT INTO `provinces` VALUES (900, '540000', '西藏', '542300', '日喀则');
INSERT INTO `provinces` VALUES (901, '540000', '西藏', '542400', '那曲');
INSERT INTO `provinces` VALUES (902, '540000', '西藏', '542500', '阿里');
INSERT INTO `provinces` VALUES (903, '540000', '西藏', '542600', '林芝');
INSERT INTO `provinces` VALUES (904, '610000', '陕西', '610100', '西安');
INSERT INTO `provinces` VALUES (905, '610000', '陕西', '610200', '铜川');
INSERT INTO `provinces` VALUES (906, '610000', '陕西', '610300', '宝鸡');
INSERT INTO `provinces` VALUES (907, '610000', '陕西', '610400', '咸阳');
INSERT INTO `provinces` VALUES (908, '610000', '陕西', '610500', '渭南');
INSERT INTO `provinces` VALUES (909, '610000', '陕西', '610600', '延安');
INSERT INTO `provinces` VALUES (910, '610000', '陕西', '610700', '汉中');
INSERT INTO `provinces` VALUES (911, '610000', '陕西', '610800', '榆林');
INSERT INTO `provinces` VALUES (912, '610000', '陕西', '610900', '安康');
INSERT INTO `provinces` VALUES (913, '610000', '陕西', '611000', '商洛');
INSERT INTO `provinces` VALUES (914, '620000', '甘肃', '620100', '兰州');
INSERT INTO `provinces` VALUES (915, '620000', '甘肃', '620200', '嘉峪关');
INSERT INTO `provinces` VALUES (916, '620000', '甘肃', '620300', '金昌');
INSERT INTO `provinces` VALUES (917, '620000', '甘肃', '620400', '白银');
INSERT INTO `provinces` VALUES (918, '620000', '甘肃', '620500', '天水');
INSERT INTO `provinces` VALUES (919, '620000', '甘肃', '620600', '武威');
INSERT INTO `provinces` VALUES (920, '620000', '甘肃', '620700', '张掖');
INSERT INTO `provinces` VALUES (921, '620000', '甘肃', '620800', '平凉');
INSERT INTO `provinces` VALUES (922, '620000', '甘肃', '620900', '酒泉');
INSERT INTO `provinces` VALUES (923, '620000', '甘肃', '621000', '庆阳');
INSERT INTO `provinces` VALUES (924, '620000', '甘肃', '621100', '定西');
INSERT INTO `provinces` VALUES (925, '620000', '甘肃', '621200', '陇南');
INSERT INTO `provinces` VALUES (926, '620000', '甘肃', '622900', '临夏');
INSERT INTO `provinces` VALUES (927, '620000', '甘肃', '623000', '甘南');
INSERT INTO `provinces` VALUES (928, '630000', '青海', '630100', '西宁');
INSERT INTO `provinces` VALUES (929, '630000', '青海', '632100', '海东市');
INSERT INTO `provinces` VALUES (930, '630000', '青海', '632200', '海北');
INSERT INTO `provinces` VALUES (931, '630000', '青海', '632300', '黄南');
INSERT INTO `provinces` VALUES (932, '630000', '青海', '632500', '海南');
INSERT INTO `provinces` VALUES (933, '630000', '青海', '632600', '果洛');
INSERT INTO `provinces` VALUES (934, '630000', '青海', '632700', '玉树');
INSERT INTO `provinces` VALUES (935, '630000', '青海', '632800', '海西');
INSERT INTO `provinces` VALUES (936, '640000', '宁夏', '640100', '银川');
INSERT INTO `provinces` VALUES (937, '640000', '宁夏', '640200', '石嘴山');
INSERT INTO `provinces` VALUES (938, '640000', '宁夏', '640300', '吴忠');
INSERT INTO `provinces` VALUES (939, '640000', '宁夏', '640400', '固原');
INSERT INTO `provinces` VALUES (940, '640000', '宁夏', '640500', '中卫');
INSERT INTO `provinces` VALUES (941, '650000', '新疆', '650100', '乌鲁木齐');
INSERT INTO `provinces` VALUES (942, '650000', '新疆', '650200', '克拉玛依');
INSERT INTO `provinces` VALUES (943, '650000', '新疆', '652100', '吐鲁番');
INSERT INTO `provinces` VALUES (944, '650000', '新疆', '652200', '哈密');
INSERT INTO `provinces` VALUES (945, '650000', '新疆', '652300', '昌吉');
INSERT INTO `provinces` VALUES (946, '650000', '新疆', '652700', '博尔塔拉');
INSERT INTO `provinces` VALUES (947, '650000', '新疆', '652800', '巴音郭楞');
INSERT INTO `provinces` VALUES (948, '650000', '新疆', '652900', '阿克苏');
INSERT INTO `provinces` VALUES (949, '650000', '新疆', '653000', '克孜勒苏');
INSERT INTO `provinces` VALUES (950, '650000', '新疆', '653100', '喀什');
INSERT INTO `provinces` VALUES (951, '650000', '新疆', '653200', '和田');
INSERT INTO `provinces` VALUES (952, '650000', '新疆', '654000', '伊犁');
INSERT INTO `provinces` VALUES (953, '650000', '新疆', '654200', '塔城');
INSERT INTO `provinces` VALUES (954, '650000', '新疆', '654300', '阿勒泰');
INSERT INTO `provinces` VALUES (955, '650000', '新疆', '659000', '可克达拉');
INSERT INTO `provinces` VALUES (956, '650000', '新疆', '659001', '石河子');
INSERT INTO `provinces` VALUES (957, '650000', '新疆', '659002', '阿拉尔');
INSERT INTO `provinces` VALUES (958, '650000', '新疆', '659003', '图木舒克');
INSERT INTO `provinces` VALUES (959, '650000', '新疆', '659004', '五家渠');
INSERT INTO `provinces` VALUES (960, '650000', '新疆', '659005', '北屯');
INSERT INTO `provinces` VALUES (961, '650000', '新疆', '659006', '铁门关');
INSERT INTO `provinces` VALUES (962, '650000', '新疆', '659009', '昆玉');
INSERT INTO `provinces` VALUES (963, '710000', '台湾', '710100', '台北');
INSERT INTO `provinces` VALUES (964, '710000', '台湾', '710200', '高雄');
INSERT INTO `provinces` VALUES (965, '710000', '台湾', '710300', '台南');
INSERT INTO `provinces` VALUES (966, '710000', '台湾', '710400', '台中');
INSERT INTO `provinces` VALUES (967, '710000', '台湾', '710500', '金门');
INSERT INTO `provinces` VALUES (968, '710000', '台湾', '710600', '南投');
INSERT INTO `provinces` VALUES (969, '710000', '台湾', '710700', '基隆');
INSERT INTO `provinces` VALUES (970, '710000', '台湾', '710800', '新竹');
INSERT INTO `provinces` VALUES (971, '710000', '台湾', '710900', '嘉义');
INSERT INTO `provinces` VALUES (972, '710000', '台湾', '711100', '新北');
INSERT INTO `provinces` VALUES (973, '710000', '台湾', '711200', '宜兰');
INSERT INTO `provinces` VALUES (974, '710000', '台湾', '711300', '新竹');
INSERT INTO `provinces` VALUES (975, '710000', '台湾', '711400', '桃园');
INSERT INTO `provinces` VALUES (976, '710000', '台湾', '711500', '苗栗');
INSERT INTO `provinces` VALUES (977, '710000', '台湾', '711700', '彰化');
INSERT INTO `provinces` VALUES (978, '710000', '台湾', '711900', '嘉义');
INSERT INTO `provinces` VALUES (979, '710000', '台湾', '712100', '云林');
INSERT INTO `provinces` VALUES (980, '710000', '台湾', '712400', '屏东');
INSERT INTO `provinces` VALUES (981, '710000', '台湾', '712500', '台东');
INSERT INTO `provinces` VALUES (982, '710000', '台湾', '712600', '花莲');
INSERT INTO `provinces` VALUES (983, '710000', '台湾', '712700', '澎湖');
INSERT INTO `provinces` VALUES (984, '710000', '台湾', '712800', '连江');
INSERT INTO `provinces` VALUES (985, '810000', '香港', '810100', '香港岛');
INSERT INTO `provinces` VALUES (986, '810000', '香港', '810200', '九龙');
INSERT INTO `provinces` VALUES (987, '810000', '香港', '810300', '新界');
INSERT INTO `provinces` VALUES (988, '820000', '澳门', '820100', '澳门半岛');
INSERT INTO `provinces` VALUES (989, '820000', '澳门', '820200', '离岛');
INSERT INTO `provinces` VALUES (990, '990000', '海外', '990100', '海外');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `flag` int(2) NULL DEFAULT 0 COMMENT '0：管理员；1：用户；2：冻结 ；3解冻中',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123', 'admin', '男', '18569842325', 1);
INSERT INTO `user` VALUES (2, 'a', '123', 'a', '男', '15865458524', 0);
INSERT INTO `user` VALUES (12, 'b', '123', '张曼玉', '女', '45548796456', 0);
INSERT INTO `user` VALUES (13, 'c', '123', '张三', '男', '15646545645', 0);

SET FOREIGN_KEY_CHECKS = 1;

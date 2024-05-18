/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.241.128
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36-2ubuntu3)
 Source Host           : 192.168.241.128:3306
 Source Schema         : Customer

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36-2ubuntu3)
 File Encoding         : 65001

 Date: 17/05/2024 17:13:15
*/

-- ----------------------------
-- Table structure for destination
-- ----------------------------
DROP TABLE IF EXISTS `destination`;
CREATE TABLE `destination` (
  `id` int NOT NULL,
  `airport_destination` TEXT NULL,
  PRIMARY KEY (`id`)
);
-- ----------------------------
-- Records of destination
-- ----------------------------
INSERT INTO `destination` VALUES (1, 'فرودگاه مهرآباد');
INSERT INTO `destination` VALUES (2, 'فرودگاه مشهد');
INSERT INTO `destination` VALUES (3, 'فرودگاه شيراز');
INSERT INTO `destination` VALUES (4, 'فرودگاه تبريز');
INSERT INTO `destination` VALUES (5, 'فرودگاه اصفهان');
INSERT INTO `destination` VALUES (6, 'فرودگاه اهواز');
INSERT INTO `destination` VALUES (7, 'فرودگاه بوشهر');
INSERT INTO `destination` VALUES (8, 'فرودگاه کرمان');
INSERT INTO `destination` VALUES (9, 'فرودگاه ساري');
INSERT INTO `destination` VALUES (10, 'فرودگاه يزد');
INSERT INTO `destination` VALUES (11, 'فرودگاه کرمانشاه');
INSERT INTO `destination` VALUES (12, 'فرودگاه رشت');
INSERT INTO `destination` VALUES (13, 'فرودگاه زاهدان');
INSERT INTO `destination` VALUES (14, 'فرودگاه آبادان');
INSERT INTO `destination` VALUES (15, 'فرودگاه بندرعباس');
INSERT INTO `destination` VALUES (16, 'فرودگاه گرگان');
INSERT INTO `destination` VALUES (17, 'فرودگاه همدان');
INSERT INTO `destination` VALUES (18, 'فرودگاه اردبيل');
INSERT INTO `destination` VALUES (19, 'فرودگاه ايلام');
INSERT INTO `destination` VALUES (20, 'فرودگاه اروميه');
INSERT INTO `destination` VALUES (21, 'فرودگاه بيرجند');
INSERT INTO `destination` VALUES (22, 'فرودگاه سنندج');
INSERT INTO `destination` VALUES (23, 'فرودگاه شهرکرد');
INSERT INTO `destination` VALUES (24, 'فرودگاه بجنورد');
INSERT INTO `destination` VALUES (25, 'فرودگاه لارستان');
INSERT INTO `destination` VALUES (26, 'فرودگاه خرم آباد');
INSERT INTO `destination` VALUES (27, 'فرودگاه پارس آبادمغان');
INSERT INTO `destination` VALUES (28, 'فرودگاه سمنان');
INSERT INTO `destination` VALUES (29, 'فرودگاه شاهرود');
INSERT INTO `destination` VALUES (30, 'فرودگاه نوشهر');
INSERT INTO `destination` VALUES (31, 'فرودگاه ياسوج');
INSERT INTO `destination` VALUES (32, 'فرودگاه زنجان');
INSERT INTO `destination` VALUES (33, 'فرودگاه اراک');
INSERT INTO `destination` VALUES (34, 'فرودگاه زابل');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `type` TEXT NULL,
  `name` TEXT NULL,
  `city` TEXT NULL,
  `point` TEXT NULL,
  `address` TEXT NULL,
  `start_price` TEXT NULL,
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `id_destination` INTEGER NULL,
  FOREIGN KEY (`id_destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE INDEX IF NOT EXISTS `destination_id` ON `hotel`(`id_destination`);

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('هتل', 'گلدن پالاس (قصر طلایی)', 'مشهد', '۵', 'بين امام رضا ٣٤ و ٣٦', '۲,۷۸۳,۰۰۰ تومان', 1, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'درویشی', 'مشهد', '۵', 'بین امام رضا ٢٤ و ٢٦', '۲,۸۵۱,۰۰۰ تومان', 2, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'الماس ۲', 'مشهد', '۵', 'نبش امام رضا ٢٠', '۲,۷۳۰,۰۰۰ تومان', 3, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'نوین پلاس', 'مشهد', '۵', 'بلوار صادقیه', '۲,۰۶۰,۰۰۰ تومان', 4, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'خورشید هشتم رئوف کوثر', 'مشهد', '', 'بلوار شهید شوشتری', '۳,۵۹۱,۰۰۰ تومان', 5, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بین المللی قصر', 'مشهد', '۵', 'بین امام رضا ١٤ و ١٦', '۲,۶۳۹,۰۰۰ تومان', 6, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پردیسان', 'مشهد', '۴', 'بزرگراه شهید کلانتری', '۲,۵۸۴,۰۰۰ تومان', 7, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'هما ١', 'مشهد', '۴', 'بلوار احمدآباد', '۲,۷۰۰,۰۰۰ تومان', 8, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سی نور', 'مشهد', '۳', 'خیابان ١٧ شهریور', '۲,۴۸۲,۰۰۰ تومان', 9, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'قصرالضیافه رکسان (قدس)', 'مشهد', '', 'ابتدای خیابان شیرازی', '۶,۳۰۳,۰۰۰ تومان', 10, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'مدینه الرضا', 'مشهد', '۳', 'خیابان شیرازی', '۲,۶۸۷,۰۰۰ تومان', 11, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ارغوان', 'مشهد', '۴', 'خیابان نواب صفوی', '۱,۱۸۸,۰۰۰ تومان', 12, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'میثاق ملل', 'مشهد', '۴', 'بلوار وکیل آباد،', '۱,۹۲۳,۰۰۰ تومان', 13, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بزرگ جهان', 'مشهد', '', 'خیابان شیرازی', '۳,۸۷۶,۰۰۰ تومان', 14, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیس', 'مشهد', '۴', 'بلوار شوشتری', '۲,۳۸۲,۰۰۰ تومان', 15, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ضیافت الزهرا', 'مشهد', '', 'خیابان نواب صفوی۱۰', '۳,۸۰۱,۰۰۰ تومان', 16, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بزرگ پارک حیات', 'مشهد', '۳', 'انتهای بلوار وکیل آباد', '۲,۱۷۵,۰۰۰ تومان', 17, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'اسپیناس پالاس', 'تهران', '۴', 'سعادت آباد', '۸,۸۳۰,۰۰۰ تومان', 18, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان استقلال', 'تهران', '۴', 'بزرگراه شهید چمران', '۵,۲۲۷,۰۰۰ تومان', 19, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ویستریا', 'تهران', '۴', 'تجریش', '۵,۲۰۵,۰۰۰ تومان', 20, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'اسپیناس بلوار', 'تهران', '۵', 'بلوار کشاورز', '۵,۳۴۲,۰۰۰ تومان', 21, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'تاج محل', 'تهران', '۴', 'میدان ونک، شیخ بهائی جنوبی،', '۴,۳۷۴,۰۰۰ تومان', 22, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پرشین پلازا', 'تهران', '۴', 'سهروردی شمالی', '۲,۹۹۳,۰۰۰ تومان', 23, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'رکسان (نووتل سابق)', 'تهران', '۴', 'کیلومتر٣٠ اتوبان خلیج فارس(تهران - قم)', '۲,۳۸۰,۰۰۰ تومان', 24, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'لاله', 'تهران', '۳', 'خيابان فاطمی', '۳,۰۴۵,۰۰۰ تومان', 25, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'نور حیات', 'تهران', '', 'تهران ، میدان فردوسی ، خیابان سپهبد قرنی ، انتهای خیابان سمیه', '۴,۰۰۰,۰۰۰ تومان', 26, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان اوین', 'تهران', '۴', 'بزرگراه یادگار امام', '۴,۷۸۸,۰۰۰ تومان', 27, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'فرودگاهی رمیس(ایبیس سابق)', 'تهران', '۴', 'کيلومتر ٣٠ اتوبان تهران-قم', '۱,۸۳۱,۰۰۰ تومان', 28, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان انقلاب', 'تهران', '۴', 'خيابان طالقانی', '۳,۵۰۰,۰۰۰ تومان', 29, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان کوثر', 'تهران', '۳', 'ضلع شمالی ميدان وليعصر', '۲,۴۷۵,۰۰۰ تومان', 30, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بزرگ', 'تهران', '۴', 'خيابان وليعصر', '۴,۱۲۰,۰۰۰ تومان', 31, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آساره', 'تهران', '۴', 'خیابان آزادی', '۲,۳۴۶,۰۰۰ تومان', 32, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بزرگ فردوسی', 'تهران', '۵', 'ميدان امام خمينی', '۳,۰۶۶,۰۰۰ تومان', 33, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آتانا', 'تهران', '۴', 'خیابان طالقانی', '۴,۷۲۳,۰۰۰ تومان', 34, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'مارینا پارک', 'کیش', '', 'نوار سياحتى شرقى', '', 35, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ترنج', 'کیش', '', 'میدان جاسک', '', 36, NULL);
INSERT INTO `hotel` VALUES ('هتل سنتی', 'لوکس امیرکبیر', 'کیش', '', 'بلوار میرمهنا', '', 37, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'داریوش', 'کیش', '', 'میدان داریوش،', '', 38, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پانوراما', 'کیش', '', 'میدان امیر کبیر', '', 39, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'میراژ', 'کیش', '', 'بلوار دریا', '', 40, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'کوروش', 'کیش', '', 'میدان پردیس', '', 41, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ویدا', 'کیش', '', 'میدان سنایی،', '', 42, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ایران', 'کیش', '', 'میدان امیرکبیر', '', 43, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آرامیس پلاس', 'کیش', '', 'خیابان رودکی', '', 44, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'شایان', 'کیش', '', 'میدان ساحل', '', 45, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارمیس', 'کیش', '', 'میدان پردیس', '', 46, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'شایگان', 'کیش', '', 'میدان پردیس', '', 47, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آریا', 'کیش', '', 'جاده جهان', '', 48, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'فلامینگو', 'کیش', '', 'میدان امیرکبیر', '', 49, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سورینت مریم', 'کیش', '', 'ضلع جنوب شرقی میدان  امیر کبیر', '', 50, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'لیلیوم', 'کیش', '', 'میدان پردیس-', '', 51, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'هما', 'شیراز', '۴', 'خيابان مشکين فام', '۲,۴۸۹,۰۰۰ تومان', 52, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'چمران', 'شیراز', '۴', 'بلوار شهید چمران', '۴,۶۵۷,۰۰۰ تومان', 53, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سنتی نیایش', 'شیراز', '', 'سه‌راه نمازی', '۹۴۰,۰۰۰ تومان', 54, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'وکیل', 'شیراز', '۵', 'خیابان لطفعلی خان', '۱,۱۴۴,۰۰۰ تومان', 55, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'اطلس', 'شیراز', '', 'ميدان اطلسی ،', '۱,۷۲۷,۰۰۰ تومان', 56, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'جهانگردی', 'شیراز', '', 'کلبه سعدی', '۱,۳۸۷,۰۰۰ تومان', 57, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'ماه منیر', 'شیراز', '۴', 'شیراز ، خیابان کریم خان زند', '۹۸۵,۰۰۰ تومان', 58, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'جهان نما', 'شیراز', '', 'بلوار هجرت،', '۱,۳۶۹,۰۰۰ تومان', 59, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ساسان', 'شیراز', '۵', 'خیابان زند،', '۳۶۴,۰۰۰ تومان', 60, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'تچر', 'شیراز', '۵', 'خیابان فردوسی', '۱,۰۳۹,۰۰۰ تومان', 61, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'حافظ', 'شیراز', '', 'خیابان فردوسی ،', '۹۹۲,۰۰۰ تومان', 62, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'سیمرغ', 'شیراز', '', 'بلوار سیبویه', '۸۸۵,۰۰۰ تومان', 63, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'قوام', 'شیراز', '', 'شیراز، دروازه اصفهان', '۹۲۶,۰۰۰ تومان', 64, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بوتیک ایرانمهر', 'شیراز', '۵', 'خیابان لطفعلی خان زند ، خیابان طالقانی', '۴,۴۱۲,۰۰۰ تومان', 65, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'پنج دری', 'شیراز', '', 'خیابان ۹دی', '۲,۰۴۰,۰۰۰ تومان', 66, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'بهارنارنج', 'شیراز', '', 'خیابان شاه چراغ ، کوچه حضرتی', '۱,۵۶۵,۰۰۰ تومان', 67, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'درباری', 'شیراز', '', 'خیابان شهید دستغیب', '۱,۳۹۵,۰۰۰ تومان', 68, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'عباسی', 'اصفهان', '۴', 'خیابان چهارباغ عباسی', '۵,۳۳۳,۰۰۰ تومان', 69, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان کوثر', 'اصفهان', '۴', 'خیابان ملت', '۴,۴۰۸,۰۰۰ تومان', 70, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پیروزی', 'اصفهان', '۴', 'دروازه دولت', '۲,۸۱۹,۰۰۰ تومان', 71, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سفیر', 'اصفهان', '۴', 'خيابان آمادگاه', '۲,۰۵۰,۰۰۰ تومان', 72, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'چهل پنجره', 'اصفهان', '۴', 'بلوار بوستان سعدی', '۲,۴۴۸,۰۰۰ تومان', 73, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'صفوی', 'اصفهان', '۴', 'چهار راه فلسطين', '۸۶۸,۰۰۰ تومان', 74, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سپاهان', 'اصفهان', '۵', 'خیابان استانداری', '۱,۵۳۰,۰۰۰ تومان', 75, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'پارتیکان', 'اصفهان', '۴', 'ضلع جنوب غربی میدان نقش جهان', '۷۵۳,۰۰۰ تومان', 76, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'باران', 'اصفهان', '۵', 'خیابان امام خمینی', '۱,۹۰۰,۰۰۰ تومان', 77, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ستاره', 'اصفهان', '۴', 'میدان امام(نقش جهان)', '۱,۳۵۰,۰۰۰ تومان', 78, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان سوئیت', 'اصفهان', '', 'ابتدای بلوار آیینه خانه', '۲,۴۰۱,۰۰۰ تومان', 79, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'زهره', 'اصفهان', '۴', 'پل فردوسی', '۱,۲۵۳,۰۰۰ تومان', 80, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سنتی', 'اصفهان', '', 'خیابان سپه،', '۲,۳۶۴,۰۰۰ تومان', 81, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'دانشمند', 'اصفهان', '۵', 'خیابان کاوه', '۱,۱۱۳,۰۰۰ تومان', 82, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آزادی', 'اصفهان', '۴', 'چهار باغ پایین', '۱,۱۶۰,۰۰۰ تومان', 83, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'اسپادانا', 'اصفهان', '۴', 'بلوار آینه خانه', '۱,۹۶۸,۰۰۰ تومان', 84, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'شیخ بهایی', 'اصفهان', '۴', 'چهارباغ عباسی،', '۹۷۱,۰۰۰ تومان', 85, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان صفائیه', 'یزد', '۴', 'میدان ابوذر', '۲,۱۱۰,۰۰۰ تومان', 86, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'باغ مشیر الممالک', 'یزد', '۵', 'خيابان انقلاب،', '۲,۴۰۰,۰۰۰ تومان', 87, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سیب و نار', 'یزد', '۵', 'دروازه قرآن- بلوار سر', '۱,۴۸۱,۰۰۰ تومان', 88, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بوتیک  هومان', 'یزد', '۵', 'خیابان قیام', '۱,۴۷۲,۰۰۰ تومان', 89, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'داد', 'یزد', '۵', 'خیابان دهم فروردین', '۲,۴۸۱,۰۰۰ تومان', 90, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'راه و ما', 'یزد', '۴', 'صفائیه', '۱,۱۸۰,۰۰۰ تومان', 91, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'تهرانی', 'یزد', '۴', 'میدان ابوالفضل (ع)', '۱,۳۳۰,۰۰۰ تومان', 92, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ملک التجار', 'یزد', '۴', 'خیابان قیام', '۲,۸۵۹,۰۰۰ تومان', 93, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ارگ جدید', 'یزد', '۴', 'بلوار شهیدان اشرف', '۲,۱۶۴,۰۰۰ تومان', 94, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'موزه فهادان', 'یزد', '۴', 'خیابان امام خمینی', '۲,۲۳۴,۰۰۰ تومان', 95, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'فیروزه', 'یزد', '۵', 'خیابان مهدی، هتل فیروزه یزد', '۶۷۲,۰۰۰ تومان', 96, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'الزهرا', 'یزد', '۵', 'چهار راه فرهنگیان', '۵۹۹,۰۰۰ تومان', 97, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'جهانگردی', 'یزد', '', 'میدان امام حسین', '۱,۸۱۴,۰۰۰ تومان', 98, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سنتی مهر', 'یزد', '', 'خیابان قیام', '۱,۵۸۸,۰۰۰ تومان', 99, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سنتی مظفر', 'یزد', '', 'خیابان مطهری', '۹۴۰,۰۰۰ تومان', 100, NULL);
INSERT INTO `hotel` VALUES ('مجتمع اقامتی', 'کاروان', 'یزد', '', 'بلوار آزادگان', '۱,۰۶۴,۰۰۰ تومان', 101, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان', 'یزد', '', 'بلوارجمهوری اسلامی', '۲,۰۷۰,۰۰۰ تومان', 102, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ارم', 'قشم', '۴', 'بلوار آزادگان', '۲,۴۴۳,۰۰۰ تومان', 103, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آوینا', 'قشم', '۵', 'بلوار باهنر', '۴,۰۶۶,۰۰۰ تومان', 104, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ساحل طلایی', 'قشم', '۳', 'جاده ساحلی جنوبی،', '۲,۶۴۷,۰۰۰ تومان', 105, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'دریتا', 'قشم', '', 'روبروی پارک زیتون', '۱,۶۷۴,۰۰۰ تومان', 106, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آرتمیس', 'قشم', '', 'چهارراه پردیس - بلوار ولیعصر', '۲,۵۵۵,۰۰۰ تومان', 107, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آرتا', 'قشم', '۳', 'بلوار شهید بهشتی ،', '۲,۴۳۷,۰۰۰ تومان', 108, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سما ۱', 'قشم', '۲', 'بلوار وليعصر،', '۴۱۹,۰۰۰ تومان', 109, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سینگو', 'قشم', '۴', 'درگهان', '۲,۱۲۱,۰۰۰ تومان', 110, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'رخسار', 'قشم', '۳', 'بلوار شهید رجایی', '۱,۴۴۰,۰۰۰ تومان', 111, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'الیت', 'قشم', '', 'منطقه طولا', '۱,۸۵۴,۰۰۰ تومان', 112, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'کیمیا ٤', 'قشم', '', 'میدان جهاد', '۶۸۶,۰۰۰ تومان', 113, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'رویال', 'قشم', '۳', 'خیابان فلسطین،', '۱,۵۰۱,۰۰۰ تومان', 114, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ریحان', 'قشم', '۴', 'چهار راه پردیس', '۶۵۴,۰۰۰ تومان', 115, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'خلیج فارس', 'قشم', '', 'میدان علم و صنعت', '۷۰۳,۰۰۰ تومان', 116, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آرمان', 'قشم', '۵', 'درگهان', '۵۸۹,۰۰۰ تومان', 117, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'مارینا ١', 'قشم', '۴', 'بزرگراه قشم', '۷۳۴,۰۰۰ تومان', 118, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آرام', 'قشم', '۳', 'خیابان ولیعصر،', '۱,۱۲۳,۰۰۰ تومان', 119, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بابا طاهر', 'همدان', '۳', 'آرامگاه باباطاهر ، ضلع شرقی آرامگاه ،', '۲,۱۴۹,۰۰۰ تومان', 120, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بین المللی امیران', 'همدان', '۴', 'بلوار بعثت', '۱,۵۸۰,۰۰۰ تومان', 121, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'کتیبه', 'همدان', '۴', 'بلوار ارم', '۱,۹۹۶,۰۰۰ تومان', 122, NULL);
INSERT INTO `hotel` VALUES ('مجتمع اقامتی', 'عباس آباد', 'همدان', '۵', 'بلوار ارم بعد از بیمارستان شهید بهشتی', '۲,۱۷۰,۰۰۰ تومان', 123, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'خاتم', 'همدان', '', 'میدان فلسطین', '۱,۰۵۰,۰۰۰ تومان', 124, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'سفیر', 'همدان', '', 'بلوار جانبازان', '۹۸۸,۰۰۰ تومان', 125, NULL);
INSERT INTO `hotel` VALUES ('مهمانسرا', 'ورزش', 'همدان', '۴', 'شهر مریانج', '۷۵۴,۰۰۰ تومان', 126, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'جهانگردی علیصدر', 'همدان', '۴', 'کبودرآهنگ', '۱,۱۹۲,۰۰۰ تومان', 127, NULL);
INSERT INTO `hotel` VALUES ('ویلا', 'کوهستانی گنجنامه', 'همدان', '۴', 'مجموعه تفريحی تله کابين', '۲,۳۴۶,۰۰۰ تومان', 128, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بین المللی امیران ۲', 'همدان', '۴', 'ابتدای  شهرک فرهنگیان', '۱,۴۰۰,۰۰۰ تومان', 129, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان', 'همدان', '۴', 'بلوار ارم', '۱,۶۰۰,۰۰۰ تومان', 130, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارسیان بوعلی', 'همدان', '۴', 'میدان جهاد', '۱,۶۱۵,۰۰۰ تومان', 131, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'وندیک', 'همدان', '۴', 'خیابان سعیدیه', '۸۲۸,۰۰۰ تومان', 132, NULL);
INSERT INTO `hotel` VALUES ('مهمانپذیر', 'اردیبهشت', 'همدان', '۴', 'میدان امام خمینی', '۷۵۰,۰۰۰ تومان', 133, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بزرگ پارسیان', 'رامسر', '۳', 'خيابان شهيد رجايی', '۳,۸۷۴,۰۰۰ تومان', 134, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بام سبز', 'رامسر', '۴', 'کيلومتر ٥ جاده چابکسر', '۳,۹۸۲,۰۰۰ تومان', 135, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'لیدو', 'رامسر', '', 'انتهای بلوار معلم،', '۲,۵۱۴,۰۰۰ تومان', 136, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'ترنج متین', 'رامسر', '', 'بلوار باهنر(لیدو)،', '۳,۵۳۶,۰۰۰ تومان', 137, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'نیستان', 'رامسر', '۱', 'بلوار معلم', '۱,۸۷۵,۰۰۰ تومان', 138, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'کوثر', 'رامسر', '۳', 'سه راه سادات شهر', '۲,۳۷۰,۰۰۰ تومان', 139, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'رز', 'رامسر', '', 'جاده رامسر به تنکابن', '۸۸۴,۰۰۰ تومان', 140, NULL);
INSERT INTO `hotel` VALUES ('متل', 'پارسیان', 'رامسر', '', 'بلوار معلم', '۲,۱۸۵,۰۰۰ تومان', 141, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'کارن', 'رامسر', '', 'ساحل دریا', '۱,۳۲۶,۰۰۰ تومان', 142, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'کیمیا', 'رامسر', '', 'جاده ساحلی (بلوار شهید باهنر)', '۲,۴۹۳,۰۰۰ تومان', 143, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'لیان', 'رامسر', '', 'بلوار معلم (کازینو)', '۱,۸۰۰,۰۰۰ تومان', 144, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'اسکان', 'رامسر', '۴', 'بلوار باهنر رو به روی ساحل لیدو', '۱,۵۱۷,۰۰۰ تومان', 145, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'لاله پارک', 'تبریز', '۵', 'اتوبان پاسداران', '۳,۹۸۱,۰۰۰ تومان', 146, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'شهریار', 'تبریز', '۴', 'ابتدای بلوار ائل گلی', '۲,۶۷۸,۰۰۰ تومان', 147, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پارس  ائل گلی', 'تبریز', '۴', 'جنب پارک ائل گلی تبریز', '۳,۲۵۳,۰۰۰ تومان', 148, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'صخره ای لاله کندوان', 'تبریز', '۴', 'اسکو', '۲,۲۰۲,۰۰۰ تومان', 149, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'گسترش', 'تبریز', '۴', 'چهاراه آب رسان', '۱,۳۸۷,۰۰۰ تومان', 150, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بین المللی', 'تبریز', '۴', 'خیابان امام خمینی', '۲,۱۳۰,۰۰۰ تومان', 151, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'رویال پالاس', 'تبریز', '', 'تبریز، خیابان ائل گلی', '۱,۸۹۰,۰۰۰ تومان', 152, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'پتروشیمی', 'تبریز', '۴', 'بلوار استاد شهریار', '۳,۳۴۳,۰۰۰ تومان', 153, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'بهبود', 'تبریز', '۴', 'میدان ساعت', '۱,۲۷۰,۰۰۰ تومان', 154, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سارای', 'تبریز', '۵', 'خیابان شهید مدرس', '۱,۰۲۸,۰۰۰ تومان', 155, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'ائل آی', 'تبریز', '۴', 'شهرک باغمیشه', '۸۹۹,۰۰۰ تومان', 156, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'فرید', 'تبریز', '۳', 'خیابان شریعتی جنوبی', '۷۸۳,۰۰۰ تومان', 157, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'استقبال', 'تبریز', '۴', 'مجموعه  مقبره الشعرا', '۹۸۰,۰۰۰ تومان', 158, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'کاسپین', 'تبریز', '', 'خیابان شهید بهشتی(منصورسابق)', '۹۱۸,۰۰۰ تومان', 159, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'آتا', 'تبریز', '', 'خیابان آزادی', '۱,۵۸۷,۰۰۰ تومان', 160, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'ونوس', 'تبریز', '', 'خیابان شریعتی جنوبی (شهناز)', '۸۷۹,۰۰۰ تومان', 161, NULL);
INSERT INTO `hotel` VALUES ('هتل آپارتمان', 'صائب', 'تبریز', '۴', 'خیابان شریعتی جنوبی', '۵۹۱,۰۰۰ تومان', 162, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سرای عامری ها', 'کاشان', '۵', 'خیابان علوی', '۴,۷۷۴,۰۰۰ تومان', 163, NULL);
INSERT INTO `hotel` VALUES ('هتل سنتی', 'بوتیک هتل صباغیان', 'کاشان', '', 'خیابان بابا افضل ، کوچه واحد پور ۴۷ (تالار نورجهان) (مسیر پیاده و سواری)', '۲,۲۰۷,۰۰۰ تومان', 164, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'وندا', 'کاشان', '', 'بلوار امام رضا، جنب مجموعه کاشان مال', '۱,۹۳۵,۰۰۰ تومان', 165, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'نگارستان', 'کاشان', '۴', 'خیابان امیر کبیر', '۱,۶۴۵,۰۰۰ تومان', 166, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'سنتی خانه نگین', 'کاشان', '', 'خيابان محتشم', '۱,۵۵۰,۰۰۰ تومان', 167, NULL);
INSERT INTO `hotel` VALUES ('مجتمع اقامتی', 'خورشید اردهال', 'کاشان', '', 'کیلومتر ۵۰ جاده کاشان نراق-مشهد ، اردهال ،', '۵۶۱,۰۰۰ تومان', 168, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'شیرین', 'کاشان', '۴', 'خیابان فاضل نراقی', '۱,۳۸۰,۰۰۰ تومان', 169, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'خانه تاریخی احسان', 'کاشان', '', 'ميدان كمال الملک', '۲,۳۸۶,۰۰۰ تومان', 170, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'خونه نقلی', 'کاشان', '', 'خیابان فاضل نراقی ، پشت مسجد آقابزرگ ، گذر آب انبار خان ،', '۱,۱۹۶,۰۰۰ تومان', 171, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'لیلی', 'کاشان', '', 'چهارراه کاشانی', '۱,۵۶۵,۰۰۰ تومان', 172, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'خانه مرشدی ۲ (ادیب)', 'کاشان', '', 'میدان کمال الملک ، خیابان فاضل نراقی', '۲,۰۵۸,۰۰۰ تومان', 173, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'سرای باباافضل', 'کاشان', '', 'میدان کمال الملک، خیابان فاضل نراقی، کوچه فرهنگ۳۱، محله درب باغ، بن بست حرم، انتهای بن بست', '۱,۹۵۰,۰۰۰ تومان', 174, NULL);
INSERT INTO `hotel` VALUES ('هتل', 'آریانا', 'کاشان', '', 'خیابان ملاحبیب الله شریف', '۳,۴۴۰,۰۰۰ تومان', 175, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'خادمی', 'کاشان', '', 'خیابان علوی', '۱,۳۳۵,۰۰۰ تومان', 176, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'خانه معمار', 'کاشان', '', 'کاشان-خیابان باباافضل،خیابان باب الحوائج-کوچه آیت الله مدنی،کوچه شهید چاوشی', '۱,۳۲۶,۰۰۰ تومان', 177, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'یاسمین راهب', 'کاشان', '۴', 'خیابان غیاث الدین جمشید', '۳,۶۴۰,۰۰۰ تومان', 178, NULL);
INSERT INTO `hotel` VALUES ('اقامتگاه سنتی', 'فانوس ویونا', 'کاشان', '', 'خیابان فاضل نراقی', '۱,۷۳۸,۰۰۰ تومان', 179, NULL);

-- ----------------------------
-- Table structure for hotel_book
-- ----------------------------
DROP TABLE IF EXISTS `hotel_book`;
CREATE TABLE IF NOT EXISTS `hotel_book` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `hotel_id` INTEGER NULL,
  `passenger_id` INTEGER NULL,
  `room_number` TEXT NULL,
  FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE INDEX IF NOT EXISTS `passenger_id_idx` ON `hotel_book`(`passenger_id`);
CREATE INDEX IF NOT EXISTS `hotel_id_idx` ON `hotel_book`(`hotel_id`);

-- ----------------------------
-- Records of hotel_book
-- ----------------------------
INSERT INTO `hotel_book` VALUES (3, 1, 1, '120');

-- ----------------------------
-- Table structure for info_flight
-- ----------------------------
DROP TABLE IF EXISTS `info_flight`;
CREATE TABLE IF NOT EXISTS `info_flight` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `day` TEXT NULL,
  `airline` TEXT NULL,
  `flight_no` TEXT NULL,
  `origin` TEXT NULL,
  `status` TEXT NULL,
  `register` TEXT NULL,
  `flight_name` TEXT NULL,
  `id_destination` INTEGER NULL,
  `date` TEXT NULL, -- SQLite does not have a DATE type, use TEXT to store date strings
  FOREIGN KEY (`id_destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE INDEX IF NOT EXISTS `name_airport` ON `info_flight`(`id_destination`);

-- ----------------------------
-- Records of info_flight
-- ----------------------------
INSERT INTO `info_flight` VALUES (1, 'دو شنبه 00:01', 'وارش', 'VRH5867', 'اصفهان', 'نشست | پایان دریافت بار', 'EPVAV', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (2, 'دو شنبه 00:05', 'کیش ایر', 'KIS7080A', 'كيش', 'نشست | پایان دریافت بار', 'EPLCJ', 'MD82', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (3, 'دو شنبه 00:05', 'کیش ایر', 'KIS7168', 'مشهد', 'نشست | پایان دریافت بار', 'EPLCM', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (4, 'دو شنبه 00:15', 'کیش ایر', 'KIS7052A', 'كيش', 'باطل شد', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (5, 'دو شنبه 00:35', 'آتا', 'TBZ5624', 'شیراز', 'نشست | پایان دریافت بار', 'EPTAP', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (6, 'دو شنبه 00:40', 'آتا', 'TBZ5630', 'مشهد', 'نشست | پایان دریافت بار', 'EPTAL', 'md83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (7, 'دو شنبه 00:40', 'پارس ایر', 'PRS4445', 'اهواز', 'نشست | پایان دریافت بار', 'EPPAC', 'CRJ200', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (8, 'دو شنبه 00:45', 'وارش', 'VRH5841A', 'مشهد', 'نشست | پایان دریافت بار', 'EPVAR', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (9, 'دو شنبه 00:50', 'آسمان', 'IRC3785', 'شیراز', 'نشست | پایان دریافت بار', 'EPAPP', '737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (10, 'دو شنبه 00:55', 'کاسپین', 'CPN019', 'اهواز', 'نشست | پایان دریافت بار', 'EPKPB', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (11, 'دو شنبه 00:55', 'ایران ایر', 'IRA3441', 'یزد', 'نشست | پایان دریافت بار', 'EPITM', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (12, 'دو شنبه 01:05', 'کاسپین', 'CPN6901', 'بوشهر', 'نشست | پایان دریافت بار', 'EPCPX', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (13, 'دو شنبه 01:10', 'آسمان', 'IRC3751', 'آبادان', 'نشست | پایان دریافت بار', 'EPASR', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (14, 'دو شنبه 01:10', 'زاگرس', 'IZG4076', 'شیراز', 'نشست | پایان دریافت بار', 'EPZAV', '320', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (15, 'دو شنبه 01:15', 'کاسپین', 'CPN025', 'مشهد', 'نشست | پایان دریافت بار', 'EPCPV', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (16, 'دو شنبه 01:20', 'ایران ایر', 'IRA3490', 'تبریز', 'نشست | پایان دریافت بار', 'EPCFM', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (17, 'دو شنبه 01:25', 'زاگرس', 'IZG4018', 'بندرعباس', 'نشست | پایان دریافت بار', 'EPZAP', 'A320', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (18, 'دو شنبه 01:45', 'وارش', 'VRH5873', 'بوشهر', 'نشست | پایان دریافت بار', 'EPVBM', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (19, 'دو شنبه 01:50', 'فلای پرشیا', 'FPI7429A', 'قشم', 'نشست | پایان دریافت بار', 'EPFPC', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (20, 'دو شنبه 06:25', 'آسمان', 'IRC3770', 'شیراز', 'نشست | پایان دریافت بار', 'EPATG', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (21, 'دو شنبه 06:30', 'ایران ایرتور', 'IRB961', 'مشهد', 'نشست | پایان دریافت بار', 'EPMDE', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (22, 'دو شنبه 06:55', 'آتا', 'TBZ5730', 'مشهد', 'نشست | پایان دریافت بار', 'EPTAM', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (23, 'دو شنبه 07:00', 'ماهان', 'IRM1050', 'کرمان', 'نشست | پایان دریافت بار', 'EPMOI', 'rj100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (24, 'دو شنبه 07:05', 'آتا', 'TBZ5601', 'تبریز', 'نشست | پایان دریافت بار', 'EPTAE', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (25, 'دو شنبه 07:05', 'ماهان', 'IRM1070', 'زاهدان', 'نشست | پایان دریافت بار', 'EPMEA', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (26, 'دو شنبه 07:15', 'تابان', 'TBN6253', 'مشهد', 'نشست | پایان دریافت بار', 'EPTBF', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (27, 'دو شنبه 07:15', 'یزد ایر', 'DZD6880', 'یزد', 'نشست | پایان دریافت بار', 'EPMOC', '146-200', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (28, 'دو شنبه 07:40', 'ماهان', 'IRM1036', 'مشهد', 'نشست | پایان دریافت بار', 'EPMEE', '747', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (29, 'دو شنبه 08:00', 'آتا', 'TBZ5639', 'تبریز', 'نشست | پایان دریافت بار', 'eptaj', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (30, 'دو شنبه 08:05', 'آتا', 'TBZ5600', 'تبریز', 'نشست | پایان دریافت بار', 'EPTAO', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (31, 'دو شنبه 08:05', 'چابهار', 'IRU8787', 'خرم‌آباد', 'نشست | پایان دریافت بار', 'EPCBH', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (32, 'دو شنبه 08:20', 'آتا', 'TBZ5696', 'اهواز', 'نشست | پایان دریافت بار', 'EPTAP', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (33, 'دو شنبه 08:30', 'آتا', 'TBZ5609', 'تبریز', 'نشست | پایان دریافت بار', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (34, 'دو شنبه 08:30', 'آسمان', 'IRC841', 'ایلام', 'نشست | پایان دریافت بار', 'EPATF', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (35, 'دو شنبه 08:35', 'پارس ایر', 'PRS4495', 'آبادان', 'نشست | دریافت بار از نقاله', 'EPPAM', 'CRJ200', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (36, 'دو شنبه 08:50', 'آتا', 'TBZ5671', 'یزد', 'نشست | پایان دریافت بار', 'EPTAL', '737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (37, 'دو شنبه 09:00', 'وارش', 'VRH5853', 'اهواز', 'نشست | پایان دریافت بار', 'EPVAK', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (38, 'دو شنبه 09:00', 'زاگرس', 'IZG4022', 'کرمان', 'نشست | دریافت بار از نقاله', 'EPZAP', '320', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (39, 'دو شنبه 09:05', 'ایران ایر', 'IRA282', 'کرمانشاه', 'نشست | پایان دریافت بار', 'EPIDF', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (40, 'دو شنبه 09:05', 'ایران ایر', 'IRA342', 'تبریز', 'نشست | پایان دریافت بار', 'EPIEE', 'a320', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (41, 'دو شنبه 09:10', 'آتا', 'TBZ5678', 'ارومیه', 'نشست | دریافت بار از نقاله', 'EPTAF', '737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (42, 'دو شنبه 09:40', 'ایران ایر', 'IRA3384', 'سهند', 'نشست | دریافت بار از نقاله', 'EPITI', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (43, 'دو شنبه 09:50', 'قشم ایر', 'QSM1211', 'اهواز', 'تاخیر', 'EPFQF', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (44, 'دو شنبه 09:50', 'کاسپین', 'CPN6979', 'لامرد', 'نشست | دریافت بار از نقاله', 'EPCPU', 'MD82', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (45, 'دو شنبه 10:00', 'کارون', 'KRU2583', 'بهرگان', 'نشست | دریافت بار از نقاله', 'EPNFA', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (46, 'دو شنبه 10:20', 'ایران ایر', 'IRA3350', 'ایلام', 'اعلام ورود', 'EPITM', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (47, 'دو شنبه 10:25', 'قشم ایر', 'QSM1253', 'مشهد', 'طبق برنامه', 'EPFQX', 'rj100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (48, 'دو شنبه 10:30', 'زاگرس', 'IZG4010', 'شیراز', 'اعلام ورود', 'EPZAV', '320', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (49, 'دو شنبه 10:40', 'ایران ایر', 'IRA3498', 'ساری', 'نشست | دریافت بار از نقاله', 'EPITG', 'ATR-42-500', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (50, 'دو شنبه 10:45', 'آوا', 'AXV7705', 'مشهد', 'طبق برنامه', 'EPRBC', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (51, 'دو شنبه 10:50', 'کاسپین', 'CPN015', 'عسلویه', 'طبق برنامه', 'EPCPX', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (52, 'دو شنبه 10:55', 'ایران ایر', 'IRA406', 'بوشهر', 'طبق برنامه', 'EPCFM', 'FOKER100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (53, 'دو شنبه 11:00', 'آتا', 'TBZ5603', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (54, 'دو شنبه 11:10', 'پارس ایر', 'PRS4493', 'آغاجاری', 'طبق برنامه', 'EPPAC', 'CRJ200', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (55, 'دو شنبه 11:10', 'ماهان', 'IRM4537', 'اردبیل', 'طبق برنامه', 'EPMEA', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (56, 'دو شنبه 11:15', 'پارس ایر', 'PRS4407', 'شیراز', 'طبق برنامه', 'EPPRA', 'CRJ200', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (57, 'دو شنبه 11:30', 'کیش ایر', 'KIS7092', 'عسلویه', 'طبق برنامه', 'EPLCL', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (58, 'دو شنبه 11:30', 'وارش', 'VRH5809', 'اهواز', 'طبق برنامه', '', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (59, 'دو شنبه 11:40', 'پويا', 'PYA2322', 'بوشهر', 'طبق برنامه', 'EPPUE', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (60, 'دو شنبه 11:45', 'کاسپین', 'CPN045', 'كيش', 'طبق برنامه', 'EPKPB', '737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (61, 'دو شنبه 11:50', 'اروان', 'INA6733', 'بیرجند', 'طبق برنامه', 'EPAOB', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (62, 'دو شنبه 11:55', 'ایران ایر', 'IRA3493', 'مشهد', 'طبق برنامه', 'EK', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (63, 'دو شنبه 11:55', 'یزد ایر', 'DZD6896', 'یزد', 'طبق برنامه', 'EPMOC', 'BAE146', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (64, 'دو شنبه 12:00', 'آسمان', 'IRC857', 'قشم', 'طبق برنامه', 'EPAPP', '737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (65, 'دو شنبه 12:05', 'ایران ایرتور', 'IRB913', 'بندرعباس', 'طبق برنامه', 'EPMDH', 'A310', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (66, 'دو شنبه 12:15', 'ماهان', 'IRM1094', 'بندرعباس', 'طبق برنامه', 'EPMJC', 'A340', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (67, 'دو شنبه 12:30', 'ماهان', 'IRM1054', 'کرمان', 'طبق برنامه', '', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (68, 'دو شنبه 12:40', 'آتا', 'TBZ5612', 'شیراز', 'طبق برنامه', 'EPTAQ', 'MD82', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (69, 'دو شنبه 12:40', 'آتا', 'TBZ5636', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (70, 'دو شنبه 12:55', 'آساجت', 'SJT8611', 'چابهار', 'طبق برنامه', 'EPJET', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (71, 'دو شنبه 12:55', 'قشم ایر', 'QSM1225', 'كيش', 'طبق برنامه', 'EPFQV', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (72, 'دو شنبه 13:10', 'آسمان', 'IRC821', 'عسلویه', 'طبق برنامه', 'EPASR', 'FOKER100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (73, 'دو شنبه 13:15', 'زاگرس', 'IZG4012', 'اهواز', 'طبق برنامه', 'EPZAP', '320', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (74, 'دو شنبه 13:15', 'ماهان', 'IRM4596', 'کرمان', 'طبق برنامه', '', 'RJ100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (75, 'دو شنبه 13:25', 'چابهار', 'IRU8797', 'بندرعباس', 'طبق برنامه', 'EPCBH', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (76, 'دو شنبه 13:30', 'آتا', 'TBZ5634', 'اردبیل', 'طبق برنامه', 'EPTAF', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (77, 'دو شنبه 13:35', 'ایران ایر', 'IRA3322', 'رامسر', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (78, 'دو شنبه 13:45', 'کارون', 'KRU2611', 'دزفول', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (79, 'دو شنبه 13:45', 'زاگرس', 'IZG4032', 'چابهار', 'تاخیر', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (80, 'دو شنبه 13:50', 'آتا', 'TBZ5720', 'مشهد', 'طبق برنامه', 'EPTAL', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (81, 'دو شنبه 13:50', 'ساها', 'IRZ159', 'شیراز', 'تاخیر', 'EPSIJ', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (82, 'دو شنبه 13:55', 'کاسپین', 'CPN049', 'شیراز', 'طبق برنامه', 'EPCPV', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (83, 'دو شنبه 14:10', 'قشم ایر', 'QSM1290', 'کرمانشاه', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (84, 'دو شنبه 14:15', 'پارس ایر', 'PRS4405', 'شیراز', 'طبق برنامه', 'EPPAM', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (85, 'دو شنبه 14:20', 'کیش ایر', 'KIS7026', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (86, 'دو شنبه 14:25', 'کاسپین', 'CPN6987', 'زاهدان', 'طبق برنامه', 'EPCAS', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (87, 'دو شنبه 14:40', 'کیش ایر', 'KIS7068', 'مشهد', 'طبق برنامه', 'EPLCN', 'MD82', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (88, 'دو شنبه 14:45', 'ایران ایر', 'IRA457', 'بندرعباس', 'طبق برنامه', 'EPIDF', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (89, 'دو شنبه 14:45', 'وارش', 'VRH5903', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (90, 'دو شنبه 14:50', 'ایران ایر', 'IRA3335', 'اصفهان', 'طبق برنامه', '', 'ATR-72-200/210', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (91, 'دو شنبه 15:10', 'کارون', 'KRU2507', 'ماهشهر', 'طبق برنامه', 'EPJIB', '737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (92, 'دو شنبه 15:15', 'پارس ایر', 'PRS4409', 'ماهشهر', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (93, 'دو شنبه 15:20', 'کاسپین', 'CPN037', 'ارومیه', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (94, 'دو شنبه 15:25', 'ایران ایر', 'IRA494', 'اردبیل', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (95, 'دو شنبه 15:30', 'پارس ایر', 'PRS4403', 'بیرجند', 'طبق برنامه', '', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (96, 'دو شنبه 15:55', 'ماهان', 'IRM1003', 'ارومیه', 'طبق برنامه', '', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (97, 'دو شنبه 16:00', 'ماهان', 'IRM1084', 'زابل', 'طبق برنامه', 'EPMOS', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (98, 'دو شنبه 16:05', 'کاسپین', 'CPN017', 'چابهار', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (99, 'دو شنبه 16:10', 'معراج', 'MRJ2819', 'كيش', 'طبق برنامه', '', 'A319', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (100, 'دو شنبه 16:15', 'کیش ایر', 'KIS7104', 'آبادان', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (101, 'دو شنبه 16:15', 'کیش ایر', 'KIS7054', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (102, 'دو شنبه 16:20', 'وارش', 'VRH5919', 'اهواز', 'طبق برنامه', '', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (103, 'دو شنبه 16:20', 'قشم ایر', 'QSM1299', 'شیراز', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (104, 'دو شنبه 16:30', 'آوا', 'AXV7739', 'اهواز', 'طبق برنامه', 'EPRBA', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (105, 'دو شنبه 16:30', 'ماهان', 'IRM4524', 'چابهار', 'طبق برنامه', 'EPMEN', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (106, 'دو شنبه 16:35', 'ایران ایر', 'IRA233', 'شیراز', 'طبق برنامه', 'EPIEP', 'A319', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (107, 'دو شنبه 16:45', 'ایران ایر', 'IRA3491', 'شیراز', 'طبق برنامه', '', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (108, 'دو شنبه 16:50', 'زاگرس', 'IZG4050', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (109, 'دو شنبه 16:55', 'آتا', 'TBZ5645', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (110, 'دو شنبه 17:00', 'تابان', 'TBN6255', 'مشهد', 'طبق برنامه', 'EPTBF', 'md88', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (111, 'دو شنبه 17:00', 'کیش ایر', 'KIS7192', 'عسلویه', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (112, 'دو شنبه 17:05', 'فلای پرشیا', 'FPI7439', 'مشهد', 'طبق برنامه', 'EPFPC', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (113, 'دو شنبه 17:15', 'ایران ایر', 'IRA3495', 'مشهد', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (114, 'دو شنبه 17:30', 'ماهان', 'IRM1032', 'مشهد', 'طبق برنامه', 'EPMOR', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (115, 'دو شنبه 17:35', 'چابهار', 'IRU8759', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (116, 'دو شنبه 17:40', 'آساجت', 'SJT8605', 'عسلویه', 'طبق برنامه', '', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (117, 'دو شنبه 17:50', 'کارون', 'KRU2603', 'اصفهان', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (118, 'دو شنبه 18:00', 'ماهان', 'IRM1022', 'كيش', 'طبق برنامه', '', 'A300-600', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (119, 'دو شنبه 18:00', 'پويا', 'PYA2349', 'بندرعباس', 'طبق برنامه', '', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (120, 'دو شنبه 18:05', 'اروان', 'INA6705', 'مشهد', 'طبق برنامه', 'EPNSP', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (121, 'دو شنبه 18:05', 'ایران ایرتور', 'IRB917', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (122, 'دو شنبه 18:15', 'آسمان', 'IRC601', 'مشهد', 'طبق برنامه', '', 'f100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (123, 'دو شنبه 18:45', 'آسمان', 'IRC603', 'مشهد', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (124, 'دو شنبه 18:50', 'آتا', 'TBZ5628', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (125, 'دو شنبه 18:55', 'قشم ایر', 'QSM1221', 'بندرعباس', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (126, 'دو شنبه 19:00', 'آتا', 'TBZ5667', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (127, 'دو شنبه 19:05', 'ایران ایر', 'IRA3321', 'ساری', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (128, 'دو شنبه 19:20', 'ساها', 'IRZ175', 'كيش', 'تاخیر', '', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (129, 'دو شنبه 19:30', 'زاگرس', 'IZG4056', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (130, 'دو شنبه 19:35', 'چابهار', 'IRU8779', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (131, 'دو شنبه 19:40', 'پارس ایر', 'PRS4427', 'شیراز', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (132, 'دو شنبه 19:45', 'آتا', 'TBZ5669', 'یزد', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (133, 'دو شنبه 19:45', 'ایران ایر', 'IRA276', 'ارومیه', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (134, 'دو شنبه 19:50', 'وارش', 'VRH5841', 'مشهد', 'طبق برنامه', 'EPVAK', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (135, 'دو شنبه 19:50', 'آتا', 'TBZ5626', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (136, 'دو شنبه 19:50', 'ماهان', 'IRM1078', 'کرمان', 'طبق برنامه', '', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (137, 'دو شنبه 19:55', 'کیش ایر', 'KIS7114', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (138, 'دو شنبه 20:00', 'ایران ایر', 'IRA3359', 'گرگان', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (139, 'دو شنبه 20:15', 'کارون', 'KRU2509', 'ماهشهر', 'طبق برنامه', '', 'f100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (140, 'دو شنبه 20:20', 'کاسپین', 'CPN6961', 'بندرعباس', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (141, 'دو شنبه 20:25', 'ماهان', 'IRM1019', 'عسلویه', 'طبق برنامه', '', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (142, 'دو شنبه 20:30', 'کیش ایر', 'KIS7014', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (143, 'دو شنبه 20:30', 'زاگرس', 'IZG4020', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (144, 'دو شنبه 20:35', 'ایران ایر', 'IRA235', 'شیراز', 'طبق برنامه', '', 'A319', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (145, 'دو شنبه 20:45', 'کارون', 'KRU2629', 'شیراز', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (146, 'دو شنبه 20:55', 'کیش ایر', 'KIS7052', 'كيش', 'طبق برنامه', '', 'MD82', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (147, 'دو شنبه 21:00', 'آتا', 'TBZ5605', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (148, 'دو شنبه 21:20', 'آسمان', 'IRC3776', 'شیراز', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (149, 'دو شنبه 21:20', 'یزد ایر', 'DZD6882', 'یزد', 'طبق برنامه', '', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (150, 'دو شنبه 21:25', 'ماهان', 'IRM1066', 'کرمان', 'طبق برنامه', '', 'A340', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (151, 'دو شنبه 21:30', 'ماهان', 'IRM1027', 'اردبیل', 'طبق برنامه', '', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (152, 'دو شنبه 21:45', 'کاسپین', 'CPN6937', 'قشم', 'طبق برنامه', '', 'MD82', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (153, 'دو شنبه 21:55', 'قشم ایر', 'QSM1241', 'قشم', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (154, 'دو شنبه 22:00', 'اروان', 'INA6711', 'شیراز', 'طبق برنامه', '', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (155, 'دو شنبه 22:00', 'ماهان', 'IRM1001', 'تبریز', 'طبق برنامه', '', 'EMB145', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (156, 'دو شنبه 22:05', 'تابان', 'TBN6223', 'مشهد', 'طبق برنامه', '', 'md83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (157, 'دو شنبه 22:15', 'کیش ایر', 'KIS7080', 'كيش', 'طبق برنامه', '', 'MD82', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (158, 'دو شنبه 22:20', 'آسمان', 'IRC3711', 'اردبیل', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (159, 'دو شنبه 22:35', 'فلای پرشیا', 'FPI7429', 'قشم', 'طبق برنامه', '', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (160, 'دو شنبه 22:40', 'ماهان', 'IRM1052', 'کرمان', 'طبق برنامه', '', 'RJ85', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (161, 'دو شنبه 22:45', 'آسمان', 'IRC3915', 'بوشهر', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (162, 'دو شنبه 22:50', 'ایران ایر', 'IRA469', 'مشهد', 'طبق برنامه', '', 'A319', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (163, 'دو شنبه 23:00', 'کیش ایر', 'KIS7124', 'كيش', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (164, 'دو شنبه 23:00', 'وارش', 'VRH5815', 'بندرعباس', 'طبق برنامه', '', '737-700', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (165, 'دو شنبه 23:05', 'آتا', 'TBZ5647', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (166, 'دو شنبه 23:05', 'کاسپین', 'CPN041', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (167, 'دو شنبه 23:15', 'آوا', 'AXV7723', 'كيش', 'طبق برنامه', '', 'B737', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (168, 'دو شنبه 23:20', 'آتا', 'TBZ5674', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (169, 'دو شنبه 23:45', 'آتا', 'TBZ5620', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (170, 'دو شنبه 23:45', 'ایران ایر', 'IRA3332', 'رشت', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (171, 'دو شنبه 23:50', 'کارون', 'KRU2619', 'اهواز', 'طبق برنامه', '', 'F100', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (172, 'دو شنبه 23:50', 'چابهار', 'IRU8761', 'چابهار', 'طبق برنامه', '', 'md83', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (173, 'دو شنبه 23:55', 'ایران ایر', 'IRA3416', 'دزفول', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-13');
INSERT INTO `info_flight` VALUES (174, 'سه شنبه 00:05', 'ساها', 'IRZ157', 'شیراز', 'تاخیر', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (175, 'سه شنبه 00:10', 'آسمان', 'IRC3881', 'كيش', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (176, 'سه شنبه 00:15', 'ایران ایرتور', 'IRB967', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (177, 'سه شنبه 00:20', 'ماهان', 'IRM1086', 'شیراز', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (178, 'سه شنبه 00:25', 'چابهار', 'IRU8789', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (179, 'سه شنبه 00:30', 'آتا', 'TBZ5624', 'شیراز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (180, 'سه شنبه 00:35', 'وارش', 'VRH5873', 'بوشهر', 'طبق برنامه', 'EPVAV', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (181, 'سه شنبه 00:35', 'ایران ایر', 'IRA264', 'آبادان', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (182, 'سه شنبه 00:50', 'وارش', 'VRH5851', 'اهواز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (183, 'سه شنبه 01:00', 'ماهان', 'IRM4540', 'زاهدان', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (184, 'سه شنبه 01:05', 'کاسپین', 'CPN6901', 'بوشهر', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (185, 'سه شنبه 01:10', 'زاگرس', 'IZG4076', 'شیراز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (186, 'سه شنبه 01:10', 'کاسپین', 'CPN027', 'مشهد', 'طبق برنامه', '', 'MD82', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (187, 'سه شنبه 01:15', 'وارش', 'VRH5819', 'مشهد', 'تاخیر', 'EPVAA', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (188, 'سه شنبه 01:15', 'پارس ایر', 'PRS4465', 'اهواز', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (189, 'سه شنبه 01:25', 'زاگرس', 'IZG4018', 'بندرعباس', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (190, 'سه شنبه 01:50', 'کارون', 'KRU2601', 'اهواز', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (191, 'سه شنبه 02:30', 'فلای پرشیا', 'FPI7404', 'شیراز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (192, 'سه شنبه 04:00', 'وارش', 'VRH5915', 'ارومیه', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (193, 'سه شنبه 04:30', 'وارش', 'VRH5877', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (194, 'سه شنبه 05:00', 'وارش', 'VRH5871', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (195, 'سه شنبه 05:55', 'پارس ایر', 'PRS4497', 'آبادان', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (196, 'سه شنبه 06:25', 'آسمان', 'IRC3770', 'شیراز', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (197, 'سه شنبه 06:45', 'پارس ایر', 'PRS4427', 'شیراز', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (198, 'سه شنبه 06:55', 'فلای پرشیا', 'FPI7402', 'شیراز', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (199, 'سه شنبه 06:55', 'آتا', 'TBZ5730', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (200, 'سه شنبه 07:00', 'آتا', 'TBZ5601', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (201, 'سه شنبه 07:00', 'ماهان', 'IRM1050', 'کرمان', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (202, 'سه شنبه 07:05', 'ماهان', 'IRM1070', 'زاهدان', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (203, 'سه شنبه 07:15', 'پارس ایر', 'PRS4407', 'شیراز', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (204, 'سه شنبه 07:15', 'یزد ایر', 'DZD6880', 'یزد', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (205, 'سه شنبه 07:30', 'سپهران', 'SHI4311', 'مشهد', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (206, 'سه شنبه 07:40', 'ماهان', 'IRM1036', 'مشهد', 'طبق برنامه', '', '747', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (207, 'سه شنبه 07:50', 'آسمان', 'IRC863', 'یزد', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (208, 'سه شنبه 08:40', 'آتا', 'TBZ5609', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (209, 'سه شنبه 08:50', 'آتا', 'TBZ5671', 'یزد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (210, 'سه شنبه 09:00', 'آسمان', 'IRC3915', 'بوشهر', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (211, 'سه شنبه 09:00', 'وارش', 'VRH5853', 'اهواز', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (212, 'سه شنبه 09:05', 'آتا', 'TBZ5678', 'ارومیه', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (213, 'سه شنبه 09:05', 'زاگرس', 'IZG4022', 'کرمان', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (214, 'سه شنبه 09:20', 'کاسپین', 'CPN049', 'شیراز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (215, 'سه شنبه 09:30', 'اروان', 'INA6745', 'اهواز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (216, 'سه شنبه 09:40', 'آسمان', 'IRC611', 'مشهد', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (217, 'سه شنبه 10:00', 'آساجت', 'SJT8605', 'عسلویه', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (218, 'سه شنبه 10:00', 'وارش', 'VRH5817', 'بندرعباس', 'طبق برنامه', '', '737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (219, 'سه شنبه 10:05', 'ایران ایر', 'IRA473', 'کرمان', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (220, 'سه شنبه 10:20', 'چابهار', 'IRU8757', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (221, 'سه شنبه 10:25', 'چابهار', 'IRU8767', 'آبادان', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (222, 'سه شنبه 10:25', 'آوا', 'AXV7703', 'مشهد', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (223, 'سه شنبه 10:30', 'قشم ایر', 'QSM1231', 'ماهشهر', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (224, 'سه شنبه 10:40', 'پارس ایر', 'PRS4439', 'گچساران', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (225, 'سه شنبه 11:00', 'آتا', 'TBZ5603', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (226, 'سه شنبه 11:00', 'وارش', 'VRH5859', 'چابهار', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (227, 'سه شنبه 11:05', 'اروان', 'INA6715', 'بوشهر', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (228, 'سه شنبه 11:05', 'ماهان', 'IRM1007', 'خرم‌آباد', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (229, 'سه شنبه 11:10', 'ماهان', 'IRM4537', 'اردبیل', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (230, 'سه شنبه 11:10', 'ایران ایر', 'IRA3413', 'بجنورد', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (231, 'سه شنبه 11:25', 'پويا', 'PYA2341', 'شیراز', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (232, 'سه شنبه 11:30', 'کیش ایر', 'KIS7092', 'عسلویه', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (233, 'سه شنبه 11:45', 'کیش ایر', 'KIS7068', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (234, 'سه شنبه 11:45', 'پارس ایر', 'PRS4403', 'بیرجند', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (235, 'سه شنبه 11:50', 'آسمان', 'IRC857', 'قشم', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (236, 'سه شنبه 11:50', 'معراج', 'MRJ2817', 'عسلویه', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (237, 'سه شنبه 11:55', 'یزد ایر', 'DZD6896', 'یزد', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (238, 'سه شنبه 12:10', 'سپهران', 'SHI4302', 'شیراز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (239, 'سه شنبه 12:10', 'یزد ایر', 'DZD6888', 'خوی', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (240, 'سه شنبه 12:20', 'آتا', 'TBZ5701', 'جیرفت', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (241, 'سه شنبه 12:25', 'ماهان', 'IRM1054', 'کرمان', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (242, 'سه شنبه 12:30', 'ماهان', 'IRM1028', 'طبس', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (243, 'سه شنبه 12:30', 'تابان', 'TBN6253', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (244, 'سه شنبه 12:35', 'آتا', 'TBZ5607', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (245, 'سه شنبه 12:35', 'پويا', 'PYA2349', 'بندرعباس', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (246, 'سه شنبه 12:40', 'آتا', 'TBZ5628', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (247, 'سه شنبه 12:40', 'ماهان', 'IRM4550', 'سراوان', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (248, 'سه شنبه 12:45', 'پارس ایر', 'PRS4459', 'كيش', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (249, 'سه شنبه 12:50', 'آتا', 'TBZ5612', 'شیراز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (250, 'سه شنبه 13:10', 'سپهران', 'SHI4333', 'بندرعباس', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (251, 'سه شنبه 13:15', 'زاگرس', 'IZG4012', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (252, 'سه شنبه 13:20', 'قشم ایر', 'QSM1269', 'قشم', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (253, 'سه شنبه 13:30', 'تابان', 'TBN6294', 'قشم', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (254, 'سه شنبه 13:55', 'ایران ایر', 'IRA383', 'زاهدان/چابهار', 'طبق برنامه', '', 'f100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (255, 'سه شنبه 14:00', 'ایران ایرتور', 'IRB917', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (256, 'سه شنبه 14:00', 'زاگرس', 'IZG4034', 'قشم', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (257, 'سه شنبه 14:05', 'آتا', 'TBZ5620', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (258, 'سه شنبه 14:05', 'ایران ایر', 'IRA320', 'خرم‌آباد', 'طبق برنامه', '', 'f100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (259, 'سه شنبه 14:15', 'کیش ایر', 'KIS7026', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (260, 'سه شنبه 14:15', 'آتا', 'TBZ5622', 'زاهدان', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (261, 'سه شنبه 14:20', 'پارس ایر', 'PRS4495', 'آبادان', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (262, 'سه شنبه 14:20', 'کاسپین', 'CPN015', 'عسلویه', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (263, 'سه شنبه 14:30', 'آساجت', 'SJT8601', 'مشهد', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (264, 'سه شنبه 14:35', 'کاسپین', 'CPN6987', 'زاهدان', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (265, 'سه شنبه 14:40', 'قشم ایر', 'QSM1253', 'مشهد', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (266, 'سه شنبه 14:40', 'قشم ایر', 'QSM1237', 'شیراز', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (267, 'سه شنبه 14:45', 'ساها', 'IRZ159', 'شیراز', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (268, 'سه شنبه 14:50', 'پارس ایر', 'PRS4409', 'ماهشهر', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (269, 'سه شنبه 14:55', 'چابهار', 'IRU8785', 'شیراز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (270, 'سه شنبه 15:00', 'ساها', 'IRZ185', 'عسلویه', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (271, 'سه شنبه 15:10', 'ایران ایر', 'IRA327', 'لارستان', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (272, 'سه شنبه 15:15', 'تابان', 'TBN6325', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (273, 'سه شنبه 15:30', 'وارش', 'VRH5819', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (274, 'سه شنبه 15:45', 'آسمان', 'IRC631', 'گرگان', 'طبق برنامه', '', 'f100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (275, 'سه شنبه 15:50', 'ماهان', 'IRM1003', 'ارومیه', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (276, 'سه شنبه 15:50', 'چابهار', 'IRU8771', 'قشم', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (277, 'سه شنبه 15:55', 'کارون', 'KRU2505', 'خارگ', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (278, 'سه شنبه 15:55', 'معراج', 'MRJ2805', 'مشهد', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (279, 'سه شنبه 16:10', 'کاسپین', 'CPN6915', 'عسلویه', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (280, 'سه شنبه 16:15', 'کیش ایر', 'KIS7054', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (281, 'سه شنبه 16:20', 'آوا', 'AXV7723', 'كيش', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (282, 'سه شنبه 16:20', 'ماهان', 'IRM1082', 'جاسک', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (283, 'سه شنبه 16:25', 'کیش ایر', 'KIS7168', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (284, 'سه شنبه 16:25', 'آسمان', 'IRC645', 'بندرعباس', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (285, 'سه شنبه 16:35', 'ماهان', 'IRM1009', 'کرمانشاه', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (286, 'سه شنبه 16:40', 'ایران ایر', 'IRA233', 'شیراز', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (287, 'سه شنبه 16:50', 'زاگرس', 'IZG4050', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (288, 'سه شنبه 16:55', 'فلای پرشیا', 'FPI7439', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (289, 'سه شنبه 16:55', 'آتا', 'TBZ5645', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (290, 'سه شنبه 17:00', 'تابان', 'TBN6255', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (291, 'سه شنبه 17:00', 'کیش ایر', 'KIS7192', 'عسلویه', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (292, 'سه شنبه 17:05', 'کارون', 'KRU2639', 'مشهد', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (293, 'سه شنبه 17:10', 'فلای پرشیا', 'FPI7404', 'شیراز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (294, 'سه شنبه 17:15', 'قشم ایر', 'QSM1219', 'بوشهر', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (295, 'سه شنبه 17:25', 'ماهان', 'IRM1047', 'عسلویه', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (296, 'سه شنبه 17:30', 'آسمان', 'IRC3899', 'كيش', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (297, 'سه شنبه 17:30', 'معراج', 'MRJ2845', 'قشم', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (298, 'سه شنبه 17:45', 'آساجت', 'SJT8639', 'لامرد', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (299, 'سه شنبه 17:50', 'پارس ایر', 'PRS4405', 'شیراز', 'طبق برنامه', '', '18', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (300, 'سه شنبه 17:55', 'کیش ایر', 'KIS7020', 'كيش', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (301, 'سه شنبه 18:00', 'وارش', 'VRH5821', 'كيش', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (302, 'سه شنبه 18:05', 'ماهان', 'IRM1022', 'كيش', 'طبق برنامه', '', 'A300-600', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (303, 'سه شنبه 18:10', 'چابهار', 'IRU8765', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (304, 'سه شنبه 18:15', 'وارش', 'VRH5867', 'اصفهان', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (305, 'سه شنبه 18:20', 'ماهان', 'IRM1019', 'عسلویه', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (306, 'سه شنبه 18:30', 'ایران ایرتور', 'IRB963', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (307, 'سه شنبه 19:00', 'ایران ایرتور', 'IRB971', 'بوشهر', 'طبق برنامه', '', 'MD82', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (308, 'سه شنبه 19:00', 'آتا', 'TBZ5667', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (309, 'سه شنبه 19:05', 'ایران ایر', 'IRA3321', 'ساری', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (310, 'سه شنبه 19:20', 'چابهار', 'IRU8769', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (311, 'سه شنبه 19:20', 'قشم ایر', 'QSM1221', 'بندرعباس', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (312, 'سه شنبه 19:30', 'زاگرس', 'IZG4056', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (313, 'سه شنبه 19:40', 'ساها', 'IRZ173', 'بوشهر', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (314, 'سه شنبه 19:40', 'آتا', 'TBZ5630', 'مشهد', 'طبق برنامه', '', 'md83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (315, 'سه شنبه 19:45', 'آتا', 'TBZ5669', 'یزد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (316, 'سه شنبه 19:50', 'آساجت', 'SJT8661', 'لامرد', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (317, 'سه شنبه 19:50', 'سپهران', 'SHI4315', 'چابهار', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (318, 'سه شنبه 20:10', 'وارش', 'VRH5897', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (319, 'سه شنبه 20:15', 'کاسپین', 'CPN045', 'كيش', 'طبق برنامه', '', 'MD82', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (320, 'سه شنبه 20:15', 'کارون', 'KRU2509', 'ماهشهر', 'طبق برنامه', '', 'f100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (321, 'سه شنبه 20:20', 'آتا', 'TBZ5626', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (322, 'سه شنبه 20:30', 'ایران ایر', 'IRA215', 'قشم', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (323, 'سه شنبه 20:30', 'زاگرس', 'IZG4020', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (324, 'سه شنبه 20:35', 'تابان', 'TBN6226', 'بندرعباس', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (325, 'سه شنبه 20:35', 'آسمان', 'IRC3711', 'اردبیل', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (326, 'سه شنبه 20:40', 'اروان', 'INA6705', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (327, 'سه شنبه 21:00', 'چابهار', 'IRU8779', 'مشهد', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (328, 'سه شنبه 21:00', 'آتا', 'TBZ5605', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (329, 'سه شنبه 21:05', 'آوا', 'AXV7739', 'اهواز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (330, 'سه شنبه 21:15', 'قشم ایر', 'QSM1241', 'قشم', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (331, 'سه شنبه 21:20', 'یزد ایر', 'DZD6882', 'یزد', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (332, 'سه شنبه 21:25', 'ماهان', 'IRM1066', 'کرمان', 'طبق برنامه', '', 'A340', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (333, 'سه شنبه 21:30', 'کیش ایر', 'KIS7150', 'شیراز', 'طبق برنامه', '', 'MD82', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (334, 'سه شنبه 21:30', 'آسمان', 'IRC641', 'تبریز', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (335, 'سه شنبه 21:35', 'معراج', 'MRJ2824', 'تبریز', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (336, 'سه شنبه 21:35', 'پويا', 'PYA2311', 'گرگان', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (337, 'سه شنبه 21:40', 'ایران ایر', 'IRA353', 'كيش', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (338, 'سه شنبه 21:40', 'کارون', 'KRU2507', 'ماهشهر', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (339, 'سه شنبه 21:45', 'ماهان', 'IRM1027', 'اردبیل', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (340, 'سه شنبه 21:55', 'ماهان', 'IRM1001', 'تبریز', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (341, 'سه شنبه 22:00', 'پويا', 'PYA2335', 'بندرعباس', 'طبق برنامه', '', 'EMB145', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (342, 'سه شنبه 22:00', 'فلای پرشیا', 'FPI7441', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (343, 'سه شنبه 22:05', 'اروان', 'INA6711', 'شیراز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (344, 'سه شنبه 22:25', 'قشم ایر', 'QSM1251', 'مشهد', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (345, 'سه شنبه 22:25', 'پارس ایر', 'PRS5407', 'بوشهر', 'طبق برنامه', '', 'CRJ200', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (346, 'سه شنبه 22:30', 'قشم ایر', 'QSM1225', 'كيش', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (347, 'سه شنبه 22:30', 'پارس ایر', 'PRS4455', 'مشهد', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (348, 'سه شنبه 22:35', 'ساها', 'IRZ157', 'شیراز', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (349, 'سه شنبه 22:40', 'ماهان', 'IRM1052', 'کرمان', 'طبق برنامه', '', 'RJ85', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (350, 'سه شنبه 22:40', 'سپهران', 'SHI4305', 'اهواز', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (351, 'سه شنبه 22:45', 'کیش ایر', 'KIS7052', 'كيش', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (352, 'سه شنبه 22:50', 'ایران ایر', 'IRA3433', 'شیراز', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (353, 'سه شنبه 23:00', 'آتا', 'TBZ5647', 'تبریز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (354, 'سه شنبه 23:00', 'کارون', 'KRU2617', 'اهواز', 'طبق برنامه', '', 'f100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (355, 'سه شنبه 23:05', 'ایران ایر', 'IRA3332', 'رشت', 'طبق برنامه', '', 'ATR-72', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (356, 'سه شنبه 23:20', 'آسمان', 'IRC3933', 'كيش', 'طبق برنامه', '', 'B737', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (357, 'سه شنبه 23:30', 'ایران ایر', 'IRA299', 'یزد', 'طبق برنامه', '', 'A319', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (358, 'سه شنبه 23:30', 'وارش', 'VRH5841', 'مشهد', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (359, 'سه شنبه 23:35', 'آسمان', 'IRC3881', 'كيش', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (360, 'سه شنبه 23:35', 'وارش', 'VRH5815', 'بندرعباس', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (361, 'سه شنبه 23:40', 'وارش', 'VRH5837', 'شیراز', 'طبق برنامه', '', '737-700', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (362, 'سه شنبه 23:40', 'آتا', 'TBZ5636', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (363, 'سه شنبه 23:45', 'قشم ایر', 'QSM1209', 'بم', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (364, 'سه شنبه 23:50', 'ماهان', 'IRM4596', 'کرمان', 'طبق برنامه', '', 'RJ100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (365, 'سه شنبه 23:50', 'چابهار', 'IRU8793', 'اهواز', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (366, 'سه شنبه 23:55', 'کارون', 'KRU2611', 'دزفول', 'طبق برنامه', '', 'F100', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (367, 'سه شنبه 23:55', 'چابهار', 'IRU8773', 'زاهدان', 'طبق برنامه', '', 'MD83', 1, '2024-05-14');
INSERT INTO `info_flight` VALUES (368, 'دو شنبه 07:00', 'وارش', 'VRH5818', 'تهران', 'نشست | پایان دریافت بار', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (369, 'دو شنبه 07:15', 'وارش', 'VRH5856', 'تهران', 'نشست | پایان دریافت بار', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (370, 'دو شنبه 07:55', 'آسمان', 'IRC610', 'تهران', 'باطل شد', '', 'F100', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (371, 'دو شنبه 08:00', 'کیش ایر', 'KIS7069', 'تهران', 'نشست | پایان دریافت بار', '', 'MD83', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (372, 'دو شنبه 08:05', 'قشم ایر', 'QSM1252', 'تهران', 'نشست | پایان دریافت بار', '', 'F100', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (373, 'دو شنبه 08:25', 'آوا', 'AXV7704', 'تهران', 'نشست | پایان دریافت بار', '', '737-500', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (374, 'دو شنبه 08:35', 'فلای پرشیا', 'FPI7438', 'تهران', 'نشست | پایان دریافت بار', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (375, 'دو شنبه 09:00', 'ماهان', 'IRM1033', 'تهران', 'نشست | پایان دریافت بار', '', 'BAE100', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (376, 'دو شنبه 09:05', 'کاسپین', 'CPN6919', 'شیراز', 'نشست | پایان دریافت بار', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (377, 'دو شنبه 09:15', 'کاسپین', 'CPN6923', 'زاهدان', 'نشست | پایان دریافت بار', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (378, 'دو شنبه 09:15', 'ایران ایرتور', 'IRB960', 'تهران', 'نشست | پایان دریافت بار', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (379, 'دو شنبه 09:20', 'آتا', 'TBZ5729', 'تهران', 'نشست | پایان دریافت بار', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (380, 'دو شنبه 09:30', 'ایران ایر', 'IRA3492', 'تهران', 'نشست | دریافت بار از نقاله', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (381, 'دو شنبه 09:30', 'وارش', 'VRH5876', 'تهران', 'نشست | دریافت بار از نقاله', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (382, 'دو شنبه 09:45', 'تابان', 'TBN6254', 'تهران', 'نشست | دریافت بار از نقاله', '', 'MD.88', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (383, 'دو شنبه 10:15', 'کارون', 'KRU2554', 'ماهشهر', 'نشست', '', '737-300', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (384, 'دو شنبه 10:30', 'اروان', 'INA6704', 'تهران', 'اعلام ورود', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (385, 'دو شنبه 10:35', 'زاگرس', 'IZG4132', 'چابهار', 'اعلام ورود', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (386, 'دو شنبه 10:35', 'ماهان', 'IRM1040', 'زابل', 'اعلام ورود', '', 'BAE100', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (387, 'دو شنبه 11:00', 'کیش ایر', 'KIS7072', 'كيش', 'طبق برنامه', '', 'A321', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (388, 'دو شنبه 11:00', 'آسمان', 'IRC602', 'تهران', 'طبق برنامه', '', 'F100', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (389, 'دو شنبه 11:20', 'آتا', 'TBZ5719', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (390, 'دو شنبه 11:25', 'آوا', 'AXV7749', 'اهواز', 'طبق برنامه', '', '737-500', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (391, 'دو شنبه 11:30', 'وارش', 'VRH5840', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (392, 'دو شنبه 11:35', 'سپهران', 'SHI4359', 'کرمانشاه', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (393, 'دو شنبه 11:50', 'سپهران', 'SHI4322', 'بندرعباس', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (394, 'دو شنبه 11:55', 'زاگرس', 'IZG4112', 'اهواز', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (395, 'دو شنبه 12:00', 'وارش', 'VRH5909', 'یزد', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (396, 'دو شنبه 12:00', 'وارش', 'VRH5839', 'شیراز', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (397, 'دو شنبه 14:20', 'ایران ایر', 'IRA3494', 'تهران', 'طبق برنامه', '', 'ATR-72-500', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (398, 'دو شنبه 14:20', 'آتا', 'TBZ5649', 'اصفهان', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (399, 'دو شنبه 14:45', 'فلای پرشیا', 'FPI7417', 'آبادان', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (400, 'دو شنبه 15:00', 'چابهار', 'IRU8758', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (401, 'دو شنبه 15:00', 'ماهان', 'IRM1091', 'زنجان', 'طبق برنامه', '', '146-300', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (402, 'دو شنبه 15:05', 'کاسپین', 'CPN040', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (403, 'دو شنبه 15:30', 'اروان', 'INA6719', 'اصفهان', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (404, 'دو شنبه 16:00', 'آسمان', 'IRC600', 'تهران', 'طبق برنامه', '', 'F100', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (405, 'دو شنبه 16:15', 'آسمان', 'IRC3797', 'رشت', 'طبق برنامه', '', 'F100', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (406, 'دو شنبه 16:30', 'ایران ایرتور', 'IRB905', 'رشت', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (407, 'دو شنبه 16:30', 'زاگرس', 'IZG4126', 'تبریز', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (408, 'دو شنبه 17:20', 'چابهار', 'IRU8778', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (409, 'دو شنبه 17:20', 'آوا', 'AXV7751', 'كيش', 'طبق برنامه', '', '737-500', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (410, 'دو شنبه 17:30', 'وارش', 'VRH5902', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (411, 'دو شنبه 17:50', 'سپهران', 'SHI4334', 'كيش', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (412, 'دو شنبه 18:00', 'سپهران', 'SHI4357', 'تبریز', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (413, 'دو شنبه 18:10', 'کاسپین', 'CPN026', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (414, 'دو شنبه 18:10', 'آسمان', 'IRC3918', 'كيش', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (415, 'دو شنبه 19:00', 'وارش', 'VRH5811', 'اهواز', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (416, 'دو شنبه 19:15', 'تابان', 'TBN6256', 'تهران', 'طبق برنامه', '', 'MD.88', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (417, 'دو شنبه 19:45', 'زاگرس', 'IZG4108', 'اصفهان', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (418, 'دو شنبه 20:00', 'آتا', 'TBZ5749', 'اصفهان', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (419, 'دو شنبه 20:15', 'ایران ایر', 'IRA468', 'تهران', 'طبق برنامه', '', 'A319', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (420, 'دو شنبه 20:45', 'کاسپین', 'CPN6941', 'خرم‌آباد', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (421, 'دو شنبه 21:45', 'ایران ایرتور', 'IRB901', 'تبریز', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (422, 'دو شنبه 22:00', 'زاگرس', 'IZG4057', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (423, 'دو شنبه 22:05', 'آتا', 'TBZ5619', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (424, 'دو شنبه 22:15', 'ماهان', 'IRM1037', 'تهران', 'طبق برنامه', '', '747', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (425, 'دو شنبه 22:55', 'کاسپین', 'CPN6905', 'اصفهان', 'طبق برنامه', '', 'MD82', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (426, 'دو شنبه 23:50', 'سپهران', 'SHI4339', 'اهواز', 'طبق برنامه', '', 'B737', 2, '2024-05-13');
INSERT INTO `info_flight` VALUES (427, 'سه شنبه 00:10', 'سپهران', 'SHI4367', 'آبادان', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (428, 'سه شنبه 00:15', 'تابان', 'TBN6224', 'تهران', 'طبق برنامه', '', 'MD.88', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (429, 'سه شنبه 01:50', 'ایران ایرتور', 'IRB955', 'اهواز', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (430, 'سه شنبه 02:00', 'وارش', 'VRH5900', 'ساری', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (431, 'سه شنبه 02:30', 'وارش', 'VRH5910', 'ساری', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (432, 'سه شنبه 07:00', 'وارش', 'VRH5805', 'ساری', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (433, 'سه شنبه 07:30', 'ماهان', 'IRM1081', 'تهران', 'طبق برنامه', '', 'A340', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (434, 'سه شنبه 07:55', 'قشم ایر', 'QSM1252', 'تهران', 'طبق برنامه', '', 'F100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (435, 'سه شنبه 08:05', 'آوا', 'AXV7702', 'تهران', 'طبق برنامه', '', '737-500', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (436, 'سه شنبه 08:30', 'وارش', 'VRH5818', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (437, 'سه شنبه 08:35', 'فلای پرشیا', 'FPI7438', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (438, 'سه شنبه 09:20', 'آتا', 'TBZ5729', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (439, 'سه شنبه 09:25', 'کاسپین', 'CPN6923', 'زاهدان', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (440, 'سه شنبه 09:30', 'کیش ایر', 'KIS7069', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (441, 'سه شنبه 09:30', 'هواپیمایی پارس', 'PRS4457', 'آبادان', 'طبق برنامه', '', 'CRJ200', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (442, 'سه شنبه 10:45', 'کاسپین', 'CPN6927', 'عسلویه', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (443, 'سه شنبه 11:00', 'ایران ایرتور', 'IRB983', 'بوشهر', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (444, 'سه شنبه 11:30', 'وارش', 'VRH5840', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (445, 'سه شنبه 11:35', 'سپهران', 'SHI4359', 'کرمانشاه', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (446, 'سه شنبه 11:40', 'آتا', 'TBZ5619', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (447, 'سه شنبه 11:50', 'سپهران', 'SHI4322', 'بندرعباس', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (448, 'سه شنبه 12:00', 'کیش ایر', 'KIS7072', 'كيش', 'طبق برنامه', '', 'F100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (449, 'سه شنبه 12:00', 'اروان', 'INA6704', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (450, 'سه شنبه 12:00', 'آسمان', 'IRC602', 'تهران', 'طبق برنامه', '', 'F100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (451, 'سه شنبه 12:20', 'قشم ایر', 'QSM1203', 'زابل', 'طبق برنامه', '', 'F100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (452, 'سه شنبه 12:55', 'سپهران', 'SHI4334', 'كيش', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (453, 'سه شنبه 13:30', 'وارش', 'VRH5899', 'کرمان', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (454, 'سه شنبه 13:30', 'ایران ایرتور', 'IRB901', 'تبریز', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (455, 'سه شنبه 14:00', 'کیش ایر', 'KIS7169', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (456, 'سه شنبه 14:20', 'آتا', 'TBZ5649', 'اصفهان', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (457, 'سه شنبه 14:30', 'تابان', 'TBN6232', 'شیراز', 'طبق برنامه', '', 'A320', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (458, 'سه شنبه 14:45', 'فلای پرشیا', 'FPI7449', 'كيش', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (459, 'سه شنبه 16:00', 'آوا', 'AXV7749', 'اهواز', 'طبق برنامه', '', '737-500', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (460, 'سه شنبه 16:30', 'وارش', 'VRH5803', 'ساری', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (461, 'سه شنبه 16:55', 'چابهار', 'IRU8768', 'تهران', 'طبق برنامه', '', 'MD83', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (462, 'سه شنبه 17:00', 'کیش ایر', 'KIS7187', 'رشت', 'طبق برنامه', '', 'F100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (463, 'سه شنبه 17:00', 'زاگرس', 'IZG4112', 'اهواز', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (464, 'سه شنبه 17:05', 'ساها', 'IRZ170', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (465, 'سه شنبه 17:15', 'آتا', 'TBZ5629', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (466, 'سه شنبه 17:20', 'آتا', 'TBZ5719', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (467, 'سه شنبه 17:30', 'ایران ایرتور', 'IRB949', 'كيش', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (468, 'سه شنبه 17:45', 'وارش', 'VRH5902', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (469, 'سه شنبه 17:50', 'سپهران', 'SHI4357', 'تبریز', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (470, 'سه شنبه 17:55', 'آسمان', 'IRC3928', 'چابهار', 'طبق برنامه', '', 'F100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (471, 'سه شنبه 18:00', 'اروان', 'INA6739', 'آبادان', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (472, 'سه شنبه 18:00', 'کاسپین', 'CPN026', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (473, 'سه شنبه 18:00', 'پويا', 'PYA2338', 'گرگان', 'طبق برنامه', '', 'EMB145', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (474, 'سه شنبه 18:15', 'چابهار', 'IRU8778', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (475, 'سه شنبه 19:15', 'تابان', 'TBN6256', 'تهران', 'طبق برنامه', '', 'MD.88', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (476, 'سه شنبه 19:20', 'فلای پرشیا', 'FPI7440', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (477, 'سه شنبه 19:30', 'ایران ایرتور', 'IRB951', 'تبریز', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (478, 'سه شنبه 19:45', 'زاگرس', 'IZG4108', 'اصفهان', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (479, 'سه شنبه 19:55', 'قشم ایر', 'QSM1250', 'تهران', 'طبق برنامه', '', 'F100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (480, 'سه شنبه 21:30', 'وارش', 'VRH5855', 'اصفهان', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (481, 'سه شنبه 21:30', 'ماهان', 'IRM1077', 'کرمان', 'طبق برنامه', '', '146-300', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (482, 'سه شنبه 22:00', 'ماهان', 'IRM1037', 'تهران', 'طبق برنامه', '', '747', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (483, 'سه شنبه 22:00', 'زاگرس', 'IZG4057', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (484, 'سه شنبه 22:15', 'ساها', 'IRZ180', 'شیراز', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (485, 'سه شنبه 22:20', 'آتا', 'TBZ5613', 'تهران', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (486, 'سه شنبه 22:20', 'آتا', 'TBZ5652', 'اصفهان', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (487, 'سه شنبه 22:20', 'سپهران', 'SHI4310', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (488, 'سه شنبه 22:20', 'آسمان', 'IRC852', 'زاهدان', 'طبق برنامه', '', 'FOKER100', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (489, 'سه شنبه 22:45', 'وارش', 'VRH5896', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (490, 'سه شنبه 22:45', 'کاسپین', 'CPN6953', 'یزد', 'طبق برنامه', '', 'MD82', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (491, 'سه شنبه 23:30', 'سپهران', 'SHI4340', 'تهران', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (492, 'سه شنبه 23:55', 'سپهران', 'SHI4349', 'اهواز', 'طبق برنامه', '', 'B737', 2, '2024-05-14');
INSERT INTO `info_flight` VALUES (493, 'دوشنبه 01:30', 'آسمان', 'IRC3891', 'اهواز', 'نشست01:05 | پایان دریافت بار', '', '100', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (494, 'دوشنبه 05:30', 'کارون', 'KRU2671', 'اهواز', 'نشست05:55 | پایان دریافت بار', '', 'F50', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (495, 'دوشنبه 06:30', 'کاسپین', 'CPN048', 'تهران', 'نشست06:23 | پایان دریافت بار', '', 'MD80', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (496, 'دوشنبه 07:55', 'ساها', 'IRZ158', 'تهران', 'تاخیردارد10:20', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (497, 'دوشنبه 08:30', 'زاگرس', 'IZG4011', 'تهران', 'نشست08:06 | دریافت بار', '', 'MD82', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (498, 'دوشنبه 08:40', 'آسمان', 'IRC3771', 'تهران', 'نشست08:35 | پایان دریافت بار', '', '100', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (499, 'دوشنبه 09:05', 'ایران ایر', 'IRA232', 'تهران', 'نشست09:28 | پایان دریافت بار', '', 'A319', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (500, 'دوشنبه 09:30', 'وارش', 'VRH5838', 'مشهد', 'تاخیردارد10:10', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (501, 'دوشنبه 10:20', 'آتا', 'TBZ5611', 'تهران', 'طبق برنامه', '', 'MD83', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (502, 'دوشنبه 11:25', 'ساها', 'IRZ165', 'لاوان', 'طبق برنامه', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (503, 'دوشنبه 11:45', 'پارس', 'PRS4404', 'تهران', 'طبق برنامه', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (504, 'دوشنبه 11:45', 'کاسپین', 'CPN6918', 'مشهد', 'طبق برنامه', '', 'MD82', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (505, 'دوشنبه 13:20', 'قشم', 'QSM1298', 'تهران', 'طبق برنامه', '', '100', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (506, 'دوشنبه 13:30', 'ایران ایر', 'IRA234', 'تهران', 'طبق برنامه', '', 'A319', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (507, 'دوشنبه 14:00', 'آسمان', 'IRC3813', 'تبریز', 'طبق برنامه', '', '100', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (508, 'دوشنبه 14:30', 'ایران ایر', 'IRA3490', 'تهران', 'طبق برنامه', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (509, 'دوشنبه 16:30', 'کیش ایر', 'KIS7060', 'كيش', 'طبق برنامه', '', 'MD82', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (510, 'دوشنبه 17:00', 'پارس', 'PRS4426', 'تهران', 'طبق برنامه', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (511, 'دوشنبه 18:15', 'پارس', '4406a', 'تهران', 'طبق برنامه', '', 'CRJ200', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (512, 'دوشنبه 19:05', 'آسمان', 'IRC3793', 'بندرعباس', 'طبق برنامه', '', '100', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (513, 'دوشنبه 19:30', 'اروان', 'INA6710', 'تهران', 'طبق برنامه', '', 'B737-400', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (514, 'دوشنبه 19:30', 'کارون', 'KRU2628', 'تهران', 'طبق برنامه', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (515, 'دوشنبه 21:35', 'ساها', 'IRZ156', 'تهران', 'طبق برنامه', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (516, 'دوشنبه 22:15', 'آتا', 'TBZ5623', 'تهران', 'طبق برنامه', '', 'MD83', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (517, 'دوشنبه 22:30', 'پارس', 'PRS5408', 'تهران', 'طبق برنامه', '', '737', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (518, 'دوشنبه 23:10', 'زاگرس', 'IZG4077', 'تهران', 'طبق برنامه', '', 'MD80', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (519, 'دوشنبه 23:30', 'پارس', 'PRS4475', 'تبریز', 'طبق برنامه', '', 'CRJ200', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (520, 'دوشنبه 23:45', 'آسمان', 'IRC3777', 'تهران', 'طبق برنامه', '', '100', 3, '2024-05-13');
INSERT INTO `info_flight` VALUES (521, 'سه شنبه 00:50', 'فلای پرشیا', 'FPI7405', 'تهران', 'طبق برنامه', '', '737-300', 3, '2024-05-14');
INSERT INTO `info_flight` VALUES (522, 'دوشنبه 06:25', 'آتا', 'TBZ5610', 'تهران', 'نشست06:25 | پایان دریافت بار', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (523, 'دوشنبه 07:05', 'ایران ایر', 'IRA343', 'تهران', 'نشست06:45 | پایان دریافت بار', '', 'A319', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (524, 'دوشنبه 09:05', 'آتا', 'TBZ5602', 'تهران', 'نشست09:00 | پایان دریافت بار', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (525, 'دوشنبه 10:00', 'ماهان', 'IRM4560', 'اصفهان', 'نشست09:35 | پایان دریافت بار', '', 'BAE146', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (526, 'دوشنبه 10:30', 'آتا', 'TBZ5608', 'تهران', 'باطل شد', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (527, 'دوشنبه 11:35', 'آسمان', 'IRC3812', 'شیراز', 'طبق برنامه', '', '100', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (528, 'دوشنبه 12:15', 'ایران ایرتور', 'IRB900', 'مشهد', 'طبق برنامه', '', 'MD80', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (529, 'دوشنبه 13:00', 'آتا', 'TBZ5604', 'تهران', 'طبق برنامه', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (530, 'دوشنبه 13:30', 'زاگرس', 'IZG4127', 'مشهد', 'طبق برنامه', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (531, 'دوشنبه 14:40', 'آتا', 'TBZ5640', 'تهران', 'طبق برنامه', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (532, 'دوشنبه 15:00', 'سپهران', 'SHI4356', 'مشهد', 'طبق برنامه', '', '737', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (533, 'دوشنبه 17:00', 'آتا', 'TBZ5668', 'تهران', 'طبق برنامه', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (534, 'دوشنبه 18:45', 'ایران ایرتور', 'IRB973', 'كيش', 'طبق برنامه', '', 'MD82', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (535, 'دوشنبه 18:55', 'آتا', 'TBZ5646', 'تهران', 'طبق برنامه', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (536, 'دوشنبه 19:45', 'ماهان', 'IRM1002', 'تهران', 'طبق برنامه', '', '146-100', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (537, 'دوشنبه 21:00', 'آتا', 'TBZ5648', 'تهران', 'طبق برنامه', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (538, 'دوشنبه 21:00', 'پارس', 'PRS4474', 'شیراز', 'باطل شد', '', 'CRJ200', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (539, 'دوشنبه 23:00', 'آتا', 'TBZ5606', 'تهران', 'طبق برنامه', '', 'MD83', 4, '2024-05-13');
INSERT INTO `info_flight` VALUES (540, 'دوشنبه 07:10', 'ماهان', 'IRM4560', 'کرمان', 'نشست07:02 | پایان دریافت بار', '', '146-100', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (541, 'دوشنبه 07:45', 'پارس', 'PRS4443', 'آغاجاری', 'نشست07:33 | پایان دریافت بار', '', 'CRJ200', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (542, 'دوشنبه 11:50', 'آتا', 'TBZ5650', 'مشهد', 'طبق برنامه', '', 'MD83', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (543, 'دوشنبه 12:30', 'ماهان', 'IRM4561', 'تبریز', 'طبق برنامه', '', '146-100', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (544, 'دوشنبه 12:45', 'ایران ایر', 'IRA3334', 'تهران', 'طبق برنامه', '', 'ATR', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (545, 'دوشنبه 13:00', 'اروان ایر', 'INA6718', 'مشهد', 'طبق برنامه', '', 'B777', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (546, 'دوشنبه 13:45', 'کیش ایر', 'KIS7022', 'كيش', 'طبق برنامه', '', 'MD80', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (547, 'دوشنبه 16:30', 'کارون', 'KRU2623', 'اهواز', 'طبق برنامه', '', 'f100', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (548, 'دوشنبه 17:20', 'زاگرس', 'IZG4109', 'مشهد', 'طبق برنامه', '', 'MD83', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (549, 'دوشنبه 17:30', 'آتا', 'TBZ5750', 'مشهد', 'طبق برنامه', '', 'MD83', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (550, 'دوشنبه 18:45', 'کیش ایر', 'KIS7139', 'بندرعباس', 'طبق برنامه', '', 'MD80', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (551, 'دوشنبه 19:50', 'کارون', 'KRU2602', 'تهران', 'طبق برنامه', '', '100', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (552, 'دوشنبه 20:40', 'کاسپین', 'CPN6904', 'مشهد', 'طبق برنامه', '', '', 5, '2024-05-13');
INSERT INTO `info_flight` VALUES (553, 'دوشنبه 06:30', 'آتا', 'TBZ5695', 'تهران', 'نشست06:35 | پایان دریافت بار', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (554, 'دوشنبه 06:45', 'وارش', 'VRH5852', 'تهران', 'نشست06:52 | پایان دریافت بار', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (555, 'دوشنبه 07:20', 'کارون', 'KRU2670', 'شیراز', 'نشست07:45 | پایان دریافت بار', '', 'F50', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (556, 'دوشنبه 07:45', 'قشم', 'QSM1210', 'تهران', 'نشست09:00 | پایان دریافت بار', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (557, 'دوشنبه 08:40', 'آوا ایرلاین', 'AXV7738', 'تهران', 'نشست08:40 | پایان دریافت بار', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (558, 'دوشنبه 09:05', 'زاگرس', 'IZG4113', 'مشهد', 'نشست09:10 | پایان دریافت بار', '', 'MD82', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (559, 'دوشنبه 09:30', 'وارش', 'VRH5928', 'ساری', 'نشست09:33 | پایان دریافت بار', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (560, 'دوشنبه 10:30', 'آتا', 'TBZ5635', 'تهران', 'طبق برنامه', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (561, 'دوشنبه 11:15', 'زاگرس', 'IZG4013', 'تهران', 'طبق برنامه', '', 'MD82', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (562, 'دوشنبه 14:00', 'وارش', 'VRH5922', 'ساری', 'طبق برنامه', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (563, 'دوشنبه 14:15', 'کارون', 'KRU2530', 'سیری', 'طبق برنامه', '', 'f100', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (564, 'دوشنبه 14:30', 'آوا ایرلاین', 'AXV7748', 'مشهد', 'طبق برنامه', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (565, 'دوشنبه 16:00', 'وارش', 'VRH5926', 'ساری', 'طبق برنامه', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (566, 'دوشنبه 16:30', 'وارش', 'VRH5920', 'ساری', 'طبق برنامه', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (567, 'دوشنبه 16:50', 'آتا', 'TBZ5627', 'تهران', 'طبق برنامه', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (568, 'دوشنبه 17:40', 'پارس', 'PRS4444', 'تهران', 'طبق برنامه', '', 'CRJ200', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (569, 'دوشنبه 18:00', 'آتا', 'TBZ5625', 'تهران', 'طبق برنامه', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (570, 'دوشنبه 18:15', 'زاگرس', 'IZG4021', 'تهران', 'طبق برنامه', '', '', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (571, 'دوشنبه 20:55', 'سپهران', 'SHI4338', 'مشهد', 'طبق برنامه', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (572, 'دوشنبه 21:20', 'آتا', 'TBZ5673', 'تهران', 'طبق برنامه', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (573, 'دوشنبه 21:30', 'کارون', 'KRU2622', 'اصفهان', 'طبق برنامه', '', '100', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (574, 'دوشنبه 22:00', 'وارش', 'VRH5810', 'مشهد', 'طبق برنامه', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (575, 'دوشنبه 22:10', 'کارون', 'KRU2618', 'تهران', 'طبق برنامه', '', '100', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (576, 'دوشنبه 22:15', 'وارش', 'VRH5850', 'تهران', 'طبق برنامه', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (577, 'دوشنبه 22:30', 'وارش', 'VRH5918', 'تهران', 'طبق برنامه', '', '737', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (578, 'دوشنبه 22:50', 'ایران ایرتور', 'IRB954', 'مشهد', 'طبق برنامه', '', 'MD83', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (579, 'دوشنبه 23:15', 'پارس', 'PRS4417', 'زاهدان', 'طبق برنامه', '', 'CRJ200', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (580, 'دوشنبه 23:55', 'کارون', 'KRU2600', 'تهران', 'طبق برنامه', '', '733', 6, '2024-05-13');
INSERT INTO `info_flight` VALUES (581, 'سه شنبه 00:30', 'وارش', 'VRH5808', 'تهران', 'طبق برنامه', '', '737', 6, '2024-05-14');
INSERT INTO `info_flight` VALUES (582, 'سه شنبه 00:35', 'آسمان', 'IRC837', 'مشهد', 'طبق برنامه', '', '100', 6, '2024-05-14');
INSERT INTO `info_flight` VALUES (583, 'دوشنبه 01:25', 'ماهان', 'IRM1053', 'تهران', 'نشست01:20 | پایان دریافت بار', '', 'BAE146', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (584, 'دوشنبه 06:30', 'زاگرس', 'IZG4023', 'تهران', 'نشست06:48 | پایان دریافت بار', '', 'A320', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (585, 'دوشنبه 08:25', 'ایران ایر', 'IRA472', 'تهران', 'باطل شد', '', '737', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (586, 'دوشنبه 09:45', 'ماهان', 'IRM1051', 'تهران', 'نشست09:51 | دریافت بار', '', 'BAE146', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (587, 'دوشنبه 10:30', 'ماهان', 'IRM4597', 'تهران', 'طبق برنامه', '', 'RJ100', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (588, 'دوشنبه 11:15', 'پارس', 'PRS4466', 'تهران', 'باطل شد', '', '737', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (589, 'دوشنبه 14:30', 'ماهان', 'IRM4561', 'تبریز', 'طبق برنامه', '', '146-100', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (590, 'دوشنبه 18:10', 'ماهان', 'IRM1067', 'تهران', 'طبق برنامه', '', 'A300-600', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (591, 'دوشنبه 19:55', 'ماهان', 'IRM1055', 'تهران', 'طبق برنامه', '', 'BAE146', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (592, 'دوشنبه 22:35', 'ماهان', 'IRM1079', 'تهران', 'طبق برنامه', '', '146-100', 8, '2024-05-13');
INSERT INTO `info_flight` VALUES (593, 'سه شنبه 01:25', 'ماهان', 'IRM1053', 'تهران', 'طبق برنامه', '', 'BAE146', 8, '2024-05-14');
INSERT INTO `info_flight` VALUES (594, 'دوشنبه 08:30', 'ایران ایر', 'IRA3499', 'تهران', 'نشست08:26 | پایان دریافت بار', '', '', 9, '2024-05-13');
INSERT INTO `info_flight` VALUES (595, 'دوشنبه 11:30', 'وارش', 'VRH5804', 'مشهد', 'طبق برنامه', '', '737', 9, '2024-05-13');
INSERT INTO `info_flight` VALUES (596, 'دوشنبه 13:30', 'وارش', 'VRH5802', 'مشهد', 'طبق برنامه', '', '737', 9, '2024-05-13');
INSERT INTO `info_flight` VALUES (597, 'دوشنبه 14:00', 'وارش', 'VRH5901', 'مشهد', 'طبق برنامه', '', '737', 9, '2024-05-13');
INSERT INTO `info_flight` VALUES (598, 'دوشنبه 16:50', 'وارش', 'VRH5827', 'بندرعباس', 'طبق برنامه', '', '737', 9, '2024-05-13');
INSERT INTO `info_flight` VALUES (599, 'دوشنبه 17:30', 'ایران ایر', 'IRA3320', 'تهران', 'طبق برنامه', '', 'ATR', 9, '2024-05-13');
INSERT INTO `info_flight` VALUES (600, 'دوشنبه 23:59', 'وارش', 'VRH5921', 'اهواز', 'طبق برنامه', '', '737', 9, '2024-05-13');
INSERT INTO `info_flight` VALUES (601, 'سه شنبه 00:30', 'وارش', 'VRH5927', 'اهواز', 'طبق برنامه', '', '737', 9, '2024-05-14');
INSERT INTO `info_flight` VALUES (602, 'سه شنبه 01:00', 'وارش', 'VRH5928', 'اهواز', 'طبق برنامه', '', '737', 9, '2024-05-14');
INSERT INTO `info_flight` VALUES (603, 'سه شنبه 02:45', 'وارش', 'VRH5929', 'اهواز', 'طبق برنامه', '', '737', 9, '2024-05-14');
INSERT INTO `info_flight` VALUES (604, 'دوشنبه 06:50', 'آتا', 'TBZ5672', 'تهران', 'نشست06:55 | پایان دریافت بار', '', 'MD83', 10, '2024-05-13');
INSERT INTO `info_flight` VALUES (605, 'دوشنبه 09:30', 'وارش', 'VRH5908', 'مشهد', 'نشست09:35 | دریافت بار', '', '', 10, '2024-05-13');
INSERT INTO `info_flight` VALUES (606, 'دوشنبه 09:40', 'یزد ایر', 'DZD6897', 'تهران', 'نشست09:30 | پایان دریافت بار', '', '146-100', 10, '2024-05-13');
INSERT INTO `info_flight` VALUES (607, 'دوشنبه 17:40', 'آتا', 'TBZ5670', 'تهران', 'طبق برنامه', '', 'MD83', 10, '2024-05-13');
INSERT INTO `info_flight` VALUES (608, 'دوشنبه 19:15', 'یزد ایر', 'DZD6881', 'تهران', 'طبق برنامه', '', '146-100', 10, '2024-05-13');
INSERT INTO `info_flight` VALUES (609, 'دوشنبه 23:40', 'یزد ایر', 'DZD6883', 'تهران', 'طبق برنامه', '', '146-100', 10, '2024-05-13');
INSERT INTO `info_flight` VALUES (610, 'دوشنبه 07:15', 'ایران ایر', 'IRA283', 'تهران', 'نشست07:00 | پایان دریافت بار', '', '', 11, '2024-05-13');
INSERT INTO `info_flight` VALUES (611, 'دوشنبه 08:45', 'سپهران', 'SHI4358', 'مشهد', 'نشست09:10 | پایان دریافت بار', '', '', 11, '2024-05-13');
INSERT INTO `info_flight` VALUES (612, 'دوشنبه 12:10', 'قشم', 'QSM1291', 'تهران', 'طبق برنامه', '', '', 11, '2024-05-13');
INSERT INTO `info_flight` VALUES (613, 'دوشنبه 08:00', 'ایران ایرتور', 'IRB904', 'مشهد', 'نشست08:16 | پایان دریافت بار', '', '', 12, '2024-05-13');
INSERT INTO `info_flight` VALUES (614, 'دوشنبه 13:55', 'آسمان', 'IRC3796', 'مشهد', 'طبق برنامه', '', '', 12, '2024-05-13');
INSERT INTO `info_flight` VALUES (615, 'دوشنبه 14:00', 'ایران ایرتور', 'IRB927', 'كيش', 'طبق برنامه', '', '', 12, '2024-05-13');
INSERT INTO `info_flight` VALUES (616, 'دوشنبه 22:00', 'ایران ایر', 'IRA3333', 'تهران', 'طبق برنامه', '', '', 12, '2024-05-13');
INSERT INTO `info_flight` VALUES (617, 'دوشنبه 00:40', 'ماهان', 'IRM1071', 'تهران', 'نشست00:42', '', '', 13, '2024-05-13');
INSERT INTO `info_flight` VALUES (618, 'دوشنبه 06:50', 'کاسپین', 'CPN6986', 'تهران', 'نشست06:58', '', '', 13, '2024-05-13');
INSERT INTO `info_flight` VALUES (619, 'دوشنبه 11:25', 'ماهان', 'IRM4558', 'چابهار', 'طبق برنامه', '', '', 13, '2024-05-13');
INSERT INTO `info_flight` VALUES (620, 'دوشنبه 11:40', 'کاسپین', 'CPN6922', 'مشهد', 'طبق برنامه', '', '', 13, '2024-05-13');
INSERT INTO `info_flight` VALUES (621, 'دوشنبه 20:30', 'پارس', 'PRS4416', 'اهواز', 'طبق برنامه', '', '', 13, '2024-05-13');
INSERT INTO `info_flight` VALUES (622, 'دوشنبه 21:45', 'ماهان', 'IRM4541', 'تهران', 'طبق برنامه', '', '', 13, '2024-05-13');
INSERT INTO `info_flight` VALUES (623, 'سه شنبه 00:45', 'ماهان', 'IRM1071', 'تهران', 'طبق برنامه', '', 'BAE146', 13, '2024-05-14');
INSERT INTO `info_flight` VALUES (624, 'دوشنبه 00:45', 'پارس', 'PRS4494', 'تهران', 'زمان جدید01:10 | نشست01:14 | پایان دریافت بار', '', 'CRJ200', 14, '2024-05-13');
INSERT INTO `info_flight` VALUES (625, 'دوشنبه 06:30', 'پارس', 'PRS4456', 'مشهد', 'نشست07:25 | پایان دریافت بار', '', 'CRJ200', 14, '2024-05-13');
INSERT INTO `info_flight` VALUES (626, 'دوشنبه 11:45', 'فلای پرشیا', 'FPI7416', 'مشهد', 'طبق برنامه', '', 'MD83', 14, '2024-05-13');
INSERT INTO `info_flight` VALUES (627, 'دوشنبه 14:00', 'کیش ایر', 'KIS7105', 'تهران', 'طبق برنامه', '', '', 14, '2024-05-13');
INSERT INTO `info_flight` VALUES (628, 'دوشنبه 20:10', 'وارش', 'VRH5880', 'مشهد', 'باطل شد', '', '737', 14, '2024-05-13');
INSERT INTO `info_flight` VALUES (629, 'دوشنبه 21:00', 'سپهران', 'SHI4366', 'مشهد', 'طبق برنامه', '', '737', 14, '2024-05-13');
INSERT INTO `info_flight` VALUES (630, 'دوشنبه 22:10', 'ایران ایر', 'IRA265', 'تهران', 'طبق برنامه', '', '100', 14, '2024-05-13');
INSERT INTO `info_flight` VALUES (631, 'دوشنبه 08:45', 'ایران ایرتور', 'IRB912', 'تهران', 'نشست09:11 | پایان دریافت بار', '', '', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (632, 'دوشنبه 08:55', 'سپهران', 'SHI4323', 'مشهد', 'نشست08:33 | پایان دریافت بار', '', '737', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (633, 'دوشنبه 08:55', 'ماهان', 'IRM1095', 'تهران', 'نشست08:44 | پایان دریافت بار', '', 'A340', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (634, 'دوشنبه 10:30', 'پويا', 'PYA2342', 'بوشهر', 'طبق برنامه', '', 'EMB145', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (635, 'دوشنبه 10:35', 'کارون', 'KRU2560', 'لامرد', 'طبق برنامه', '', '100', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (636, 'دوشنبه 10:50', 'چابهار', 'IRU8796', 'تهران', 'طبق برنامه', '', 'MDC-DC-9-82', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (637, 'دوشنبه 12:05', 'ایران ایر', 'IRA456', 'تهران', 'طبق برنامه', '', '100', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (638, 'دوشنبه 14:00', 'وارش', 'VRH5814', 'تهران', 'طبق برنامه', '', '737-500', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (639, 'دوشنبه 15:10', 'پويا', 'PYA2348', 'تهران', 'طبق برنامه', '', 'EMB145', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (640, 'دوشنبه 16:10', 'قشم', 'QSM1220', 'تهران', 'طبق برنامه', '', '100', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (641, 'دوشنبه 16:15', 'کیش ایر', 'KIS7138', 'اصفهان', 'طبق برنامه', '', '', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (642, 'دوشنبه 17:30', 'آسمان', 'IRC3792', 'شیراز', 'طبق برنامه', '', 'f100', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (643, 'دوشنبه 17:40', 'کاسپین', 'CPN6960', 'تهران', 'طبق برنامه', '', 'MD83', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (644, 'دوشنبه 19:45', 'وارش', 'VRH5826', 'ساری', 'طبق برنامه', '', '737', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (645, 'دوشنبه 22:00', 'پويا', 'PYA2359', 'چابهار', 'طبق برنامه', '', 'EMB145', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (646, 'دوشنبه 22:35', 'زاگرس', 'IZG4019', 'تهران', 'طبق برنامه', '', '', 15, '2024-05-13');
INSERT INTO `info_flight` VALUES (647, 'دوشنبه 06:50', 'آسمان', 'IRC840', 'تهران', 'دریافت بار', '', '', 19, '2024-05-13');
INSERT INTO `info_flight` VALUES (648, 'دوشنبه 08:05', 'ایران ایر', 'IRA3351', 'تهران', 'نشست08:05', '', '', 19, '2024-05-13');
INSERT INTO `info_flight` VALUES (649, 'دوشنبه 07:25', 'آتا', 'TBZ5677', 'تهران', 'نشست07:30 | پایان دریافت بار', '', '', 20, '2024-05-13');
INSERT INTO `info_flight` VALUES (650, 'دوشنبه 13:10', 'کاسپین', 'CPN036', 'تهران', 'طبق برنامه', '', '', 20, '2024-05-13');
INSERT INTO `info_flight` VALUES (651, 'دوشنبه 13:30', 'ماهان', 'IRM1004', 'تهران', 'طبق برنامه', '', '', 20, '2024-05-13');
INSERT INTO `info_flight` VALUES (652, 'دوشنبه 17:10', 'ایران ایر', 'IRA277', 'تهران', 'طبق برنامه', '', '', 20, '2024-05-13');
INSERT INTO `info_flight` VALUES (653, 'دوشنبه 09:15', 'آسمان', 'IRC3958', 'عسلویه', 'نشست09:05 | پایان دریافت بار', '', '', 23, '2024-05-13');
INSERT INTO `info_flight` VALUES (654, 'دوشنبه 06:30', 'چابهار', 'IRU8786', 'تهران', 'نشست06:40 | پایان دریافت بار', '', '', 26, '2024-05-13');
INSERT INTO `info_flight` VALUES (655, 'دوشنبه 18:00', 'کاسپین', 'CPN6940', 'مشهد', 'طبق برنامه', '', '', 26, '2024-05-13');
INSERT INTO `info_flight` VALUES (656, 'دوشنبه 12:10', 'ماهان', 'IRM1090', 'مشهد', 'طبق برنامه', '', '146-100', 32, '2024-05-13');
INSERT INTO `info_flight` VALUES (657, 'دوشنبه 08:15', 'ماهان', 'IRM1085', 'تهران', 'نشست08:09 | پایان دریافت بار', '', 'BAE146', 34, '2024-05-13');
INSERT INTO `info_flight` VALUES (658, 'دوشنبه 13:05', 'ماهان', 'IRM1041', 'مشهد', 'طبق برنامه', '', '', 34, '2024-05-13');

-- ----------------------------
-- Table structure for passenger
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` TEXT NULL,
  `family` TEXT NULL,
  `city` TEXT NULL
);

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO `passenger` VALUES (1, 'ساناز', 'خلیلی', 'رفسنجان');

-- ----------------------------
-- Table structure for ticket_airplane
-- ----------------------------
DROP TABLE IF EXISTS `ticket_airplane`;
CREATE TABLE IF NOT EXISTS `ticket_airplane` (
  `ticket_id` INTEGER NOT NULL PRIMARY KEY,
  `flight_id` INTEGER NULL,
  `passenger_id` INTEGER NULL,
  `seat_number` TEXT NULL,
  `price` REAL NULL,
  FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  FOREIGN KEY (`flight_id`) REFERENCES `info_flight` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE INDEX IF NOT EXISTS `flight_id_idx` ON `ticket_airplane`(`flight_id`);
CREATE INDEX IF NOT EXISTS `passenger_idx` ON `ticket_airplane`(`passenger_id`);
-- ----------------------------
-- Records of ticket_airplane
-- ----------------------------

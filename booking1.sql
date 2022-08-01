-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: booking1
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `description` text,
  `image` text,
  `status` tinyint(1) DEFAULT '1',
  `sub_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_comment` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'2022-06-22 05:24:37','2022-06-22 05:24:37',0,'<p>Mộc Tr&agrave; Bar nằm ngay trong khu&ocirc;n vi&ecirc;n tiền sảnh của Kh&aacute;ch sạn, đ&acirc;y l&agrave; địa điểm l&yacute; tưởng để gặp gỡ đối t&aacute;c hay n&oacute;i chuyện với bạn b&egrave; v&agrave; thưởng thức caf&eacute;. Mộc Tr&agrave; Bar sẽ mang đến những đồ uống với hương vị l&agrave;m say l&ograve;ng người trong một kh&ocirc;ng gian sang trọng, lịch l&atilde;m .</p>\r\n\r\n<p>Sức chứa : 40 kh&aacute;ch<br />\r\nGiờ mở cửa: 8:00 &ndash; 22:00</p>\r\n\r\n<p>Vị tr&iacute;: Tầng 1</p>\r\n\r\n<p><strong>2 . Nh&agrave; h&agrave;ng Mộc Hương</strong></p>\r\n\r\n<p>Nh&agrave; h&agrave;ng Mộc Hương phục vụ buffet ăn s&aacute;ng đa dạng về ẩm thựch&agrave;ng ng&agrave;y. Nh&agrave; h&agrave;ng đem đến cho du kh&aacute;ch kh&ocirc;ng chỉ những m&oacute;n ăn ngon m&agrave; c&ograve;n những trải nghiệm v&agrave; kh&aacute;m ph&aacute; th&uacute; vị về văn h&oacute;a.<br />\r\nSức chứa: 300 kh&aacute;ch<br />\r\nGiờ mở cửa: 6:00 &ndash; 22:00<br />\r\nVị tr&iacute;: Tầng 2</p>\r\n\r\n<p><strong>3. Ph&ograve;ng ăn VIP</strong></p>\r\n\r\n<p>Tọa lạc ngay tầng 2, hệ thống 3 ph&ograve;ng ăn VIP sẽ mang đến những trải nghiệm dịch vụ ri&ecirc;ng biệt v&agrave; y&ecirc;n tĩnh, ph&ugrave; hợp cho những buổi gặp gỡ đối t&aacute;c, ng&agrave;y kỷ niệm c&aacute; nh&acirc;n hoặc c&ocirc;ng ty.<br />\r\nSức chứa: 20 kh&aacute;ch<br />\r\nGiờ mở cửa: 6:00 &ndash; 22:00.</p>\r\n','/blogs/mat_tien_.jpg',1,'Chúng tôi hiểu rằng, một đám cưới trong mơ sẽ luôn mang đậm dấu ấn cá nhân và phải thật đặc biệt như chính chủ nhân của buổi tiệc.','Wedding Concepts',0),(3,'2022-07-14 22:07:54','2022-07-14 22:07:54',0,'<p>Nhằm tri &acirc;n với qu&yacute; kh&aacute;ch h&agrave;ng trong những năm qua, kh&aacute;ch sạn Mường Thanh Quy Nhơn xin tr&acirc;n trọng b&aacute;o gi&aacute; ưu đ&atilde;i như sau: Loại ph&ograve;ng Gi&aacute; khuyến m&atilde;i Deluxe King/Twin 850.000++ VND Deluxe Triple 1.200.000++ VND Executive Suite 1.600.000++ VND Extrabed/giường phụ 300.000++ VND Thời gian Check In : Sau 14:00 AM Thời gian Check Out : Trước 12:00 AM Dịch vụ bao gồm: &ndash; Miễn ph&iacute; sử dụng internet Wifi trong kh&aacute;ch sạn. &ndash; Miễn ph&iacute; 02 chai nước lọc, tr&agrave;, cafe, bể bơi v&agrave; ph&ograve;ng tập thể dục &ndash; Trẻ em dưới 6 tuổi ở c&ugrave;ng bố mẹ, ăn s&aacute;ng miễn ph&iacute; &ndash; Trẻ em từ 6 tuổi đến dưới 12 tuổi ở c&ugrave;ng bố mẹ kh&ocirc;ng k&ecirc; th&ecirc;m giường, ăn s&aacute;ng t&iacute;nh 50%. Tối đa 2 trẻ em được ở c&ugrave;ng bố mẹ.\\</p>\r\n','/blogs/72c44b9d0ae47b2e6bc0b43493941873.jpg',1,'Siêu khuyến mãi kích cầu du lịch- Khách sạn.  Khách sạn tiêu chuẩn 4 sao đầu tiên tại TP. Quy Nhơn, tỉnh Bình Định trực thuộc...','Khuyến mãi kích cầu du lịch- Khách sạn',0),(4,'2022-06-22 05:24:37','2022-06-22 05:24:37',0,'<p>Mộc Tr&agrave; Bar nằm ngay trong khu&ocirc;n vi&ecirc;n tiền sảnh của Kh&aacute;ch sạn, đ&acirc;y l&agrave; địa điểm l&yacute; tưởng để gặp gỡ đối t&aacute;c hay n&oacute;i chuyện với bạn b&egrave; v&agrave; thưởng thức caf&eacute;. Mộc Tr&agrave; Bar sẽ mang đến những đồ uống với hương vị l&agrave;m say l&ograve;ng người trong một kh&ocirc;ng gian sang trọng, lịch l&atilde;m .</p>\r\n\r\n<p>Sức chứa : 40 kh&aacute;ch<br />\r\nGiờ mở cửa: 8:00 &ndash; 22:00</p>\r\n\r\n<p>Vị tr&iacute;: Tầng 1</p>\r\n\r\n<p><strong>2 . Nh&agrave; h&agrave;ng Mộc Hương</strong></p>\r\n\r\n<p>Nh&agrave; h&agrave;ng Mộc Hương phục vụ buffet ăn s&aacute;ng đa dạng về ẩm thựch&agrave;ng ng&agrave;y. Nh&agrave; h&agrave;ng đem đến cho du kh&aacute;ch kh&ocirc;ng chỉ những m&oacute;n ăn ngon m&agrave; c&ograve;n những trải nghiệm v&agrave; kh&aacute;m ph&aacute; th&uacute; vị về văn h&oacute;a.<br />\r\nSức chứa: 300 kh&aacute;ch<br />\r\nGiờ mở cửa: 6:00 &ndash; 22:00<br />\r\nVị tr&iacute;: Tầng 2</p>\r\n\r\n<p><strong>3. Ph&ograve;ng ăn VIP</strong></p>\r\n\r\n<p>Tọa lạc ngay tầng 2, hệ thống 3 ph&ograve;ng ăn VIP sẽ mang đến những trải nghiệm dịch vụ ri&ecirc;ng biệt v&agrave; y&ecirc;n tĩnh, ph&ugrave; hợp cho những buổi gặp gỡ đối t&aacute;c, ng&agrave;y kỷ niệm c&aacute; nh&acirc;n hoặc c&ocirc;ng ty.<br />\r\nSức chứa: 20 kh&aacute;ch<br />\r\nGiờ mở cửa: 6:00 &ndash; 22:00.</p>\r\n','/blogs/72c44b9d0ae47b2e6bc0b43493941873.jpg',1,'Khuyến mãi hệ thống khách sạn Atoli Resort toàn quốc','Khuyến mãi hệ thống khách sạn',0),(2,'2022-07-14 19:36:56','2022-07-14 19:36:56',0,'<p>T&igrave;m ph&ograve;ng hợp l&yacute; Song Hỷ C&acirc;u ch&uacute;c &ldquo;Song Hỷ L&acirc;m M&ocirc;n&rdquo; v&agrave; h&igrave;nh ảnh chữ &ldquo;Song Hỷ&rdquo; mang sắc đỏ may mắn đ&atilde; trở th&agrave;nh một biểu tượng trong văn h&oacute;a cưới hỏi &Aacute; Đ&ocirc;ng, mang &yacute; nghĩa về hai việc vui mừng của cả nh&agrave; trai v&agrave; nh&agrave; g&aacute;i, thể hiện lời ch&uacute;c ph&uacute;c của hai b&ecirc;n gia đ&igrave;nh về một cuộc sống h&ocirc;n nh&acirc;n hạnh ph&uacute;c cho đ&ocirc;i vợ chồng son. Lấy cảm hứng từ hơi thở đương đại, lễ cưới được trang ho&agrave;ng một c&aacute;ch tinh tế với những t&ocirc;ng m&agrave;u phong ph&uacute;, từ sắc đen x&aacute;m hiện đại lạ mắt, sắc đỏ sang trọng v&agrave; sắc trắng tao nh&atilde;. Đ&uacute;ng với t&ecirc;n gọi của chủ đề n&agrave;y: tất cả đều hướng tới sự ho&agrave;n mỹ. T&igrave;m ph&ograve;ng hợp l&yacute;T&igrave;m ph&ograve;ng hợp l&yacute; T&igrave;m ph&ograve;ng hợp l&yacute;Song Hỷ C&acirc;u ch&uacute;c &ldquo;Song Hỷ L&acirc;m M&ocirc;n&rdquo; v&agrave; h&igrave;nh ảnh chữ &ldquo;Song Hỷ&rdquo; mang sắc đỏ may mắn đ&atilde; trở th&agrave;nh một biểu tượng trong văn h&oacute;a cưới hỏi &Aacute; Đ&ocirc;ng, mang &yacute; nghĩa về hai việc vui mừng của cả nh&agrave; trai v&agrave; nh&agrave; g&aacute;i, thể hiện lời ch&uacute;c ph&uacute;c của hai b&ecirc;n gia đ&igrave;nh về một cuộc sống h&ocirc;n nh&acirc;n hạnh ph&uacute;c cho đ&ocirc;i vợ chồng son. Lấy cảm hứng từ hơi thở đương đại, lễ cưới được trang ho&agrave;ng một c&aacute;ch tinh tế với những t&ocirc;ng m&agrave;u phong ph&uacute;, từ sắc đen x&aacute;m hiện đại lạ mắt, sắc đỏ sang trọng v&agrave; sắc trắng tao nh&atilde;. Đ&uacute;ng với t&ecirc;n gọi của chủ đề n&agrave;y: tất cả đều hướng tới sự ho&agrave;n mỹ.</p>\r\n\r\n<p>Với 15 ph&ograve;ng spa v&agrave; massage, Thảo Mộc Spa sẽ mang đến cho du kh&aacute;ch những liệu ph&aacute;p phục hồi từ thi&ecirc;n nhi&ecirc;n kết hợp chặt chẽ với sự am hiểu về Y học để tạo ra hiệu quả phục hồi tốt nhất.<br />\r\nVị tr&iacute; : Tầng 1 v&agrave; tầng 2.<br />\r\nGiờ mở cửa: 10:00 &ndash; 23:00</p>\r\n','/blogs/Capture.PNG',1,'Tìm phòng hợp lý là nhu cầu thiết yếu, Chúng tôi hiểu rằng, một đám cưới trong mơ sẽ luôn mang đậm dấu ấn cá nhân và phải thật đặc biệt...','Tìm phòng hợp lý',0),(5,'2022-07-14 22:07:54','2022-07-14 22:07:54',0,'<p>Nhằm tri &acirc;n với qu&yacute; kh&aacute;ch h&agrave;ng trong những năm qua, kh&aacute;ch sạn Mường Thanh Quy Nhơn xin tr&acirc;n trọng b&aacute;o gi&aacute; ưu đ&atilde;i như sau: Loại ph&ograve;ng Gi&aacute; khuyến m&atilde;i Deluxe King/Twin 850.000++ VND Deluxe Triple 1.200.000++ VND Executive Suite 1.600.000++ VND Extrabed/giường phụ 300.000++ VND Thời gian Check In : Sau 14:00 AM Thời gian Check Out : Trước 12:00 AM Dịch vụ bao gồm: &ndash; Miễn ph&iacute; sử dụng internet Wifi trong kh&aacute;ch sạn. &ndash; Miễn ph&iacute; 02 chai nước lọc, tr&agrave;, cafe, bể bơi v&agrave; ph&ograve;ng tập thể dục &ndash; Trẻ em dưới 6 tuổi ở c&ugrave;ng bố mẹ, ăn s&aacute;ng miễn ph&iacute; &ndash; Trẻ em từ 6 tuổi đến dưới 12 tuổi ở c&ugrave;ng bố mẹ kh&ocirc;ng k&ecirc; th&ecirc;m giường, ăn s&aacute;ng t&iacute;nh 50%. Tối đa 2 trẻ em được ở c&ugrave;ng bố mẹ.\\</p>\r\n','/blogs/72c44b9d0ae47b2e6bc0b43493941873.jpg',1,'Combo Phú Quốc 3 ngày 2 đêm, Combo Phú Quốc 3N2D – Vé máy bay Hà Nội – Phú Quốc khứ hồi & Phòng khách sạn','Combo Phú Quốc 3 ngày 2 đêm',0),(6,'2022-07-14 19:36:56','2022-07-14 19:36:56',0,'<p>T&igrave;m ph&ograve;ng hợp l&yacute; Song Hỷ C&acirc;u ch&uacute;c &ldquo;Song Hỷ L&acirc;m M&ocirc;n&rdquo; v&agrave; h&igrave;nh ảnh chữ &ldquo;Song Hỷ&rdquo; mang sắc đỏ may mắn đ&atilde; trở th&agrave;nh một biểu tượng trong văn h&oacute;a cưới hỏi &Aacute; Đ&ocirc;ng, mang &yacute; nghĩa về hai việc vui mừng của cả nh&agrave; trai v&agrave; nh&agrave; g&aacute;i, thể hiện lời ch&uacute;c ph&uacute;c của hai b&ecirc;n gia đ&igrave;nh về một cuộc sống h&ocirc;n nh&acirc;n hạnh ph&uacute;c cho đ&ocirc;i vợ chồng son. Lấy cảm hứng từ hơi thở đương đại, lễ cưới được trang ho&agrave;ng một c&aacute;ch tinh tế với những t&ocirc;ng m&agrave;u phong ph&uacute;, từ sắc đen x&aacute;m hiện đại lạ mắt, sắc đỏ sang trọng v&agrave; sắc trắng tao nh&atilde;. Đ&uacute;ng với t&ecirc;n gọi của chủ đề n&agrave;y: tất cả đều hướng tới sự ho&agrave;n mỹ. T&igrave;m ph&ograve;ng hợp l&yacute;T&igrave;m ph&ograve;ng hợp l&yacute; T&igrave;m ph&ograve;ng hợp l&yacute;Song Hỷ C&acirc;u ch&uacute;c &ldquo;Song Hỷ L&acirc;m M&ocirc;n&rdquo; v&agrave; h&igrave;nh ảnh chữ &ldquo;Song Hỷ&rdquo; mang sắc đỏ may mắn đ&atilde; trở th&agrave;nh một biểu tượng trong văn h&oacute;a cưới hỏi &Aacute; Đ&ocirc;ng, mang &yacute; nghĩa về hai việc vui mừng của cả nh&agrave; trai v&agrave; nh&agrave; g&aacute;i, thể hiện lời ch&uacute;c ph&uacute;c của hai b&ecirc;n gia đ&igrave;nh về một cuộc sống h&ocirc;n nh&acirc;n hạnh ph&uacute;c cho đ&ocirc;i vợ chồng son. Lấy cảm hứng từ hơi thở đương đại, lễ cưới được trang ho&agrave;ng một c&aacute;ch tinh tế với những t&ocirc;ng m&agrave;u phong ph&uacute;, từ sắc đen x&aacute;m hiện đại lạ mắt, sắc đỏ sang trọng v&agrave; sắc trắng tao nh&atilde;. Đ&uacute;ng với t&ecirc;n gọi của chủ đề n&agrave;y: tất cả đều hướng tới sự ho&agrave;n mỹ.</p>\r\n\r\n<p>Với 15 ph&ograve;ng spa v&agrave; massage, Thảo Mộc Spa sẽ mang đến cho du kh&aacute;ch những liệu ph&aacute;p phục hồi từ thi&ecirc;n nhi&ecirc;n kết hợp chặt chẽ với sự am hiểu về Y học để tạo ra hiệu quả phục hồi tốt nhất.<br />\r\nVị tr&iacute; : Tầng 1 v&agrave; tầng 2.<br />\r\nGiờ mở cửa: 10:00 &ndash; 23:00</p>\r\n','/blogs/Capture.PNG',1,'Sapa Combo 3N2D – Vé xe Hà Nội – Sapa khứ hồi & Phòng khách sạn Atoli Resort Sapa + Ăn sáng','Combo khám phá Sapa 3 ngày 2 đêm',0);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `date_checkin` date DEFAULT NULL,
  `date_checkout` date DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_of_person` int NOT NULL,
  `number_of_room` int NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `room_id` bigint DEFAULT NULL,
  `deleted_flg` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'2022-06-22 02:00:13','2022-06-22 02:00:13',3,'2022-07-13','2022-07-22',1,'hoangthanhcong@gmail.com','Hoàng Thanh công',0,4,'Chưa thanh toán',160000,'Cao cấp','Chưa nhận phòng',3,1),(2,'2022-07-12 22:41:40','2022-07-12 22:41:40',3,'2022-07-17','2022-07-19',1,'quang@gmail.com','quang',0,1,'Đã thanh toán',1500000,'Cơ bản','Đã rời phòng',3,0),(3,'2022-07-12 23:36:19','2022-07-12 23:36:19',1,'2022-07-15','2022-07-22',1,'lan@gmail.com','lan',0,1,'Đã thanh toán',170000,'Cơ bản','Đã nhận phòng',1,0),(4,'2022-07-12 23:44:30','2022-07-12 23:44:30',2,'2022-07-12','2022-07-13',1,'khuyen@gmail.com','Nguyễn Văn Khuyên',0,8,'Chưa thanh toán',120000,'Cơ bản','Đã rời phòng',20,0),(5,'2022-07-12 23:44:59','2022-07-12 23:44:59',3,'2022-07-12','2022-07-13',1,'khung@gmail.com','Nguyễn Văn Khuyên',0,1,'Đã thanh toán',130000,'Cơ bản','Đã nhận phòng',3,0),(7,'2022-07-14 23:13:22','2022-07-14 23:13:22',3,'2022-07-18','2022-07-20',1,'phankhoan@gmail.com','Nguyễn Van Khoan',4,4,'Chưa thanh toán',20000000,'Cao cấp','Chưa nhận phòng',3,0),(8,'2022-07-17 13:41:07','2022-07-17 13:41:07',6,'2022-07-25','2022-07-23',1,'phanhoanzgfgf@gmail.com','Nguyễn Văn Hoang',1,1,'Chưa thanh toán',460000,'Cơ bản','Chưa nhận phòng',6,0),(47,'2022-07-17 22:46:37','2022-07-17 22:46:37',2,'2022-07-18','2022-07-29',0,'phanho2221an.vnu@gmail.com','Nguyễn Văn Hoang',5,0,'Chưa thanh toán',2400000,'Cơ bản','Đã nhận phòng',2,0),(46,'2022-07-17 22:33:14','2022-07-17 22:33:14',1,'2022-08-01','2022-08-06',0,'phanho555an.vnu@gmail.com','Nguyễn Van Khoan',1,0,'Chưa thanh toán',3600000,'Cơ bản','Chưa nhận phòng',1,0),(43,'2022-07-17 22:29:40','2022-07-17 22:29:40',6,'2022-07-18','2022-07-25',0,'phanhoa232n.vnu@gmail.com','Nguyễn Văn Khuyên',1,1,'Chưa thanh toán',1600000,'Cơ bản','Chưa nhận phòng',6,0),(42,'2022-07-17 22:25:48','2022-07-17 22:25:48',10,'2022-07-23','2022-07-29',0,'phanhoan2.vnu@gmail.com','Nguyễn Văn Khuyên',1,0,'Chưa thanh toán',1400000,'Cơ bản','Chưa nhận phòng',22,0),(48,'2022-07-18 21:35:37','2022-07-18 21:35:37',1,'2022-07-19','2022-07-30',0,'phanhoan12.vnu@gmail.com','Nguyễn Van Khoan',1,0,'Chưa thanh toán',3600000,'Cơ bản','Chưa nhận phòng',9,0),(58,'2022-07-18 23:05:01','2022-07-18 23:05:01',2,'2022-07-25','2022-07-27',0,'phanhoan.vnu@gmail.com','Nguyễn Văn Khuyên',1,1,'Chưa thanh toán',600000,'Cơ bản','Chưa nhận phòng',13,0),(61,'2022-07-24 10:48:21','2022-07-24 10:48:21',28,'2022-07-22','2022-07-26',0,'anguyenthixuan96@gmail.com','Nguyễn Văn Khuyên',4,0,'Chưa thanh toán',2500000,'Cao cấp','Chưa nhận phòng',45,0),(62,'2022-06-22 02:00:13','2022-06-22 02:00:13',3,'2022-07-13','2022-07-22',1,'hoangthanhcong@gmail.com','Hoàng Thanh công',0,4,'Chưa thanh toán',160000,'Cao cấp','Chưa nhận phòng',3,0),(63,'2022-07-12 22:41:40','2022-07-12 22:41:40',3,'2022-07-17','2022-07-19',1,'quang@gmail.com','quang',0,1,'Đã thanh toán',1500000,'Cơ bản','Đã rời phòng',3,0),(64,'2022-07-12 23:36:19','2022-07-12 23:36:19',1,'2022-07-15','2022-07-22',1,'lan@gmail.com','lan',0,1,'Đã thanh toán',170000,'Cơ bản','Đã nhận phòng',1,0),(65,'2022-07-12 23:44:30','2022-07-12 23:44:30',2,'2022-07-12','2022-07-13',1,'khuyen@gmail.com','Nguyễn Văn Khuyên',0,8,'Chưa thanh toán',120000,'Cơ bản','Đã rời phòng',20,0),(66,'2022-07-12 23:44:59','2022-07-12 23:44:59',3,'2022-07-12','2022-07-13',1,'khung@gmail.com','Nguyễn Văn Khuyên',0,1,'Đã thanh toán',130000,'Cơ bản','Đã nhận phòng',3,0),(67,'2022-07-14 23:13:22','2022-07-14 23:13:22',3,'2022-07-18','2022-07-20',1,'phankhoan@gmail.com','Nguyễn Van Khoan',4,4,'Chưa thanh toán',20000000,'Cao cấp','Chưa nhận phòng',3,0),(68,'2022-07-17 13:41:07','2022-07-17 13:41:07',6,'2022-07-25','2022-07-23',1,'phanhoanzgfgf@gmail.com','Nguyễn Văn Hoang',1,1,'Chưa thanh toán',460000,'Cơ bản','Chưa nhận phòng',6,0),(69,'2022-07-17 22:46:37','2022-07-17 22:46:37',2,'2022-07-18','2022-07-29',0,'phanho2221an.vnu@gmail.com','Nguyễn Văn Hoang',1,6,'Chưa thanh toán',2400000,'Cơ bản','Chưa nhận phòng',2,0),(70,'2022-07-17 22:33:14','2022-07-17 22:33:14',1,'2022-07-20','2022-07-31',0,'phanho555an.vnu@gmail.com','Nguyễn Van Khoan',1,1,'Chưa thanh toán',3600000,'Cơ bản','Chưa nhận phòng',1,0),(71,'2022-07-17 22:29:40','2022-07-17 22:29:40',6,'2022-07-18','2022-07-25',0,'phanhoa232n.vnu@gmail.com','Nguyễn Văn Khuyên',1,1,'Chưa thanh toán',1600000,'Cơ bản','Chưa nhận phòng',6,0),(72,'2022-07-17 22:25:48','2022-07-17 22:25:48',10,'2022-07-23','2022-07-29',0,'phanhoan2.vnu@gmail.com','Nguyễn Văn Khuyên',1,1,'Chưa thanh toán',1400000,'Cơ bản','Chưa nhận phòng',10,0),(73,'2022-07-18 21:35:37','2022-07-18 21:35:37',1,'2022-07-19','2022-07-30',0,'phanhoan12.vnu@gmail.com','Nguyễn Van Khoan',1,0,'Chưa thanh toán',3600000,'Cơ bản','Chưa nhận phòng',1,0),(74,'2022-07-18 23:05:01','2022-07-18 23:05:01',2,'2022-07-25','2022-07-27',0,'phanhoan.vnu@gmail.com','Nguyễn Văn Khuyên',1,1,'Chưa thanh toán',600000,'Cơ bản','Chưa nhận phòng',13,0),(75,'2022-07-24 10:48:21','2022-07-24 10:48:21',28,'2022-07-22','2022-07-26',0,'anguyenthixuan96@gmail.com','Nguyễn Văn Khuyên',4,0,'Chưa thanh toán',2500000,'Cao cấp','Chưa nhận phòng',45,0),(76,'2022-07-24 16:04:31','2022-07-24 16:04:31',29,'2022-08-01','2022-08-02',0,'testadmin@gmail.com','Nguyễn Hạnh',5,0,'Chưa thanh toán',400000,'Cao cấp','Chưa nhận phòng',14,0),(77,'2022-07-24 16:53:02','2022-07-24 16:53:02',30,'2022-07-25','2022-07-30',0,'khoankhoan@gmail.com','Nguyễn Van Khoan',3,0,'Chưa thanh toán',1800000,'Cơ bản','Chưa nhận phòng',12,0),(78,'2022-07-24 16:56:02','2022-07-24 16:56:02',31,'2022-07-26','2022-07-30',0,'hanhquang@gmail.com','Nguyễn Hạnh Quang',1,0,'Chưa thanh toán',1500000,'Cơ bản','Chưa nhận phòng',13,0);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_room`
--

DROP TABLE IF EXISTS `comment_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) DEFAULT NULL,
  `message` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `reply_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9uds0al9lwjtwx1regiegmdjn` (`message`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_room`
--

LOCK TABLES `comment_room` WRITE;
/*!40000 ALTER TABLE `comment_room` DISABLE KEYS */;
INSERT INTO `comment_room` VALUES (1,'2022-06-22 02:08:29','2022-06-22 02:08:29',0,'lethevinh@gmail.com','Phòng rất tốt','Lê Thế Vinh',3);
/*!40000 ALTER TABLE `comment_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `blog_id` bigint NOT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) DEFAULT NULL,
  `message` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1okoilyd2fe2lmdqj01rdn14b` (`message`),
  KEY `FK9aakob3a7aghrm94k9kmbrjqd` (`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) DEFAULT NULL,
  `message` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_b7q9eiiv8r3gr874udbomealf` (`message`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'2022-07-14 18:20:10','2022-07-14 18:20:10',NULL,0,'phanhoan.vnu@gmail.com','Còn phòng trông không nhỉ','Phan Van Hoan',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` text,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rfbvkrffamfql7cjmen8v976v` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'2022-06-22 01:23:39','2022-06-22 01:23:39','Hà Đông, Hà Nội, Việt Nam',NULL,NULL,0,'nguyenkhoan@gmail.com','123552254525','Nguyễn Van Khoan','038777555',120000.00),(2,'2022-06-22 01:24:10','2022-06-22 01:24:10','Hà Đông, Hà Nội, Việt Nam',NULL,NULL,0,'phaneee@gmail.com','123552254525','Lương Thế Mỹ','096472334',190000.00),(3,'2022-06-22 01:24:34','2022-06-22 01:24:34','Hà Nội',NULL,NULL,0,'phamvanthai@gmail.com','','Phạm Văn Thái','096322226',120000.00),(4,'2022-06-22 01:25:03','2022-06-22 01:25:03','Hà Nam',NULL,NULL,0,'phanhoang@gmail.com','222222','Phạm Tiến Nam','0968300399',170000.00),(5,'2022-06-22 01:25:36','2022-06-22 01:25:36','Bình Dương',NULL,NULL,0,'nguyenvanthanh@gmail.com','','Nguyễn Văn Thành','096473333',140000.00),(6,'2022-06-22 01:27:28','2022-06-22 01:27:28','Hải Phòng',NULL,NULL,0,'lebadinh@gmail.com','','Lê Bá Đinh','0965888999',120000.00),(7,'2022-06-22 01:28:00','2022-06-22 01:28:00','Thanh Hóa',NULL,NULL,0,'qqhien@gmail.com','','Quy Thị  Hiền','099847722',120000.00),(8,'2022-06-22 01:28:33','2022-06-22 01:28:33','Nghệ An',NULL,NULL,0,'luongvanbang@gmail.com','','Lương Văn Bằng','0965932032',120000.00),(9,'2022-06-22 02:00:13','2022-06-22 02:00:13','Đà Nẵng',NULL,NULL,0,'hoangthanhcong@gmail.com','123552254525','Hoàng Thanh công','0965932031',150000.00),(10,'2022-07-13 20:18:48','2022-07-13 20:18:48','8 Co Nhue, Ha Noi, Viet Nam',NULL,NULL,0,'nguyenkhuyen@gmail.com1','123552254525','Nguyễn Văn Hoang','0385676505',120000.00),(11,'2022-07-14 22:41:01','2022-07-14 22:41:01','14 Co Nhue, Ha Noi, Viet Nam',NULL,NULL,0,'phancong@gmail.com','222222','Phan Van Cong','0387776555',120000.00),(12,'2022-07-17 13:41:07','2022-07-17 13:43:11',NULL,NULL,NULL,0,'phanhoanzgfgf@gmail.com',NULL,'Nguyễn Văn Hoang','0',320000.00),(13,'2022-07-17 22:09:09','2022-07-17 22:09:09','178 Co Nhue, Ha Noi, Viet Nam',NULL,NULL,0,'phanho2an.vnu@gmail.com','123552254525','Phan Van Hoan','0387756506',0.00),(14,'2022-07-17 22:28:52','2022-07-17 22:28:52','43 Co Nhue, Ha Noi, Viet Nam',NULL,NULL,0,'phanhoa2n.vnu@gmail.com','','cong cong','0383456506',0.00),(15,'2022-07-17 22:46:42','2022-07-17 22:46:42',NULL,NULL,NULL,0,'phanho2221an.vnu@gmail.com',NULL,'Nguyễn Văn Hoang','0',2400000.00),(16,'2022-07-17 22:50:00','2022-07-17 22:50:00',' Ha Noi, Viet Nam',NULL,NULL,0,'nguyenhsanh@gmail.com','123552254525','Nguyễn Văn Khuyên','03873436506',0.00),(17,'2022-07-18 21:35:37','2022-07-18 21:35:37',NULL,NULL,NULL,0,'phanhoan12.vnu@gmail.com',NULL,'Nguyễn Van Khoan','0',3600000.00),(18,'2022-07-18 22:42:52','2022-07-18 22:42:52',NULL,NULL,NULL,0,'phanh2oan.vnu@gmail.com',NULL,'Nguyễn Hạnh','0',800000.00),(19,'2022-07-18 22:46:30','2022-07-18 22:46:30',NULL,NULL,NULL,0,'phan23121hoan.vnu@gmail.com',NULL,'Nguyễn Van Khoan','0',800000.00),(28,'2022-07-24 10:48:21','2022-07-24 10:48:21',NULL,NULL,NULL,0,'anguyenthixuan96@gmail.com',NULL,'Nguyễn Văn Khuyên','0',2500000.00),(29,'2022-07-24 16:04:31','2022-07-24 16:04:31','178 Cổ Nhuế, Bắc Từ Liêm, Hà Nội',NULL,NULL,0,'testadmin@gmail.com','','Nguyễn Hạnh','038756045',480000.00),(30,'2022-07-24 16:53:08','2022-07-24 16:53:08',NULL,NULL,NULL,0,'khoankhoan@gmail.com',NULL,'Nguyễn Van Khoan','0',1800000.00),(31,'2022-07-24 16:56:02','2022-07-24 16:56:02',NULL,NULL,NULL,0,'hanhquang@gmail.com',NULL,'Nguyễn Hạnh Quang','0',1500000.00);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,NULL,NULL,'ADMIN'),(2,NULL,NULL,'USER'),(3,NULL,NULL,'CREATOR'),(4,NULL,NULL,'CUSTOMER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_details`
--

DROP TABLE IF EXISTS `room_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `price` double NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKos85t2tqc3afvhll2y7klvyrh` (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_details`
--

LOCK TABLES `room_details` WRITE;
/*!40000 ALTER TABLE `room_details` DISABLE KEYS */;
INSERT INTO `room_details` VALUES (1,'2022-06-21 00:57:27','2022-06-22 00:57:27',1,160000,'Cơ bản',1),(2,'2022-06-21 01:06:55','2022-06-22 01:06:55',1,230000,'Cơ bản',2),(3,'2022-06-21 01:49:37','2022-06-22 01:49:37',1,10000000,'Cao cấp',3),(4,'2022-07-12 21:23:24','2022-07-13 21:23:24',1,150000,'Cao cấp',4),(5,'2022-07-12 21:25:02','2022-07-13 21:25:02',1,500000,'Cao cấp',5);
/*!40000 ALTER TABLE `room_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_images`
--

DROP TABLE IF EXISTS `room_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_path` text,
  `name` varchar(255) DEFAULT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtky1jnwoh1hv50m263p2vlt0y` (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_images`
--

LOCK TABLES `room_images` WRITE;
/*!40000 ALTER TABLE `room_images` DISABLE KEYS */;
INSERT INTO `room_images` VALUES (1,'2022-06-22 01:49:37','2022-06-22 01:49:37','/rooms/room-details-img1.jpg','room-details-img1.jpg',3),(2,'2022-06-22 01:49:37','2022-06-22 01:49:37','/rooms/room-details-img2.jpg','room-details-img2.jpg',3),(3,'2022-06-22 01:49:37','2022-06-22 01:49:37','/rooms/room-details-img3.jpg','room-details-img3.jpg',3),(4,'2022-07-13 21:23:24','2022-07-13 21:23:24','/rooms/logo.png','logo.png',4),(5,'2022-07-13 21:25:02','2022-07-13 21:25:02','/rooms/logo.png','logo.png',5),(6,'2022-07-14 21:56:48','2022-07-14 21:56:48','/rooms/20211130165225.jpg','20211130165225.jpg',1),(7,'2022-07-14 21:56:57','2022-07-14 21:56:57','/rooms/Capture.PNG','Capture.PNG',2),(8,'2022-07-14 21:57:06','2022-07-14 21:57:06','/rooms/buffet-khách-sạn-5-sao-2.jpg','buffet-khách-sạn-5-sao-2.jpg',3),(9,'2022-07-14 21:57:19','2022-07-14 21:57:19','/rooms/buffet-khách-sạn-5-sao-2.jpg','buffet-khách-sạn-5-sao-2.jpg',4),(10,'2022-07-14 22:14:49','2022-07-14 22:14:49','/rooms/Capture.PNG','Capture.PNG',5),(11,'2022-07-14 22:45:32','2022-07-14 22:45:32','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','72c44b9d0ae47b2e6bc0b43493941873.jpg',1),(12,'2022-07-14 22:48:30','2022-07-14 22:48:30','/rooms/khach-san-melissa-ninh-binh-c.jpg','khach-san-melissa-ninh-binh-c.jpg',2),(13,'2022-07-14 22:48:43','2022-07-14 22:48:43','/rooms/4406a970306a452300f94532410dab2c.jpg','4406a970306a452300f94532410dab2c.jpg',3),(14,'2022-07-14 22:48:58','2022-07-14 22:48:58','/rooms/mat_tien_.jpg','mat_tien_.jpg',4),(15,'2022-07-17 19:11:51','2022-07-17 19:11:51','/rooms/khach-san-melissa-ninh-binh-c.jpg','khach-san-melissa-ninh-binh-c.jpg',2),(16,'2022-07-18 22:05:29','2022-07-18 22:05:29','/rooms/4406a970306a452300f94532410dab2c.jpg','4406a970306a452300f94532410dab2c.jpg',3),(17,'2022-07-18 22:06:02','2022-07-18 22:06:02','/rooms/4406a970306a452300f94532410dab2c.jpg','4406a970306a452300f94532410dab2c.jpg',3),(18,'2022-07-18 22:06:02','2022-07-18 22:06:02','/rooms/Capture.PNG','Capture.PNG',3),(19,'2022-07-18 22:06:02','2022-07-18 22:06:02','/rooms/khach-san-melissa-ninh-binh-c.jpg','khach-san-melissa-ninh-binh-c.jpg',3),(20,'2022-07-18 22:06:02','2022-07-18 22:06:02','/rooms/mat_tien_.jpg','mat_tien_.jpg',3),(21,'2022-07-19 23:48:14','2022-07-19 23:48:14','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','72c44b9d0ae47b2e6bc0b43493941873.jpg',36),(22,'2022-07-19 23:48:14','2022-07-19 23:48:14','/rooms/4406a970306a452300f94532410dab2c.jpg','4406a970306a452300f94532410dab2c.jpg',36),(23,'2022-07-19 23:48:14','2022-07-19 23:48:14','/rooms/Capture.PNG','Capture.PNG',36),(24,'2022-07-19 23:48:14','2022-07-19 23:48:14','/rooms/khach-san-melissa-ninh-binh-c.jpg','khach-san-melissa-ninh-binh-c.jpg',36),(25,'2022-07-19 23:48:14','2022-07-19 23:48:14','/rooms/mat_tien_.jpg','mat_tien_.jpg',36),(26,'2022-07-19 23:51:16','2022-07-19 23:51:16','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','72c44b9d0ae47b2e6bc0b43493941873.jpg',31),(27,'2022-07-19 23:51:16','2022-07-19 23:51:16','/rooms/4406a970306a452300f94532410dab2c.jpg','4406a970306a452300f94532410dab2c.jpg',31),(28,'2022-07-19 23:51:16','2022-07-19 23:51:16','/rooms/20211130165225.jpg','20211130165225.jpg',31),(29,'2022-07-19 23:51:16','2022-07-19 23:51:16','/rooms/Capture.PNG','Capture.PNG',31),(30,'2022-07-19 23:51:16','2022-07-19 23:51:16','/rooms/khach-san-melissa-ninh-binh-c.jpg','khach-san-melissa-ninh-binh-c.jpg',31),(31,'2022-07-19 23:51:16','2022-07-19 23:51:16','/rooms/mat_tien_.jpg','mat_tien_.jpg',31);
/*!40000 ALTER TABLE `room_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_tags`
--

DROP TABLE IF EXISTS `room_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm17dd7dtsrw0uf8fpk6pm5jcu` (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_tags`
--

LOCK TABLES `room_tags` WRITE;
/*!40000 ALTER TABLE `room_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `bed_size` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `sub_description` text,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` text,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `number_amount` int NOT NULL,
  `price` double NOT NULL,
  `room_size` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `room_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P101',5,300000,'50m2','m2','Cơ bản'),(2,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/mat_tien_.jpg','Hà Nội','P102',5,200000,'30m2','m2','Cơ bản'),(3,'2022-06-22 01:49:37','2022-06-22 01:49:37','Smallsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>','/rooms/mat_tien_.jpg','14 Cổ nhuế','P103',2,100000,'20m2','m2','Cao cấp'),(4,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P104',5,500000,'50m2','m2','Cao cấp'),(5,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P105',5,120000,'60m2','m2','Cao cấp'),(6,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P106',5,300000,'50m2','m2','Cơ bản'),(7,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/mat_tien_.jpg','Hà Nội','P201',5,200000,'30m2','m2','Cơ bản'),(8,'2022-06-22 01:49:37','2022-06-22 01:49:37','Smallsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','14 Cổ nhuế','P202',2,100000,'20m2','m2','Cao cấp'),(9,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P203',5,500000,'50m2','m2','Cao cấp'),(10,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P204',5,120000,'60m2','m2','Cao cấp'),(11,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P205',5,120000,'60m2','m2','Cao cấp'),(12,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P206',5,300000,'50m2','m2','Cơ bản'),(13,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P301',5,300000,'50m2','m2','Cơ bản'),(14,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/mat_tien_.jpg','Hà Nội','P302',5,200000,'30m2','m2','Cơ bản'),(15,'2022-06-22 01:49:37','2022-06-22 01:49:37','Smallsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','14 Cổ nhuế','P303',2,100000,'20m2','m2','Cao cấp'),(16,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P304',5,500000,'50m2','m2','Cao cấp'),(17,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P305',5,120000,'60m2','m2','Cao cấp'),(18,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P306',5,300000,'50m2','m2','Cơ bản'),(19,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/4406a970306a452300f94532410dab2c.jpg','Hà Nội','P401',5,200000,'30m2','m2','Cơ bản'),(20,'2022-06-22 01:49:37','2022-06-22 01:49:37','Smallsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','14 Cổ nhuế','P402',2,100000,'20m2','m2','Cao cấp'),(21,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P403',5,500000,'50m2','m2','Cao cấp'),(22,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P404',5,120000,'60m2','m2','Cao cấp'),(23,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P405',5,120000,'60m2','m2','Cao cấp'),(24,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P406',5,300000,'50m2','m2','Cơ bản'),(25,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P501',5,300000,'50m2','m2','Cơ bản'),(26,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/mat_tien_.jpg','Hà Nội','P502',5,200000,'30m2','m2','Cơ bản'),(27,'2022-06-22 01:49:37','2022-06-22 01:49:37','Smallsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','14 Cổ nhuế','P503',2,100000,'20m2','m2','Cao cấp'),(28,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P504',5,500000,'50m2','m2','Cao cấp'),(29,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P505',5,120000,'60m2','m2','Cao cấp'),(30,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P506',5,300000,'50m2','m2','Cơ bản'),(31,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/4406a970306a452300f94532410dab2c.jpg','Hà Nội','P601',5,200000,'30m2','m2','Cơ bản'),(33,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P603',5,500000,'50m2','m2','Cao cấp'),(34,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P604',5,120000,'60m2','m2','Cao cấp'),(35,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P605',5,120000,'60m2','m2','Cao cấp'),(36,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/4406a970306a452300f94532410dab2c.jpg','Hà Nội','P606',5,300000,'50m2','m2','Cơ bản'),(37,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P701',5,300000,'50m2','m2','Cơ bản'),(38,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/mat_tien_.jpg','Hà Nội','P702',5,200000,'30m2','m2','Cơ bản'),(39,'2022-06-22 01:49:37','2022-06-22 01:49:37','Smallsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','14 Cổ nhuế','P703',2,100000,'20m2','m2','Cao cấp'),(40,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P704',5,500000,'50m2','m2','Cao cấp'),(41,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P705',5,120000,'60m2','m2','Cao cấp'),(42,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P706',5,300000,'50m2','m2','Cơ bản'),(43,'2022-06-22 01:06:55','2022-06-22 01:06:55','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phú hợp với 4-5 người ở,\r\nKhi ở trong phòng sẽ được tạo cảm giác giống như ở nhà, \r\nKhác sạn nằm ở trung tâm du lịch nên có nhiều khung cảnh tuyệt vời để bạn cùng người thân có thể khám phá','/rooms/mat_tien_.jpg','Hà Nội','P801',5,200000,'30m2','m2','Cơ bản'),(44,'2022-06-22 01:49:37','2022-06-22 01:49:37','Smallsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','14 Cổ nhuế','P802',2,100000,'20m2','m2','Cao cấp'),(45,'2022-07-13 21:23:24','2022-07-13 21:23:24','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/Capture.PNG','Hà Nội','P803',5,500000,'50m2','m2','Cao cấp'),(46,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P804',5,120000,'60m2','m2','Cao cấp'),(47,'2022-07-13 21:25:02','2022-07-13 21:25:02','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Lễ tân khách sạn là công việc mơ ước của rất nhiều bạn trẻ. Vị trí này không những yêu cầu cao về kỹ năng, chuyên môn mà cần phải có ngoại hình khá, bù lại thì công việc khá ổn định với mức lương khá. Bảng mô tả công việc lễ tân khách sạn sau đây sẽ cung cấp chi tiết hơn cho bạn về vị trí này. ','/rooms/72c44b9d0ae47b2e6bc0b43493941873.jpg','Hà Nội','P805',5,120000,'60m2','m2','Cao cấp'),(48,'2022-06-22 00:57:27','2022-06-22 00:57:27','Kingsize',0,'Phòng có thết kế sang trọng phù hợp cho hộ gia đình đi cùng nhau du lịch ...','Phòng có thiết kế sang trọng phù hợp với 3-4 người ở ','/rooms/Capture.PNG','Hà Nội','P806',5,300000,'50m2','m2','Cơ bản');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content` text,
  `deleted` tinyint(1) DEFAULT '0',
  `icon` text,
  `image` text,
  `sort_description` text,
  `status` tinyint(1) DEFAULT '1',
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'2022-06-22 03:06:25','2022-06-22 03:06:25','<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n',0,'flaticon-hotel','/services/4406a970306a452300f94532410dab2c.jpg','Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.',1,' Đặt phòng khách sạn vào những nơi mong muốn'),(2,'2022-06-22 03:18:49','2022-06-22 03:18:49','<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>test</p>\r\n',0,'flaticon-resort','/services/Tieu-chuan-dich-vu-khach-san-5-sao-01.jpg','Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.',1,'Đặt chỗ nghỉ dưỡng tại một địa điểm tốt và phù hợp'),(16,'2022-07-14 21:26:15','2022-07-14 21:26:15','<p>Nền tảng Quản l&yacute; &amp; Kinh doanh Du lịch c&oacute; thị phần số 1 tại Việt nam. Giải ph&aacute;p c&ocirc;ng nghệ&nbsp;<em>kh&aacute;ch sạn</em>&nbsp;h&agrave;ng đầu Việt Nam. Tiết Kiệm Thời Gian. T&iacute;ch H...',1,'flaticon-resort1','/services/73a3b30f4d614ac6b387e2710f02426a.png','Các tiện ích tạo nên nổi bật tại Atoli Resort Phú Quốc Hotel 5*',1,'Các tiện ích tạo nên nổi bật tại Atoli Resort Phú Quốc Hotel 5*'),(17,'2022-07-14 21:27:54','2022-07-14 21:27:54','<p>Ph&ograve;ng hội thảo với diện t&iacute;ch kh&aacute;c nhau được trang bị thiết bị nghe nh&igrave;n mới nhất sẽ cung cấp cho bạn sự lựa chọn đa dạng với sức chứa từ 50 &ndash; 1000 người. Tất cả sẽ...</p>\r\n',0,'flaticon-resort1','/services/Capture.PNG','Dịch vụ hội nghị, hội thảo, tổ chức sự kiện tại Khách sạn Mường Thanh Luxury Nha Trang: Du lịch kết hợp hội họp, tour…',0,'Dịch vụ hội nghị, hội thảo, tổ chức sự kiện tại Khách sạn Nha Trang:'),(15,'2022-07-14 21:21:21','2022-07-14 21:21:21','<p>Dịch vụ ăn uống tại ph&ograve;ng li&ecirc;n tục phục vụ Qu&yacute; kh&aacute;ch suốt 24 tiếng hằng ng&agrave;y. Kh&aacute;ch sạn ch&uacute;ng t&ocirc;i cung cấp tận t&igrave;nh v&agrave; chu đ&aacute;o c&aacute;c dịch v...',0,'flaticon-businessmen','/services/do-an-khach-san-marriot-ha-noi.jpg','Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.',1,'Dịch vụ tiện ích nổi bật tại Atoli Resort Luxury Nha Trang Hotel 5*'),(14,'2022-06-22 03:18:49','2022-06-22 03:18:49','<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ th...</p>\r\n',0,'flaticon-resort1','/services/Tieu-chuan-dich-vu-khach-san-5-sao-01.jpg','Dịch vụ đồ ăn tại phòng là dịch vụ không thể thiếu khi vào khách sạn.  Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng.',1,'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn.'),(10,'2022-07-14 21:21:21','2022-07-14 21:21:21','<p>Dịch vụ ăn uống tại ph&ograve;ng li&ecirc;n tục phục vụ Qu&yacute; kh&aacute;ch suốt 24 tiếng hằng ng&agrave;y. Kh&aacute;ch sạn ch&uacute;ng t&ocirc;i cung cấp tận t&igrave;nh v&agrave; chu đ&aacute;o c&aacute;c dịch vụ ăn l&uacute;c s&aacute;ng sớm, ăn khuya, bữa ăn ri&ecirc;ng d&agrave;nh cho hai kh&aacute;ch, hoặc c&aacute;c bữa tiệc gặp gỡ ngay tại ch&iacute;nh căn ph&ograve;ng của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>Thực đơn phong ph&uacute; với v&ocirc; v&agrave;n sự lựa chọn đa dạng về c&aacute;c m&oacute;n ăn ngon v&agrave; c&oacute; lợi cho sức khỏe. Kh&aacute;ch sạn ch&uacute;ng t&ocirc;i c&ograve;n cung cấp thực đơn đặc biệt d&agrave;nh cho kh&aacute;ch trẻ em với nhiều m&oacute;n ăn ngon v&agrave; hấp dẫn.</p>\r\n',0,'flaticon-businessmen','/services/mat_tien_.jpg','Dịch vụ đồ ăn tại phòng là dịch vụ không thể thiếu khi vào khách sạn ',1,'Dịch vụ đồ ăn tại phòng'),(11,'2022-07-14 21:26:15','2022-07-14 21:26:15','<p>Nền tảng Quản l&yacute; &amp; Kinh doanh Du lịch c&oacute; thị phần số 1 tại Việt nam. Giải ph&aacute;p c&ocirc;ng nghệ&nbsp;<em>kh&aacute;ch sạn</em>&nbsp;h&agrave;ng đầu Việt Nam. Tiết Kiệm Thời Gian. T&iacute;ch Hợp C&aacute;c Phần Cứng. Tăng Thương Hiệu Cho KSan. Kết Nối Tổng Đ&agrave;i, Kh&oacute;a Từ. Quản L&yacute; Tr&ecirc;n Di Động.</p>\r\n\r\n<h3>Gi&uacute;p tiếc kiệm thơi gian cũng như chi ph&iacute; của Kh&aacute;ch h&agrave;ng</h3>\r\n',0,'flaticon-businessmen','/services/73a3b30f4d614ac6b387e2710f02426a.png','Dịch vụ thanh toán tiền qua card',1,'Dịch vụ thanh toán tiền qua card'),(12,'2022-07-14 21:27:54','2022-07-14 21:27:54','<p>Ph&ograve;ng hội thảo với diện t&iacute;ch kh&aacute;c nhau được trang bị thiết bị nghe nh&igrave;n mới nhất sẽ cung cấp cho bạn sự lựa chọn đa dạng với sức chứa từ 50 &ndash; 1000 người. Tất cả sẽ gi&uacute;p bạn tổ chức hội thảo, hội nghị cấp cao, họp b&aacute;o, tiệc cưới, hay buổi ra mắt sản phẩm mới một c&aacute;ch ho&agrave;n hảo</p>\r\n\r\n<p><strong>&ndash; Ph&ograve;ng họp Vĩnh Trường</strong><br />\r\nVị tr&iacute;: Tầng 4<br />\r\nDiện t&iacute;ch: 110 m2<br />\r\nSức chứa tối đa: 220</p>\r\n\r\n<p><em>C&aacute;c kiểu sắp xếp ph&ograve;ng họp v&agrave; sức chứa :</em><br />\r\n+ Rạp h&aacute;t : 220 người.<br />\r\n+ Lớp học : 120 người.<br />\r\n+ Chữ U : 28 người.<br />\r\n+ Tiệc : 120 người.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1111</p>\r\n',0,'flaticon-hotel','/services/Capture.PNG','Dịch vụ hội nghị, hội thảo, tổ chức sự kiện tại Khách sạn Mường Thanh Luxury Nha Trang: Du lịch kết hợp hội họp, tour…',0,'Dịch vụ hội nghị, hội thảo, tổ chức sự kiện tại Khách sạn 5*'),(13,'2022-06-22 03:06:25','2022-06-22 03:06:25','<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ th...',0,'flaticon-hotel','/services/Capture.PNG','Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.',1,'Trải nghiệm dịch vụ tiệc cưới tại Atoli Resort Phương Đông');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` text,
  `birthday` date DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) NOT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `name` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2022-06-07 22:30:07','2022-06-07 22:30:07','Hà Nội',NULL,'1997-06-07',0,'admin@gmail.com',1,'admin','$2a$10$1zLb2sLNFftjtVD/LYL0aOSDTugz4.fickbclfcCI72dwhBX.WaRG','admin'),(2,'2022-07-14 19:58:11','2022-07-14 19:58:11','Phú Thọ',NULL,'1997-06-07',0,'nguyenhoang@gmail.com',1,'nguyenhoan97','$2a$10$cX3JvES.i2ZEl44xI7DPOO78df8dvB1vnL.AVOQ0A/j90NjzaVJYC','nguyenhoan97'),(3,'2022-07-14 19:59:27','2022-07-14 19:59:27','An Giang',NULL,'1997-06-07',0,'phanquang@gmail.com',1,'Phan Van Hoang','$2a$10$YXUk7OeNNbCgsr2kmRoUcORyfX1vnDl26qs0sCwj5tmR/IUK4S.mi','admin2'),(4,'2022-07-14 20:02:04','2022-07-14 20:02:04','16 Co Nhue, Ha Noi, Viet Nam',NULL,'1997-06-07',0,'nguyenxuanon@gmail.com',1,'Nguyễn Xuân Ôn','$2a$10$cdYOcZlgkzAcE/LtQw59pO.UzgS8DarCV8seQK0yQOU/RVKbrQeMu','nguyenxuanon'),(9,'2022-07-14 19:59:27','2022-07-14 19:59:27','An Giang',NULL,NULL,0,'phanquang2@gmail.comg',1,'Phan Van Hoang','$2a$10$YXUk7OeNNbCgsr2kmRoUcORyfX1vnDl26qs0sCwj5tmR/IUK4S.mi','admin2'),(5,'2022-07-14 19:58:11','2022-07-14 19:58:11','Phú Thọ',NULL,'1997-06-07',0,'nguyenhoang1@gmail.com',1,'Nguyễn Văn Hoang','$2a$10$cX3JvES.i2ZEl44xI7DPOO78df8dvB1vnL.AVOQ0A/j90NjzaVJYC','nguyenhoan971'),(6,'2022-07-14 19:59:27','2022-07-14 19:59:27','An Giang',NULL,'1997-06-07',0,'phanhoang1@gmail.com',1,'Phan Van Hoang','$2a$10$YXUk7OeNNbCgsr2kmRoUcORyfX1vnDl26qs0sCwj5tmR/IUK4S.mi','admin21'),(7,'2022-07-14 20:02:04','2022-07-14 20:02:04','16 Co Nhue, Ha Noi, Viet Nam',NULL,'1997-06-07',0,'nguyenxuanon1@gmail.com',1,'Nguyễn Xuân Ôn','$2a$10$cdYOcZlgkzAcE/LtQw59pO.UzgS8DarCV8seQK0yQOU/RVKbrQeMu','nguyenxuanon1'),(10,'2022-07-14 20:02:04','2022-07-14 20:02:04','16 Co Nhue, Ha Noi, Viet Nam',NULL,NULL,0,'nguyenxuanon3@gmail.com',1,'Nguyễn Xuân Ôn','$2a$10$cdYOcZlgkzAcE/LtQw59pO.UzgS8DarCV8seQK0yQOU/RVKbrQeMu','nguyenxuanon'),(11,'2022-07-14 19:58:11','2022-07-14 19:58:11','Phú Thọ',NULL,NULL,0,'nguyenhoang4@gmail.com',1,'Nguyễn Văn Hoang','$2a$10$cX3JvES.i2ZEl44xI7DPOO78df8dvB1vnL.AVOQ0A/j90NjzaVJYC','nguyenhoan971'),(12,'2022-07-14 19:59:27','2022-07-14 19:59:27','An Giang',NULL,NULL,0,'phanhoang5@gmail.comg',1,'Phan Van Hoang','$2a$10$YXUk7OeNNbCgsr2kmRoUcORyfX1vnDl26qs0sCwj5tmR/IUK4S.mi','admin21'),(13,'2022-07-14 20:02:04','2022-07-14 20:02:04','16 Co Nhue, Ha Noi, Viet Nam',NULL,NULL,0,'nguyenxuanon6@gmail.com',1,'Nguyễn Xuân Ôn','$2a$10$cdYOcZlgkzAcE/LtQw59pO.UzgS8DarCV8seQK0yQOU/RVKbrQeMu','nguyenxuanon1'),(8,'2022-07-14 19:58:11','2022-07-14 19:58:11','Phú Thọ',NULL,NULL,0,'nguyenhoang12@gmail.com',1,'Nguyễn Văn Hoang','$2a$10$cX3JvES.i2ZEl44xI7DPOO78df8dvB1vnL.AVOQ0A/j90NjzaVJYC','nguyenhoan972');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(2,5),(3,3),(4,1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-25  5:57:42

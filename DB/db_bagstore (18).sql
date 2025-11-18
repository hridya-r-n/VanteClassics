-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 05:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bagstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminreg`
--

CREATE TABLE `tbl_adminreg` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_contact` varchar(10) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_pwd` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_adminreg`
--

INSERT INTO `tbl_adminreg` (`admin_id`, `admin_name`, `admin_contact`, `admin_email`, `admin_pwd`) VALUES
(2, 'Hridya', '9495076195', 'hridyarnair04@gmail.com', 'Hridya@1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign`
--

CREATE TABLE `tbl_assign` (
  `assign_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `designer_id` int(11) NOT NULL,
  `assign_image` varchar(100) NOT NULL,
  `assign_msg` varchar(300) NOT NULL,
  `assign_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_assign`
--

INSERT INTO `tbl_assign` (`assign_id`, `request_id`, `assign_date`, `designer_id`, `assign_image`, `assign_msg`, `assign_status`) VALUES
(12, 5, '2024-09-20', 3, 'college5.jpeg', '', 2),
(13, 3, '2024-09-25', 3, 'delilah.jpg', '', 2),
(14, 5, '2024-09-27', 3, 'lexi.jpeg', '', 1),
(15, 9, '2024-09-27', 3, 'delilah.jpg', '', 2),
(16, 6, '2024-09-27', 3, 'harmony.jpg', '', 3),
(17, 10, '2024-09-28', 3, 'b4079daf9a4dfe11b4bbf93828b37167.jpg', '', 3),
(18, 13, '2024-09-29', 3, 'lexi.jpeg', '', 2),
(19, 14, '2024-09-29', 3, '', '', 0),
(20, 15, '2024-09-29', 3, 'harmony.jpg', '', 2),
(21, 0, '2024-10-04', 3, '', '', 0),
(22, 17, '2024-10-04', 3, '', '', 0),
(23, 19, '2024-11-06', 3, 'Becca-2.jpeg', '', 2),
(24, 22, '2024-11-08', 3, 'b4079daf9a4dfe11b4bbf93828b37167.jpg', 'null', 3),
(25, 23, '2024-11-08', 3, 'Becca-2.jpeg', '', 2),
(26, 24, '2024-12-04', 3, 'custom final.jpg', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(11) NOT NULL,
  `booking_date` varchar(10) NOT NULL,
  `booking_amount` int(11) NOT NULL,
  `booking_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `booking_date`, `booking_amount`, `booking_status`, `user_id`) VALUES
(13, '2024-10-25', 1300, 2, 3),
(18, '2024-11-08', 2000, 2, 3),
(19, '2024-12-04', 4500, 2, 3),
(20, '2024-12-04', 5000, 2, 4),
(21, '2024-12-04', 2000, 2, 4),
(22, '2024-12-13', 1300, 1, 3),
(23, '', 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_qty` int(11) NOT NULL DEFAULT 1,
  `cart_status` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `cart_qty`, `cart_status`, `product_id`, `booking_id`) VALUES
(21, 1, 7, 1, 13),
(22, 1, 4, 1, 14),
(23, 1, 3, 1, 15),
(24, 1, 1, 1, 16),
(25, 2, 1, 1, 17),
(26, 1, 4, 4, 18),
(28, 1, 4, 8, 19),
(29, 1, 4, 4, 19),
(30, 1, 4, 10, 20),
(31, 1, 1, 4, 21),
(32, 1, 1, 1, 22),
(33, 1, 0, 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(3, 'Backpack'),
(5, 'Handbag'),
(7, 'Work Bag');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(5, 'Red'),
(7, 'White'),
(8, 'Beige'),
(9, 'Black'),
(10, 'Green'),
(11, 'Pink'),
(12, 'Tan'),
(13, 'Navy Blue'),
(14, 'Lavender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaint_content` varchar(500) NOT NULL,
  `complaint_date` varchar(10) NOT NULL,
  `complaint_status` int(11) NOT NULL DEFAULT 0,
  `complaint_reply` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `complaint_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`complaint_id`, `complaint_content`, `complaint_date`, `complaint_status`, `complaint_reply`, `user_id`, `product_id`, `complaint_file`) VALUES
(7, 'there was no zipper in one compartment', '2024-11-08', 1, 'We truly appologize for the defect.Your return request is being processed ', 3, 1, 'harmony1.jpg'),
(8, 'The straps were torn', '2024-12-04', 0, '', 3, 4, 'delilah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designer`
--

CREATE TABLE `tbl_designer` (
  `designer_id` int(11) NOT NULL,
  `designer_name` varchar(30) NOT NULL,
  `designer_email` varchar(30) NOT NULL,
  `designer_contact` varchar(10) NOT NULL,
  `designer_password` varchar(10) NOT NULL,
  `designer_address` varchar(100) NOT NULL,
  `designer_photo` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_designer`
--

INSERT INTO `tbl_designer` (`designer_id`, `designer_name`, `designer_email`, `designer_contact`, `designer_password`, `designer_address`, `designer_photo`, `place_id`, `manufacturer_id`) VALUES
(3, 'Adhya', 'adhya1704@gmail.com', '7546985488', 'Adhya@01', 'Shop No. 15, Temple View Arcade\r\nNear Chottanikkara Devi Temple\r\nChottanikkara, Ernakulam', 'user-profile-icon-free-vector.jpg', 5, 3),
(5, 'Anagha Suresh', 'naturennnnn076@gmail.com', '8467857511', 'Anagha71', 'dfhgb', 'codeglitch-gif.gif', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(2, 'Kollam'),
(3, 'Ernakulam'),
(4, 'Kottayam'),
(5, 'Idukki');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_image` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `gallery_image`, `product_id`) VALUES
(3, '', 0),
(7, 'Screenshot 2024-09-28 195511.png', 4),
(8, 'Screenshot 2024-09-28 195535.png', 4),
(9, 'delilah.jpg', 4),
(10, 'Becca-1.jpeg', 7),
(11, 'Becca-2.jpeg', 7),
(12, 'lexi2.jpg', 6),
(13, 'lexi 1.jpg', 6),
(14, 'liza1.jpg', 3),
(17, 'Trawoc2.jpg', 9),
(18, 'Rrawoc1.jpg', 9),
(19, 'harmony1.jpg', 1),
(20, 'harmony2.jpg', 1),
(21, 'Sloane1.jpg', 10),
(22, 'Sloane2.jpg', 10),
(23, 'Sloane3.jpg', 10),
(25, 'Sprinter daypack2.jpg', 8),
(28, 'Sprinter daypack1.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE `tbl_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `manufacturer_name` varchar(50) NOT NULL,
  `manufacturer_vstatus` int(11) NOT NULL DEFAULT 0,
  `manufacturer_email` varchar(30) NOT NULL,
  `manufacturer_password` varchar(10) NOT NULL,
  `manufacturer_address` varchar(120) NOT NULL,
  `manufacturer_logo` varchar(100) NOT NULL,
  `manufacturer_proof` varchar(100) NOT NULL,
  `manufacturer_doj` varchar(10) NOT NULL,
  `manufacturer_contact` varchar(10) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_vstatus`, `manufacturer_email`, `manufacturer_password`, `manufacturer_address`, `manufacturer_logo`, `manufacturer_proof`, `manufacturer_doj`, `manufacturer_contact`, `place_id`) VALUES
(1, 'Velora', 2, 'bniir@gmail.com', '87654321', 'Shop No. 15, LK Arcade\r\nNear Private Bus Stand\r\nKothamangalam, Ernakulam', 'log.jpg', 'Velloraproof.jpg', '2024-05-22', '1234567890', 4),
(2, 'HeraCraft', 1, 'hradyaeldhose23@gmail.com', 'Hradya44', 'Hera plaza\r\nCollege Road\r\nKothamangalam,Ernakulam', 'logo2.jpg', 'HeraCraftproof.jpg', '2024-05-23', '8245763891', 4),
(3, 'Allure ', 1, 'aleenareji002@gmail.com', 'Aleena@4', 'CK Complex Kacherithazham \r\nMuvattupuzha P.O Muvattupuzha', 'logo1.jpeg', 'Allureproof.jpg', '2024-05-24', '856678985', 2),
(4, 'Packistry', 0, 'parthivcreations84@gmail.com', 'Parthiv@09', 'Sunrise plaza \r\nMain Market Road\r\nPala,Kottayam\r\n', 'packlogo.jpg', 'packlogo.jpg', '2024-12-03', '7765443575', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_material`
--

CREATE TABLE `tbl_material` (
  `material_id` int(11) NOT NULL,
  `material_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_material`
--

INSERT INTO `tbl_material` (`material_id`, `material_name`) VALUES
(2, 'Leather'),
(5, ' Jute'),
(6, 'Polyester'),
(7, 'Nylon'),
(8, 'PU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(2, 'Muvattupuzha', 3),
(3, 'Pala', 4),
(4, 'Kothamangalam', 3),
(5, 'Chottanikkara', 3),
(7, 'Thodupuzha', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_description` varchar(250) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_photo` varchar(100) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `product_vstatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_description`, `product_price`, `product_photo`, `subcategory_id`, `manufacturer_id`, `material_id`, `color_id`, `product_vstatus`) VALUES
(1, 'harmony', 'A modern twist to your classic design, our Harmony Handbag is the perfect addition to your comfortable everyday look. It is roomy enough to fit everything you need, and the turn-lock closure keeps them secure.', 1300, 'harmony.jpg', 7, 3, 2, 8, 1),
(3, 'liza', 'You can\'t go wrong with a statement crossbody bag and Liza is just what you need. Featuring a polished python texture and bold metallic accents,', 1500, 'liza.jpg', 9, 2, 2, 9, 1),
(4, 'Delilah', 'Edgy and elegant, our Delilah Crossbody Bag is a perfect blend of style and sophistication that will elevate your outfits instantly. Quilted texture and magnetic closure add a modern edge, which makes it unique.', 2000, 'delilah.jpg', 11, 3, 2, 11, 1),
(6, 'lexi', 'Lexi Clutch will be your new favorite style companion for this season. This stylish yet elegant piece is perfect for any occasion and will pair with everything in your closet.', 2000, 'lexi.jpeg', 11, 2, 2, 10, 2),
(7, 'Becca', 'Quilted Crossbody bag, an essential to complete all your spring and summer looks!. Simple enough tog', 1000, 'Becca.jpeg', 11, 2, 6, 9, 1),
(8, 'Sprinter', 'Casual Small Daypacks are ideal as a school bag for girls or boys, this casual backpack serves as a practical solution for carrying school essentials or as a tiffin bag on outings.', 2500, 'Sprinter daypack.jpg', 8, 2, 7, 9, 1),
(9, 'Travoc', 'Internal Fiber Frame for Back Support: This hiking backpack provides excellent support with its internal fiber frame. It includes features multiple straps, buckles, and more. Perfect for camping, hiking, and sports trips.', 3000, 'Trawoc.jpg', 6, 2, 6, 9, 1),
(10, 'Sloane', 'Meet the Sloane Tan Work Tote for Women in Tan. Designed with a secure zipper closure, a dedicated 13\" iPad compartment, and ample pockets for organizing essentials', 5000, 'Sloane.jpg', 15, 3, 8, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rating_id` int(11) NOT NULL,
  `rating_value` int(11) NOT NULL,
  `rating_content` varchar(50) NOT NULL,
  `rating_datetime` varchar(15) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rating_id`, `rating_value`, `rating_content`, `rating_datetime`, `product_id`, `user_id`) VALUES
(2, 2, 'The chain comes out all the time', '2024-10-04 20:0', 4, 3),
(5, 4, 'A high quality product\n', '2024-12-04 14:4', 10, 4),
(6, 4, 'it is really nice', '2024-12-04 14:4', 4, 4),
(8, 4, 'Liked it very much. Worth the price', '2024-12-04 15:0', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `request_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `request_content` varchar(500) NOT NULL,
  `request_date` varchar(10) NOT NULL,
  `request_amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `request_status` int(11) NOT NULL DEFAULT 0,
  `request_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`request_id`, `material_id`, `category_id`, `color_id`, `request_content`, `request_date`, `request_amount`, `user_id`, `manufacturer_id`, `request_status`, `request_file`) VALUES
(22, 2, 3, 8, '', '2024-11-08', 1400, 3, 3, 4, 'b4079daf9a4dfe11b4bbf93828b37167.jpg'),
(23, 2, 5, 12, '', '2024-11-08', 1500, 3, 3, 7, 'Becca-1.jpeg'),
(24, 7, 3, 9, 'It must be a compact backpack for everyday use', '2024-12-04', 1499, 3, 3, 7, 'custom1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `stock_date` varchar(10) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `stock_qty`, `stock_date`, `product_id`) VALUES
(5, 45, '2024-05-27', 4),
(6, 23, '2024-07-06', 6),
(7, 3, '2024-09-20', 1),
(9, 3, '2024-10-04', 0),
(10, 2, '2024-10-25', 1),
(11, 3, '2024-12-02', 1),
(12, 10, '2024-12-04', 9),
(13, 25, '2024-12-04', 8),
(14, 10, '2024-12-04', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcat_id` int(11) NOT NULL,
  `subcat_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcat_id`, `subcat_name`, `category_id`) VALUES
(1, '', 0),
(6, 'Hiking bag', 3),
(7, 'Pouch', 5),
(8, 'Daypacks', 3),
(9, 'Clucthes', 5),
(11, 'Crossbody bag', 5),
(12, 'Shoulder Bag', 5),
(14, 'Laptop bag', 3),
(15, 'Tote Bag', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_contact` varchar(10) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_contact`, `user_address`, `place_id`, `user_photo`, `user_password`) VALUES
(3, 'Sreeshna', 'sree4102004@gmail.com', '8590698511', ' Flat no.12 Canopy Mathirappilly PO Kothamangalam', 4, 'profilepic.jpg', 'Sree1234'),
(4, 'Aleena', 'grajnair@gmail.com', '8283396657', 'Rose Villa,Near KSRTC Bus Stand\r\nMuvattupuzha, Ernakulam\r\nKerala, 686661', 2, 'profpic.jpg', 'Aq123456'),
(5, 'Nandu', 'navendunandu@gmail.com', '8281241875', 'Home', 2, 'profile icon.jpg', 'Q1q2q3q4'),
(8, 'Parthiv', 'qwerty@gmail.com', '8590698511', ' Flat no.12 Canopy\r\nMathirappilly PO Kothamangalam', 4, 'user-profile-icon-free-vector.jpg', 'Sree1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_adminreg`
--
ALTER TABLE `tbl_adminreg`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_assign`
--
ALTER TABLE `tbl_assign`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_designer`
--
ALTER TABLE `tbl_designer`
  ADD PRIMARY KEY (`designer_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `tbl_material`
--
ALTER TABLE `tbl_material`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_adminreg`
--
ALTER TABLE `tbl_adminreg`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_assign`
--
ALTER TABLE `tbl_assign`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_designer`
--
ALTER TABLE `tbl_designer`
  MODIFY `designer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_material`
--
ALTER TABLE `tbl_material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

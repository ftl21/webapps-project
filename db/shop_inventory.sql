-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 12:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(43, 'Fatima Therese Loyola', '', 2147483647, 0, 'Maria Clara St. Caloocan City', '', 'Caloocan City', 'Caloocan', 'Active', '2022-04-28 09:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `unitPrice` float NOT NULL DEFAULT 0,
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`) VALUES
(51, '1', 'Clone atty- Antman rda', 0, 91, 150, '1651246475_277872552_392269206050170_2487021917029138241_n.jpg', 'Active', ''),
(52, '2', 'Clone atty- Zues rda', 0, 100, 250, '1651246723_278970968_512561566977101_8142773823081382017_n.jpg', 'Active', ''),
(53, '3', 'LEGIT- Vandyvape Govan rta', 0, 100, 800, '1651247149_279049570_663259321412070_843172706877695968_n.jpg', 'Active', ''),
(54, '4', 'LEGIT- Vapefly holic mtl rda', 0, 100, 250, '1651247207_279251257_5034218496667154_7415311069111430127_n.jpg', 'Active', ''),
(55, '5', 'LEGIT- Digiflavor drop rda', 0, 100, 750, '1651247294_250030606_295970455678510_4516921231331903121_n.jpg', 'Active', ''),
(56, '6', 'Kit  1:1- Doomsday v2 kit', 0, 100, 900, '1651247389_269138423_277947177702985_3267027714228115467_n.jpg', 'Active', ''),
(57, '7', 'Kit  1:1- MCM underground squonk mod', 0, 100, 600, '1651247476_271289208_256143506591101_6025014151422431019_n.jpg', 'Active', ''),
(58, '8', 'Kit  1:1- Lil sob kit', 0, 100, 900, '1651247598_245565903_570662500898148_1267820132650449659_n.jpg', 'Active', ''),
(59, '9', 'Kit  1:1- Vgod elite kit', 0, 100, 650, '1651247660_258525513_1176461709548894_7843554516289132344_n.jpg', 'Active', ''),
(60, '10', 'Kit  1:1- Empire mini kit', 0, 100, 850, '1651247723_250954185_205774864914597_6509832646804429304_n.jpg', 'Active', ''),
(61, '11', 'Mods- Geekvape aegis x', 0, 100, 1600, '1651247815_263434848_454594846259535_2001512150027054197_n.jpg', 'Active', ''),
(62, '12', 'Mods- Geekvape aegis legend 2', 0, 100, 1600, '1651247901_246488546_297311702213243_4716629436210465068_n.jpg', 'Active', ''),
(63, '13', 'Mods- Voopoo drag x plus', 0, 100, 1100, '1651247980_275058931_5105238046180873_2588574896626033517_n.jpg', 'Active', ''),
(64, '14', 'Mods- Voopoo drag 3 mod', 0, 100, 1400, '1651248036_250780899_1041773986673401_475075168103324615_n.png', 'Active', ''),
(65, '15', 'Mods- Oxva uniplus mod', 0, 100, 1400, '1651248096_258884101_1533472110384770_4517068949476366159_n.png', 'Active', ''),
(66, '16', 'Wires- DC WIRE', 0, 100, 200, '1651248216_278986249_525659639176287_2157212131261491523_n.jpg', 'Active', ''),
(67, '17', 'Wires- RAM WIRE', 0, 100, 220, '1651248268_264024082_1066615684074318_3750393896933396006_n.jpg', 'Active', ''),
(68, '18', 'Wires- ALAB WIRE', 0, 100, 200, '1651248315_279090739_391886849495863_4816377901634212968_n.jpg', 'Active', ''),
(69, '19', 'Wires- PANDEMIC WIRE', 0, 100, 250, '1651248404_275673371_269615125347073_3013010052430907756_n.jpg', 'Active', ''),
(70, '20', 'Wires- WIRE MASTER', 0, 100, 200, '1651248457_279368978_1015940906002963_3452868710890774682_n.jpg', 'Active', ''),
(71, '21', 'Battery- Kdest orange', 0, 200, 450, '1651248543_257785091_553848972712194_2039093725758817308_n.jpg', 'Active', ''),
(72, '22', 'Battery- Enook 3600', 0, 100, 400, '1651248602_279040022_1056785158272894_7524699702684063818_n.jpg', 'Active', ''),
(73, '23', 'Battery- Enook 21700', 0, 100, 250, '1651248669_278059604_360107156053444_7265544207331322824_n.jpg', 'Active', ''),
(74, '24', 'Battery- Cylaid purple', 0, 100, 250, '1651248724_246783021_1022674745253575_7112547165007754235_n.jpg', 'Active', ''),
(75, '25', 'Battery 1:1- Vtc4 murata', 0, 100, 200, '1651248828_279039188_968437143792384_1035282141953467288_n.jpg', 'Active', ''),
(76, '26', 'Chargers- Vapcell q1', 0, 100, 100, '1651248923_252916618_321425809418406_4409318952956039619_n.jpg', 'Active', ''),
(77, '27', 'Chargers- Vapcell q2', 0, 100, 150, '1651248975_279081995_791592165147023_6092185597629702589_n.jpg', 'Active', ''),
(78, '28', 'Chargers- Enook x2 plus', 0, 100, 180, '1651249042_252690669_309005757420044_7582918635582605586_n.jpg', 'Active', ''),
(79, '29', 'Chargers- Xtar PB2', 0, 100, 350, '1651249095_249643084_1782163085302989_3661815337962713734_n.jpg', 'Active', ''),
(80, '30', 'Chargers- Xtar Mc2', 0, -385, 180.15, '1651249148_275900243_2690172494459798_262624183639572591_n.jpg', 'Active', ''),
(81, '31', 'Others- Nord skin', 0, 100, 100, '1651249223_279235781_5078091325589396_925260142013168767_n.jpg', 'Active', ''),
(82, '32', 'Others- Zues x bubble glass', 0, 100, 80, '1651249422_279065612_565510758200132_8608854620888211183_n.jpg', 'Active', ''),
(83, '33', 'Others- Battery wraps design', 0, 100, 15, '1651249482_279091714_1691970564471728_8407340044597954803_n.jpg', 'Active', ''),
(84, '34', 'Others- Demon killer vape bar mat', 0, 100, 200, '1651249597_278983286_366598868740375_5794368330456546456_n.jpg', 'Active', ''),
(85, '35', 'Others- Coilmaster hard case', 0, 100, 250, '1651249653_279173010_702237387868184_4044234877181146592_n.jpg', 'Active', ''),
(86, '36', 'Tools- Ceramic tweezers', 0, 100, 120, '1651249712_279111781_542863364184489_109194587023184788_n.jpg', 'Active', ''),
(87, '37', 'Tools- Blacksmith toolkit', 0, 100, 220, '1651249768_258136547_233414635527359_7648609516546479685_n.jpg', 'Active', ''),
(88, '38', 'Tools- Vapefly tool kit', 0, 100, 550, '1651249818_279091436_678425096703660_7047560550445097588_n.jpg', 'Active', ''),
(89, '39', 'Tools- Plato cutter', 0, 100, 100, '1651249872_252133178_438587247691309_5996692227681691232_n.jpg', 'Active', ''),
(90, '40', 'Tools- Magic tool kit', 0, 100, 220, '1651249931_249844334_998212680736743_8743845622382641777_n.jpg', 'Active', ''),
(91, '41', 'Pods- Smok nord 2 kit', 0, 100, 1000, '1651250003_277689404_1916007372122059_3710981512761304762_n.jpg', 'Active', ''),
(92, '42', 'Pods- Smok rpm 80 pro', 0, 100, 900, '1651250066_271815691_256901223184740_8307381539657720118_n.jpg', 'Active', ''),
(93, '43', 'Pods- Oxva 3 in 1', 0, 100, 1500, '1651250123_273833509_323035269788735_5001902419456894902_n.jpg', 'Active', ''),
(94, '44', 'Pods- Geekvape obelisk', 0, 100, 1450, '1651250172_269948550_498817188532684_1482300731343591205_n.jpg', 'Active', ''),
(95, '45', 'Pods- Lostvape ursa quest kit', 0, 100, 1700, '1651250220_250356942_319461622843081_4271784436602573198_n.jpg', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(53, '12', '2023-11-21', 'Mods- Geekvape aegis legend 2', 20, 20, 'ABC Company', 1),
(54, '12', '2020-11-08', 'Mods- Geekvape aegis legend 2', 50, 50, 'Geekvape INC.', 10),
(55, '45', '2022-01-01', 'Pods- Lostvape ursa quest kit', 0, 1, 'Geekvape INC.', 10),
(56, '30', '2018-05-24', 'Chargers- Xtar Mc2', 180, 101, 'Geekvape INC.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unitPrice` float(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(18, '12', 43, 'Fatima Therese Loyola', 'Mods- Geekvape aegis legend 2', '2018-05-24', 0, 20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `username`, `password`, `status`) VALUES
(5, 'Guest', 'guest', '81dc9bdb52d04dc20036dbd8313ed055', 'Active'),
(6, 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', 'Active'),
(7, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Active'),
(8, 'Cashier', 'Cashier', '6ac2470ed8ccf204fd5ff89b32a355cf', 'Active'),
(9, 'Leni Robredo', 'Leni', '509c5aa590f87ce10d7c503ea80b35d2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(10, 'Geekvape INC.', '', 2147483647, 0, '23 Quezon City', '', 'Quezon City', 'Quezon City', 'Active', '2022-04-28 09:47:08'),
(11, 'Smok Comp.', '', 1546541345, 0, 'Tondo Manila', '', 'Tondo', 'Manila', 'Active', '2022-04-28 09:55:13'),
(12, 'Oxva INC.', '', 1546541345, 0, 'Maria Clara St. Caloocan City', '', 'Caloocan City', 'Caloocan', 'Active', '2022-04-30 04:28:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

<?php

  $server = "sql305.epizy.com";
  $username = "epiz_31883962";
  $password = "Gl5c5vpOjMUZTuD";
  $dbname = "epiz_31883962_OVSInventorySystem";

  $conn = mysqli_connect($server, $username, $password, $dbname);

  if(!$conn){
    die("Connection Failed!".mysqli_connect_error());
  }

  ?>

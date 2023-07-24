SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`,`address`,`city`, `district`, `status`) VALUES
(1, 'Abhay S', 'Abhay@gmail.com',772484884, 'Arekere', 'Bangalore', 'Bangalore', 'Active'),
(5, 'Steve Jobs', 'Steve@gmail.com', 333829832,'Hulimavu', 'Bangalore', 'Bangalore', 'Disabled'),
(18, 'Asitha N', 'asitha@gmail.com', 777987654,'Hosur road', 'Bangalore', 'Bangalore', 'Active'),
(6, 'Sunil Perera', 'Sunil@gmail.com', 338393932,'White field', 'Bangalore','Bangalore', 'Active'),
(26, 'Sachin M', 'sachin@gmail.com', 444958303,'Electronic city', 'Bangalore','Bangalore', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `status`, `description`) VALUES
(34, '1', 'First Bag', 0, 28, 1500,'Active', ''),
(35, '2', 'School Bag', 0, 5, 500, 'Active', ''),
(36, '3', 'Office Bag', 0, 5, 1300, 'Active', ''),
(37, '4', 'Leather Bag', 2, 6, 3409, 'Active', ''),
(38, '5', 'Travel Bag', 2, 17, 1200,'Active', '');


-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`,`vendorName`, `vendorID`) VALUES
(39, '1', '2022-05-24', 'First Bag', 1600, 10,'Johnson and Johnsons Co.', 3),
(40, '2', '2022-05-18', 'First Bag', 2341, 2,'Louise Vitton Bag', 4),
(41, '4', '2022-05-07', 'Leather Bag', 1234, 3,'Johnson and Johnsons Co.', 3),
(42, '1', '2022-05-24', 'First Bag', 345, 12,'Louise Vitton Bag',4),
(43, '5', '2022-05-03', 'Travel Bag', 35, 3,'Johnson and Johnsons Co.',3);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(2, '1', 1,'2022-05-24', 0, 11, 1500),
(3, '4', 1,'2022-05-24', 2, 1, 3409),
(4, '5', 18,'2022-05-24', 2, 1, 1200),
(16, '1', 5,'2022-05-24', 10, 1, 1500),
(17, '4', 5,'2022-05-18', 2, 1, 3409);

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
(5, 'Guest', 'guest', '81dc9bdb52d04dc20036dbd8313ed055', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `address`, `city`, `district`, `status`) VALUES
(3, 'Johnson and Johnsons Co.', '', 323236888, 'JP Nagar', 'Bangalore', 'Bangalore', 'Active'),
(4, 'Louise Vitton Bag', 'vitton@vendor.com', 323234938, 'Jayanagar', 'Bangalore', 'Bangalore', 'Active'),
(6, 'Johnson and Johnsons Co.', '',47569937, 'Arekere', 'Bangalore', 'Bangalore', 'Active'),
(7, 'Louise Vitton Bag', 'vitton@vendor.com', 944332233,'Hulimavu', 'Bangalore','Bangalore', 'Active'),
(8, 'Louise Vitton Bag', 'vitton@vendor.com', 944332233,'JP Nagar','Bangalore','Bangalore', 'Active');

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
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


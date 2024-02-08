-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 10:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'user', 'user@gmail.com', '8877994867', 'hello'),
(2, 1, 'prem', 'prem@gmail.com', '9874687987', 'how r u'),
(3, 1, 'shaon', 'shaon@gmail.com', '8879487789', 'welcome'),
(4, 1, 'lohit', 'lohit@gmail.com', '9879789486', 'good books');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'prem', '8877999487', 'prem@gmail.com', 'cash on delivery', 'flat no. 564,Bengaluru,Bengaluru,karnataka, india , 899877', ', NIGHTSHADE ( 1 )', 400, '01-May-2023', 'pending'),
(2, 1, 'shaon', '8879487957', 'shaon@gmail.com', 'credit card', 'flat no. 564,Bengaluru,Bengaluru,karnataka4, india , 987945', ', Queen Of Air ( 1 )', 500, '01-May-2023', 'pending'),
(3, 1, 'prem', '9899876648', 'prem@gmail.com', 'credit card', 'flat no. 456,Bengaluru,Bengaluru,karnataka4, india , 789467', ', NIGHTSHADE ( 1 )', 400, '01-May-2023', 'pending'),
(4, 1, 'prem', '8879785649', 'prem@gmail.com', 'credit card', 'flat no. 456,Bengaluru,Bengaluru,karnataka4, india , 789458', ', Queen Of Air ( 1 )', 500, '01-May-2023', 'pending'),
(5, 1, 'prem', '8854658763', 'prem@gmail.com', 'credit card', 'flat no. 123,Bengaluru,Bengaluru,karnataka, india , 560045', ', Harrypotter ( 1 )', 300, '02-May-2023', 'pending'),
(6, 1, 'vijaykumar', '6549856795', 'admin@bookshop.com', 'credit card', 'flat no. 123 hvhgfrtdtfh BANGALORE URBAN Karnataka India - 5659567', ', NIGHTSHADE ( 1 )', 400, '29-Jun-2023', 'pending'),
(7, 1, 'vijay', '823468593875', 'vijay@gmail.com', 'cash on delivery', 'flat no. 123 hhhh BANGALORE URBAN Karnataka India - 56726', ', NIGHTSHADE ( 1 )', 400, '06-Nov-2023', 'pending'),
(8, 1, 'vijaykumar', '768768787', 'vijay88446622@gmail.com', 'credit card', 'flat no. 234 57689 Bengaluru KARNATAKA India - 560032', ', NIGHTSHADE ( 1 )', 400, '06-Nov-2023', 'pending'),
(9, 1, 'V Priya', '568736562', 'priyavelu890@gmail.com', 'cash on delivery', 'flat no. 216 3rd Cross Prem Priya Nilaya,dgfh,BANGALORE URBAN,Karnataka, India , 560032', ', Harrypotter ( 1 )', 300, '01-Dec-2023', 'pending'),
(10, 1, 'V Priya', '78567886978', 'priyavelu890@gmail.com', 'credit card', 'flat no. 216 3rd Cross Prem Priya Nilaya,drgfdh,BANGALORE URBAN,Karnataka, India , 560032', ', NIGHTSHADE ( 1 )', 400, '01-Dec-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `cname` varchar(50) NOT NULL,
  `ccnumber` int(50) NOT NULL,
  `exp_month` varchar(20) NOT NULL,
  `exp_year` int(20) NOT NULL,
  `CVV` int(20) NOT NULL,
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`cname`, `ccnumber`, `exp_month`, `exp_year`, `CVV`, `id`, `user_id`) VALUES
('shaon', 2147483647, '11', 2025, 554, 1, 1),
('prem', 2147483647, '11', 2025, 456, 2, 1),
('prem kumar', 2147483647, '12', 2025, 664, 3, 1),
('prem', 2147483647, '12', 2025, 896, 4, 1),
('fhujtygyhuj7', 2147483647, '08', 2023, 564, 5, 1),
('hgyghg', 2147483647, '09', 2027, 888, 6, 1),
('ewrujygtuy', 2147483647, '03', 2019, 254, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(1, 'NIGHTSHADE', 'Novel', 'Nightshade is a novel of teenage romance, rebellion, and dark fantasy by Andrea Cremer. Cal, a female Alpha Guardian, is able to take the form of a wolf to serve her masters, the Keepers, but her life is completely controlled by them and she grows to resent this fact. One night, as she and her beta, Bryn, are patrolling the mountain near a sacred site, Cal decides to save the life of a human boy by letting him drink her blood after he is attacked and almost killed by a Grizzly Bear. ', 400, 'nightshade.jpg'),
(2, 'Harrypotter', 'Fantasy', 'Harry James Potter is a fictional character and the titular protagonist in J. K. Rowling&#39;s series of eponymous novels. The majority of the books&#39; plot covers seven years in the life of the orphan Harry, who, on his eleventh birthday, learns he is a wizard. Thus, he attends Hogwarts to practise magic under the guidance of the kindly headmaster Albus Dumbledore and other school professors along with his best friends Ron Weasley and Hermione Granger. ', 300, 'harrypotter.jpg'),
(3, 'Queen Of Air', 'Comics', 'Dark secrets and forbidden love threaten the very survival of the Shadowhunters in Cassandra Clare’s Queen of Air and Darkness, the final novel in the New York Times and USA TODAY bestselling The Dark Artifices trilogy. Queen of Air and Darkness is a Shadowhunters novel.Innocent blood has been spilled on the steps of the Council Hall, the sacred stronghold of the Shadowhunters. Their society now teeters on the brink of civil war. Their society now teeters on the brink . ', 500, 'queenofair.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(1, 'user', 'user@bookshop.com', '202cb962ac59075b964b07152d234b70', 'user', 'header5.jpg'),
(2, 'Admin', 'admin@bookshop.com', '202cb962ac59075b964b07152d234b70', 'admin', 'HEADER_IMAGE.jpg'),
(3, 'prem', 'prem@bookshop.com', '202cb962ac59075b964b07152d234b70', 'user', 'revolution2020.jpg'),
(4, 'shaon', 'shaon@bookshop.com', '202cb962ac59075b964b07152d234b70', 'user', 'book.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 05:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localbusinesses`
--

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `business_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`business_id`, `name`, `description`, `category`, `address`, `phone`, `website`, `email`, `user_name`) VALUES
(1, 'Local Cafe', 'Cozy coffee shop serving fresh brews.', 'Cafe', '123 Main St, Cityville', '+1234567890', 'www.localcafe.com', 'info@localcafe.com', 'user1'),
(2, 'Green Groceries', 'Organic produce and healthy groceries.', 'Grocery Store', '456 Elm St, Townsville', '+9876543210', 'www.greengroceries.com', 'contact@greengroceries.com', 'user2'),
(3, 'Fashion Boutique', 'Trendy clothing and accessories.', 'Clothing Store', '789 Oak St, Villagetown', '+5555555555', 'www.fashionboutique.com', 'sales@fashionboutique.com', 'user3'),
(4, 'The Book Nook', 'Independent bookstore for book lovers.', 'Bookstore', '101 Pine St, Booksville', '+1112223333', 'www.booknook.com', 'books@booknook.com', 'user4'),
(5, 'Tech Solutions', 'IT services and tech solutions provider.', 'Technology', '567 Maple St, Techville', '+7778889999', 'www.techsolutions.com', 'info@techsolutions.com', 'user5'),
(6, 'Tasty Bites', 'Gourmet restaurant offering delicious dishes.', 'Restaurant', '321 Cedar St, Foodtown', '+4443332222', 'www.tastybites.com', 'reservations@tastybites.com', 'user6'),
(7, 'Art Gallery', 'Showcasing local artists and their artwork.', 'Art', '222 Birch St, Artville', '+9998887777', 'www.artgallery.com', 'info@artgallery.com', 'user7'),
(8, 'Fitness Center', 'State-of-the-art gym and fitness center.', 'Fitness', '888 Spruce St, Fitville', '+6667778888', 'www.fitnesscenter.com', 'membership@fitnesscenter.com', 'user8'),
(9, 'Pet Haven', 'Pet supplies store for all your furry friends.', 'Pet Store', '456 Willow St, Petville', '+3334445555', 'www.pethaven.com', 'pets@pethaven.com', 'user9'),
(10, 'Home Decor', 'Home decor and interior design shop.', 'Home & Decor', '999 Pine St, Homestead', '+2221110000', 'www.homedecor.com', 'info@homedecor.com', 'user10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `first_name`, `last_name`, `email`, `password`, `profile_image`) VALUES
('user1', 'John', 'Doe', 'user1@example.com', 'hashed_password_1', 'profile1.jpg'),
('user10', 'Ava', 'Robinson', 'user10@example.com', 'hashed_password_10', 'profile10.jpg'),
('user2', 'Jane', 'Smith', 'user2@example.com', 'hashed_password_2', 'profile2.jpg'),
('user3', 'Michael', 'Johnson', 'user3@example.com', 'hashed_password_3', 'profile3.jpg'),
('user4', 'Emily', 'Brown', 'user4@example.com', 'hashed_password_4', 'profile4.jpg'),
('user5', 'David', 'Lee', 'user5@example.com', 'hashed_password_5', 'profile5.jpg'),
('user6', 'Sarah', 'White', 'user6@example.com', 'hashed_password_6', 'profile6.jpg'),
('user7', 'Mark', 'Davis', 'user7@example.com', 'hashed_password_7', 'profile7.jpg'),
('user8', 'Olivia', 'Martinez', 'user8@example.com', 'hashed_password_8', 'profile8.jpg'),
('user9', 'William', 'Clark', 'user9@example.com', 'hashed_password_9', 'profile9.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`business_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `business_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `Business_To_User` FOREIGN KEY (`user_name`) REFERENCES `users` (`user_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

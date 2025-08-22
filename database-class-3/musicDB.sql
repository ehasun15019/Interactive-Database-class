-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 21, 2025 at 02:40 PM
-- Server version: 8.4.3
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MusicDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artists`
--

CREATE TABLE `Artists` (
  `artist_id` int NOT NULL,
  `artist_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Artists`
--

INSERT INTO `Artists` (`artist_id`, `artist_name`) VALUES
(1, 'Nirvana'),
(2, 'Pearl Jam'),
(3, 'Backstreet Boys'),
(4, 'TLC'),
(5, 'Dr. Dre'),
(6, 'Radiohead'),
(7, 'Green Day'),
(8, 'Spice Girls'),
(9, 'Snoop Dogg'),
(10, 'Red Hot Chili Peppers'),
(11, 'Oasis'),
(12, 'Alanis Morissette'),
(13, 'Metallica'),
(14, 'Notorious B.I.G.'),
(15, 'Mariah Carey'),
(16, 'Blur'),
(17, 'Foo Fighters'),
(18, 'Britney Spears'),
(19, 'Rage Against the Machine'),
(20, 'Boyz II Men');

-- --------------------------------------------------------

--
-- Table structure for table `Genres`
--

CREATE TABLE `Genres` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Genres`
--

INSERT INTO `Genres` (`genre_id`, `genre_name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop'),
(4, 'Alternative'),
(5, 'R&B'),
(6, 'Electronic'),
(7, 'Country'),
(8, 'Grunge'),
(9, 'Reggae'),
(10, 'Metal');

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE `Songs` (
  `song_id` int NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `artist_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `release_year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`song_id`, `song_name`, `artist_id`, `genre_id`, `release_year`) VALUES
(1, 'Smells Like Teen Spirit', 1, 8, 1991),
(2, 'Jeremy', 2, 8, 1991),
(3, 'I Want It That Way', 3, 2, 1999),
(4, 'No Scrubs', 4, 5, 1999),
(5, 'Nuthin\' but a \'G\' Thang', 5, 3, 1992),
(6, 'Creep', 6, 4, 1992),
(7, 'Basket Case', 7, 1, 1994),
(8, 'Wannabe', 8, 2, 1996),
(9, 'Gin and Juice', 9, 3, 1993),
(10, 'Under the Bridge', 10, 1, 1991),
(11, 'Wonderwall', 11, 1, 1995),
(12, 'You Oughta Know', 12, 4, 1995),
(13, 'Enter Sandman', 13, 10, 1991),
(14, 'Hypnotize', 14, 3, 1997),
(15, 'Fantasy', 15, 2, 1995),
(16, 'Song 2', 16, 1, 1997),
(17, 'Everlong', 17, 1, 1997),
(18, '...Baby One More Time', 18, 2, 1998),
(19, 'Killing in the Name', 19, 4, 1992),
(20, 'End of the Road', 20, 5, 1992),
(21, 'Come as You Are', 1, 8, 1991),
(22, 'Alive', 2, 8, 1991),
(23, 'Larger Than Life', 3, 2, 1999),
(24, 'Waterfalls', 4, 5, 1994),
(25, 'California Love', 5, 3, 1995),
(26, 'Karma Police', 6, 4, 1997),
(27, 'When I Come Around', 7, 1, 1994),
(28, 'Say You\'ll Be There', 8, 2, 1996),
(29, 'Who Am I? (What\'s My Name?)', 9, 3, 1993),
(30, 'Scar Tissue', 10, 1, 1999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artists`
--
ALTER TABLE `Artists`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Artists`
--
ALTER TABLE `Artists`
  MODIFY `artist_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Genres`
--
ALTER TABLE `Genres`
  MODIFY `genre_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
  MODIFY `song_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Songs`
--
ALTER TABLE `Songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`),
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `Genres` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

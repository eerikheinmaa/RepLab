-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql7.freesqldatabase.com
-- Generation Time: Feb 28, 2025 at 06:15 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql7763540`
--
CREATE DATABASE IF NOT EXISTS `sql7763540` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql7763540`;

-- --------------------------------------------------------

--
-- Table structure for table `Creators`
--

CREATE TABLE `Creators` (
  `Name` varchar(50) NOT NULL,
  `WorkoutProgramsCreated` varchar(50) NOT NULL,
  `Education` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Exercises`
--

CREATE TABLE `Exercises` (
  `Name` varchar(50) NOT NULL,
  `MusclesWorked` varchar(50) NOT NULL,
  `Intensity` int(2) NOT NULL,
  `Sets` int(11) NOT NULL,
  `Reps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Muscles`
--

CREATE TABLE `Muscles` (
  `Name` varchar(50) NOT NULL,
  `BodyPart` enum('legs','chest','core','back','arms') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Muscles`
--

INSERT INTO `Muscles` (`Name`, `BodyPart`) VALUES
('Abdominals (Abs)', 'core'),
('Biceps', 'arms'),
('Biceps Femoris (Hamstrings)', 'legs'),
('Brachioradialis (Forearms)', 'arms'),
('Deltoids (Delts)', 'arms'),
('Gastrocnemius & Soleus (Calves)', 'legs'),
('Gluteus Maximus (Glutes)', 'legs'),
('Lats', 'back'),
('Obliques', 'core'),
('Pectoralis Major', 'chest'),
('Pectoralis Minor', 'chest'),
('Quadriceps (Quads)', 'legs'),
('Rhomboids (Mid-Back)', 'back'),
('Rotator Cuff', 'back'),
('Spinae Erector (Lower Back)', 'back'),
('Teres Major', 'back'),
('Trapezeus (Traps)', 'back'),
('Triceps', 'arms');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `WorkoutProgram` varchar(50) NOT NULL,
  `Height` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Sex` char(1) NOT NULL,
  `TargetWeight` int(11) NOT NULL,
  `ProgressLevel` float NOT NULL,
  `XP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Workout Days`
--

CREATE TABLE `Workout Days` (
  `Name` varchar(50) NOT NULL,
  `Exercises` varchar(50) NOT NULL,
  `Intensity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Workout Programs`
--

CREATE TABLE `Workout Programs` (
  `Name` varchar(50) NOT NULL,
  `Type` enum('Cardio','Bodybuilding','Strength Training','Calisthenics') NOT NULL,
  `WorkoutDays` varchar(50) NOT NULL,
  `Creators` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Creators`
--
ALTER TABLE `Creators`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `WorkoutProgramsCreated` (`WorkoutProgramsCreated`);

--
-- Indexes for table `Exercises`
--
ALTER TABLE `Exercises`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `MusclesWorked` (`MusclesWorked`);

--
-- Indexes for table `Muscles`
--
ALTER TABLE `Muscles`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `WorkoutProgram` (`WorkoutProgram`);

--
-- Indexes for table `Workout Days`
--
ALTER TABLE `Workout Days`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Exercises` (`Exercises`);

--
-- Indexes for table `Workout Programs`
--
ALTER TABLE `Workout Programs`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `WorkoutDays` (`WorkoutDays`),
  ADD KEY `Workout Programs_ibfk_2` (`Creators`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Creators`
--
ALTER TABLE `Creators`
  ADD CONSTRAINT `Creators_ibfk_1` FOREIGN KEY (`WorkoutProgramsCreated`) REFERENCES `Workout Programs` (`Name`);

--
-- Constraints for table `Exercises`
--
ALTER TABLE `Exercises`
  ADD CONSTRAINT `Exercises_ibfk_1` FOREIGN KEY (`MusclesWorked`) REFERENCES `Muscles` (`Name`);

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`WorkoutProgram`) REFERENCES `Workout Programs` (`Name`);

--
-- Constraints for table `Workout Days`
--
ALTER TABLE `Workout Days`
  ADD CONSTRAINT `Workout Days_ibfk_1` FOREIGN KEY (`Exercises`) REFERENCES `Exercises` (`Name`);

--
-- Constraints for table `Workout Programs`
--
ALTER TABLE `Workout Programs`
  ADD CONSTRAINT `Workout Programs_ibfk_2` FOREIGN KEY (`Creators`) REFERENCES `Creators` (`Name`),
  ADD CONSTRAINT `Workout Programs_ibfk_1` FOREIGN KEY (`WorkoutDays`) REFERENCES `Workout Days` (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

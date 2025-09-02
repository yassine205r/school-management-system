-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 04 juin 2025 à 17:32
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `_sms`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `s_no` int(20) NOT NULL,
  `id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(40) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`s_no`, `id`, `fname`, `lname`, `dob`, `image`, `phone`, `gender`, `address`) VALUES
(2, 'A9876543210', 'Admin', 'Myara', '01/01/2000', 'A98765432101748525831.jpg', '0617615890', 'Male', 'Meknes');

-- --------------------------------------------------------

--
-- Structure de la table `attendence`
--

CREATE TABLE `attendence` (
  `s_no` int(20) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `attendence` varchar(10) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `attendence`
--

INSERT INTO `attendence` (`s_no`, `student_id`, `attendence`, `class`, `section`, `date`) VALUES
(79, 'S1748524614', '1', '12c', 'A', '2025-05-29 21:16:16'),
(80, 'S1748524554', '1', '12c', 'A', '2025-05-29 21:16:16'),
(81, 'S1748524680', '1', '12c', 'A', '2025-05-29 21:16:16'),
(82, 'S1748524486', '0', '12c', 'A', '2025-05-29 21:16:16'),
(83, 'S1748524939', '0', '11c', 'A', '2025-05-29 21:16:27'),
(84, 'S1748525013', '1', '11c', 'A', '2025-05-29 21:16:27'),
(85, 'S1748524863', '0', '11c', 'A', '2025-05-29 21:16:27'),
(86, 'S1748524796', '1', '11c', 'A', '2025-05-29 21:16:27'),
(87, 'S1748524614', '1', '12c', 'A', '2025-05-30 10:36:28'),
(88, 'S1748524554', '1', '12c', 'A', '2025-05-30 10:36:28'),
(89, 'S1748524680', '1', '12c', 'A', '2025-05-30 10:36:28'),
(90, 'S1748524486', '0', '12c', 'A', '2025-05-30 10:36:28');

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `s_no` int(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(1) NOT NULL,
  `fees` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exams`
--

CREATE TABLE `exams` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `exam_title` varchar(512) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `total_marks` varchar(10) NOT NULL,
  `passing_marks` varchar(10) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `exams`
--

INSERT INTO `exams` (`s_no`, `exam_id`, `exam_title`, `subject`, `class`, `section`, `total_marks`, `passing_marks`, `timestamp`) VALUES
(6, 'E17485618646838efc8c86cf', 'DS1', 'Front-End Development', '12c', 'A', '20', '10', '2025-05-30 00:37:44'),
(7, 'E17485624056838f1e5d9e27', 'DS1', 'Back-End Development', '12c', 'A', '20', '10', '2025-05-30 00:46:45');

-- --------------------------------------------------------

--
-- Structure de la table `feedback`
--

CREATE TABLE `feedback` (
  `s_no` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `feedback`
--

INSERT INTO `feedback` (`s_no`, `sender_id`, `receiver_id`, `msg`, `timestamp`) VALUES
(10, 'T1748520016', 'S1748524486', 'Hi\n', '2025-05-30 08:43:54'),
(11, 'A9876543210', 'S1748524486', 'Hello', '2025-05-30 08:51:19'),
(12, 'A9876543210', 'S1748524486', 'bonjour yassine', '2025-05-30 10:34:21');

-- --------------------------------------------------------

--
-- Structure de la table `fee_record`
--

CREATE TABLE `fee_record` (
  `s_no` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `other_collection` int(5) NOT NULL,
  `total` int(5) NOT NULL,
  `paid` int(5) NOT NULL,
  `balance` int(5) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `leaves`
--

CREATE TABLE `leaves` (
  `s_no` int(10) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `send_date` datetime NOT NULL DEFAULT current_timestamp(),
  `leave_type` varchar(100) NOT NULL,
  `leave_desc` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `leaves`
--

INSERT INTO `leaves` (`s_no`, `sender_id`, `send_date`, `leave_type`, `leave_desc`, `start_date`, `end_date`, `status`) VALUES
(14, 'T1748520016', '2025-05-30 00:58:27', 'Casual Leave', 'I Need a casual leave for 2 days', '2025-05-31 00:00:00', '2025-06-03 00:00:00', 'approved'),
(15, 'T1748520016', '2025-05-30 01:39:30', 'Marriage Leave', 'hi', '2025-06-08 00:00:00', '2025-06-14 00:00:00', 'rejected'),
(16, 'T1748520016', '2025-05-30 08:46:24', 'Other Leave', '2 Days', '2025-05-31 00:00:00', '2025-06-01 00:00:00', 'rejected');

-- --------------------------------------------------------

--
-- Structure de la table `marks`
--

CREATE TABLE `marks` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `marks` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marks`
--

INSERT INTO `marks` (`s_no`, `exam_id`, `subject`, `student_id`, `marks`) VALUES
(8, 'E17485618646838efc8c86cf', 'Front-End Development', 'S1748524614', '17'),
(9, 'E17485618646838efc8c86cf', 'Front-End Development', 'S1748524554', '13'),
(10, 'E17485618646838efc8c86cf', 'Front-End Development', 'S1748524680', '7'),
(11, 'E17485618646838efc8c86cf', 'Front-End Development', 'S1748524486', '11'),
(12, 'E17485624056838f1e5d9e27', 'Back-End Development', 'S1748524614', '10'),
(13, 'E17485624056838f1e5d9e27', 'Back-End Development', 'S1748524554', '15'),
(14, 'E17485624056838f1e5d9e27', 'Back-End Development', 'S1748524680', '9'),
(15, 'E17485624056838f1e5d9e27', 'Back-End Development', 'S1748524486', '8');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`s_no`, `sender_id`, `editor_id`, `class`, `subject`, `title`, `comment`, `file`, `timestamp`) VALUES
(2, 'A9876543210', 'A9876543210', '12c', 'Front-End Development', 'TP1', 'Must been tomorrow', 'A98765432101748544531.pdf', '2025-05-29 19:48:51'),
(3, 'A9876543210', 'A9876543210', '11c', 'Introduction to AI & Data Science', 'TP1', 'Tp AI', 'A98765432101748561674.pdf', '2025-05-30 00:34:34');

-- --------------------------------------------------------

--
-- Structure de la table `notice`
--

CREATE TABLE `notice` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `file` varchar(100) NOT NULL,
  `importance` varchar(5) NOT NULL DEFAULT '1',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notice`
--

INSERT INTO `notice` (`s_no`, `sender_id`, `editor_id`, `title`, `body`, `file`, `importance`, `timestamp`, `role`, `class`) VALUES
(54, 'A9876543210', 'A9876543210', 'Notice to class Full Stuck', '', 'A98765432101748560913.pdf', '3', '2025-05-30 00:21:53', '', ''),
(55, 'A9876543210', 'A9876543210', 'For class Cybersecurity', 'Important', 'A98765432101748561121.pdf', '3', '2025-05-30 00:25:21', '', ''),
(56, 'T1748520016', 'T1748520016', 'Exams for all class', '', 'T17485200161748561228.pdf', '3', '2025-05-30 00:27:08', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payroll`
--

CREATE TABLE `payroll` (
  `s_no` int(11) NOT NULL,
  `id` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_no` varchar(40) NOT NULL,
  `ifsc_code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reminders`
--

CREATE TABLE `reminders` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `reminders`
--

INSERT INTO `reminders` (`s_no`, `id`, `message`, `status`) VALUES
(72, 'A9876543210', 'today ...', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `section` varchar(50) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `request_date` varchar(30) NOT NULL,
  `request_time` varchar(30) NOT NULL,
  `request` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`s_no`, `id`, `fname`, `lname`, `father`, `gender`, `class`, `class_name`, `section`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `request_date`, `request_time`, `request`) VALUES
(10, 'S1748524486', 'Yassine', 'Myara', 'Ahmed', 'Male', '12c', 'Full-Stack Web Development', 'A', '01-01-2000', 'S17485244861748524486.jpeg', '0617615890', 'yassinemy@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', ''),
(11, 'S1748524554', 'Oussama ', 'Lahrichi', 'Ahmed', 'Male', '12c', 'Full-Stack Web Development', 'A', '01-01-2000', 'S17485245541748524554.jpg', '0612345698', 'oussamala@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', ''),
(12, 'S1748524614', 'Aya', ' Lahlou  ', 'Ahmed', 'Female', '12c', 'Full-Stack Web Development', 'A', '01-01-2000', 'S17485246141748524614.jpg', '0621478951', 'ayala@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', ''),
(13, 'S1748524680', 'Salma ', 'Hattab ', 'Ahmed', 'Female', '12c', 'Full-Stack Web Development', 'A', '01-01-2000', 'S17485246801748524680.jpg', '0678942356', 'salmaha@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', ''),
(14, 'S1748524796', 'Yassine ', 'Moujahid', 'Ahmed', 'Male', '11c', 'Artificial Intelligence & Data Science', 'A', '01-01-2000', 'S17485247961748524796.jpg', '0678143298', 'yassinemo@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', ''),
(15, 'S1748524863', 'Taha ', 'El Arabi', 'Ahmed', 'Male', '11c', 'Artificial Intelligence & Data Science', 'A', '01-01-2000', 'S17485248631748524863.jpg', '0617615890', 'tahael@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', ''),
(16, 'S1748524939', 'Imane ', 'El Hanafi', 'Ahmed', 'Female', '11c', 'Artificial Intelligence & Data Science', 'A', '01-01-2000', 'S17485249391748524939.jpg', '0623564189', 'imaneel@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', ''),
(17, 'S1748525013', 'Nisrine ', 'Fadili ', 'Ahmed', 'Female', '11c', 'Artificial Intelligence & Data Science', 'A', '01-01-2000', 'S17485250131748525013.jpg', '0621235687', 'nisrinefa@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `student_guardian`
--

CREATE TABLE `student_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(200) NOT NULL,
  `gcity` varchar(100) NOT NULL,
  `gzip` varchar(50) NOT NULL,
  `relation` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `student_guardian`
--

INSERT INTO `student_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(10, 'S1748524486', 'Ahmed', '0621356981', 'meknes', 'meknes', '50000', 'pere'),
(11, 'S1748524554', 'Ahmed', '0687459123', 'meknes', 'meknes', '50000', 'pere'),
(12, 'S1748524614', 'Ahmed', '0617615890', 'meknes', 'meknes', '50000', 'pere'),
(13, 'S1748524680', 'Ahmed', '0645325698', 'meknes', 'meknes', '50000', 'pere'),
(14, 'S1748524796', 'Ahmed', '0602145791', 'meknes', 'meknes', '50000', 'pere'),
(15, 'S1748524863', 'Ahmed', '0612457136', 'meknes', 'meknes', '50000', 'pere'),
(16, 'S1748524939', 'Ahmed', '0689745165', 'meknes', 'meknes', '50000', 'pere'),
(17, 'S1748525013', 'Ahmed', '0601243658', 'meknes', 'meknes', '50000', 'pere');

-- --------------------------------------------------------

--
-- Structure de la table `subjects`
--

CREATE TABLE `subjects` (
  `s_no` int(20) NOT NULL,
  `subject_id` varchar(40) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subjects`
--

INSERT INTO `subjects` (`s_no`, `subject_id`, `subject_name`, `class`) VALUES
(4, '12c6838495b6936c', 'Front-End Development', '12c'),
(5, '12c6838496f0db8b', 'Back-End Development', '12c'),
(6, '12c68384988baaf4', 'Databases', '12c'),
(7, '11c68384a29e0a60', 'Introduction to AI & Data Science', '11c'),
(8, '11c68384a46a9652', 'Machine Learning', '11c'),
(9, '11c68384a5866edd', 'Deep Learning', '11c'),
(10, '12s68384a85d3181', 'Networking Fundamentals ', '12s'),
(11, '12s68384a95933f8', 'Operating Systems & System Security', '12s'),
(12, '12s68384aa7d12ff', 'Web & Application Security', '12s'),
(13, '11s68384ad161f7a', 'Programming Fundamentals for Games', '11s'),
(14, '11s68384ae14b0c2', 'Game Engines', '11s'),
(15, '11s68384af66d80e', '2D & 3D Game Development', '11s');

-- --------------------------------------------------------

--
-- Structure de la table `syllabus`
--

CREATE TABLE `syllabus` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `syllabus`
--

INSERT INTO `syllabus` (`s_no`, `class`, `subject`, `file`) VALUES
(14, '12c', 'Front-End Development', 'A98765432101748544289.pdf'),
(15, '12c', 'Back-End Development', 'A98765432101748544305.pdf'),
(16, '12c', 'Databases', 'A98765432101748544319.pdf'),
(17, '11c', 'Introduction to AI & Data Science', 'A98765432101748544349.pdf'),
(18, '11c', 'Machine Learning', 'A98765432101748544366.pdf'),
(19, '11c', 'Deep Learning', 'A98765432101748544383.pdf'),
(20, '12s', 'Networking Fundamentals', 'A98765432101748544401.pdf'),
(21, '12s', 'Operating Systems & System Security', 'A98765432101748544418.pdf'),
(22, '12s', 'Web & Application Security', 'A98765432101748544439.pdf'),
(23, '11s', 'Programming Fundamentals for Games', 'A98765432101748544466.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `teachers`
--

CREATE TABLE `teachers` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(150) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `class` varchar(20) NOT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `teachers`
--

INSERT INTO `teachers` (`s_no`, `id`, `fname`, `lname`, `father`, `subject`, `gender`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `class`, `class_name`, `section`) VALUES
(2, 'T1748520016', 'Youssef ', 'El Fadili', '', 'Front-end development', 'Male', '01-01-2000', 'T17485200161748525304.jpg', '0624359815', 'youssefel@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '12c', 'Full-Stack Web Development', 'A'),
(3, 'T1748520244', 'Reda ', 'Amrani', '', 'Back-end development', 'Male', '01-01-2000', 'T17485202441748525350.jpg', '0625486759', 'redaar@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '12c', 'Full-Stack Web Development', 'A'),
(4, 'T1748520468', 'Salma ', 'Idrissi', '', 'Databases', 'Female', '01-01-2000', 'T17485204681748525395.jpg', '0624515685', 'salmaid@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '12c', 'Full-Stack Web Development', 'A'),
(5, 'T1748520591', 'Hamza ', 'Bouziane', '', 'Introduction to AI & Data Science', 'Male', '01-01-2000', 'T17485205911748525438.jpg', '0624569814', 'hamzabo@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '11c', 'Artificial Intelligence & Data Science', 'A'),
(6, 'T1748520746', 'Mehdi ', 'Ait Lhaj', '', 'Machine Learning', 'Male', '01-01-2000', 'T17485207461748525479.jpg', '0624153565', 'mehdiai@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '11c', 'Artificial Intelligence & Data Science', 'A'),
(7, 'T1748520885', 'Nabil ', 'Tazi', '', 'Deep Learning', 'Male', '01-01-2000', 'T17485208851748525513.jpg', '0624153698', 'nabilta@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '11c', 'Artificial Intelligence & Data Science', 'A'),
(8, 'T1748521041', 'Hajar ', 'El Fassi', '', 'Networking Fundamentals', 'Female', '01-01-2000', 'T17485210411748525554.jpg', '0624565891', 'hajarel@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '12s', 'Cybersecurity', 'A'),
(9, 'T1748521124', 'Nawal', ' Rami ', '', 'Operating Systems & System Security', 'Female', '01-01-2000', 'T17485211241748525610.jpg', '0624569814', 'nawalra@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '12s', 'Cybersecurity', 'A'),
(10, 'T1748521409', 'Anouar  ', 'Idrissi', '', 'Web & Application Security', 'Male', '01-01-2000', 'T17485214091748525658.jpg', '0624569812', 'anouarid@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '12s', 'Cybersecurity', 'A'),
(11, 'T1748521523', 'Tarik ', 'Khattabi', '', 'Programming Fundamentals for Games', 'Male', '01-01-2000', 'T17485215231748525703.jpg', '0624156987', 'tarikkh@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '11s', 'Game Development', 'A'),
(12, 'T1748521607', 'Ayoub ', 'Bennani', '', 'Game Engines', 'Male', '01-01-2000', 'T17485216071748525741.jpg', '0614589765', 'ayoubbe@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '11s', 'Game Development', 'A'),
(13, 'T1748521690', 'Hind ', 'Azouzi ', '', '2D & 3D Game Development', 'Male', '01-01-2000', 'T17485216901748525782.jpg', '0624589624', 'hindaz@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '11s', 'Game Development', 'A'),
(14, 'T1748597572', 'Yassine ', 'myara', '', '...', 'Male', '01-01-2000', '1701517055user.png', '0617615890', 'yassinemyr@generation.nt.ma', 'meknes', 'meknes', '50000', 'Fès-Meknès', '12c', NULL, 'A');

-- --------------------------------------------------------

--
-- Structure de la table `teacher_guardian`
--

CREATE TABLE `teacher_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(256) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(256) NOT NULL,
  `gcity` varchar(50) NOT NULL,
  `gzip` varchar(20) NOT NULL,
  `relation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `teacher_guardian`
--

INSERT INTO `teacher_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(2, 'T1748520016', 'Ahmed', '0632548965', 'meknes', 'meknes', '50000', 'pere'),
(3, 'T1748520244', 'Ahmed', '0624515698', 'meknes', 'meknes', '50000', 'pere'),
(4, 'T1748520468', 'Ahmed', '0624536589', 'meknes', 'meknes', '50000', 'pere'),
(5, 'T1748520591', 'Ahmed', '0624530014', 'meknes', 'meknes', '50000', 'pere'),
(6, 'T1748520746', 'Ahmed', '0617615890', 'meknes', 'meknes', '50000', 'pere'),
(7, 'T1748520885', 'Ahmed', '0614523648', 'meknes', 'meknes', '50000', 'pere'),
(8, 'T1748521041', 'Ahmed', '0624569875', 'meknes', 'meknes', '50000', 'pere'),
(9, 'T1748521124', 'Ahmed', '0624153687', 'meknes', 'meknes', '50000', 'pere'),
(10, 'T1748521409', 'Ahmed', '0624176598', 'meknes', 'meknes', '50000', 'pere'),
(11, 'T1748521523', 'Ahmed', '0624154589', 'meknes', 'meknes', '50000', 'pere'),
(12, 'T1748521607', 'Ahmed', '0689325687', 'meknes', 'meknes', '50000', 'pere'),
(13, 'T1748521690', 'Ahmed', '0617615890', 'meknes', 'meknes', '50000', 'pere'),
(14, 'T1748597572', 'ahmed', '0600000023', 'meknes', 'meknes', '50000', 'pere');

-- --------------------------------------------------------

--
-- Structure de la table `time_table`
--

CREATE TABLE `time_table` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `section` varchar(10) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `mon` varchar(30) NOT NULL,
  `tue` varchar(30) NOT NULL,
  `wed` varchar(30) NOT NULL,
  `thu` varchar(30) NOT NULL,
  `fri` varchar(30) NOT NULL,
  `sat` varchar(30) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `time_table`
--

INSERT INTO `time_table` (`s_no`, `class`, `section`, `start_time`, `end_time`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `editor_id`, `timestamp`) VALUES
(1, '12c', 'A', '08:30', '09:30', 'Front-end Dev', '-----', '-----', 'Front-end Dev', 'Back-end Dev', '', 'A9876543210', '2025-05-30 10:35:56'),
(2, '12c', 'A', '09:30', '10:30', 'Front-end Dev', '-----', '-----', 'Front-end Dev', 'Back-end Dev', '', 'A9876543210', '2025-05-30 10:35:56'),
(3, '12c', 'A', '10:30', '11:30', '-----', 'Back-end Dev', '-----', 'Back-end Dev', 'Front-end Dev', '', 'A9876543210', '2025-05-30 10:35:56'),
(4, '12c', 'A', '11:30', '12:30', '-----', 'Back-end Dev', '-----', 'Back-end Dev', 'Front-end Dev', '', 'A9876543210', '2025-05-30 10:35:56'),
(5, '12c', 'A', '14:30', '15:30', 'Back-end Dev', 'Front-end Dev', 'Front-end Dev', '-----', '------', '', 'A9876543210', '2025-05-30 10:35:56'),
(6, '12c', 'A', '15:30', '16:30', 'Back-end Dev', 'Front-end Dev', '-----', '-----', '------', '', 'A9876543210', '2025-05-30 10:35:56'),
(7, '12c', 'A', '16:30', '17:30', '------', 'Databases', 'Front-end Dev', 'Databases', '------', '', 'A9876543210', '2025-05-30 10:35:56'),
(8, '12c', 'A', '17:30', '18:30', '-----', 'Databases', 'Front-end Dev', 'Databases', '------', '', 'A9876543210', '2025-05-30 10:35:56'),
(9, '11c', 'A', '08:30', '09:30', 'AI & Data Science', 'Deep Learning', '-----', '-----', 'AI & Data Science', '', 'A9876543210', '2025-05-29 19:34:43'),
(10, '11c', 'A', '09:30', '10:30', 'AI & Data Science', 'Deep Learning', '-----', '-----', 'AI & Data Science', '', 'A9876543210', '2025-05-29 19:34:43'),
(11, '11c', 'A', '10:30', '11:30', 'AI & Data Science', 'Deep Learning', 'AI & Data Science', 'Deep Learning', 'AI & Data Science', '', 'A9876543210', '2025-05-29 19:34:43'),
(12, '11c', 'A', '11:30', '12:30', 'AI & Data Science', 'Deep Learning', 'AI & Data Science', 'Deep Learning', 'AI & Data Science', '', 'A9876543210', '2025-05-29 19:34:43'),
(13, '11c', 'A', '14:30', '15:30', 'Machine Learning', 'AI & Data Science', 'Machine Learning', 'Machine Learning', '-----', '', 'A9876543210', '2025-05-29 19:34:43'),
(14, '11c', 'A', '15:30', '16:30', 'Machine Learning', 'AI & Data Science', 'Machine Learning', 'Machine Learning', '-----', '', 'A9876543210', '2025-05-29 19:34:43'),
(15, '11c', 'A', '16:30', '17:30', '-----', '-----', '-----', 'Machine Learning', '-----', '', 'A9876543210', '2025-05-29 19:34:43'),
(16, '11c', 'A', '17:30', '18:30', '-----', '-----', '-----', 'Machine Learning', '-----', '', 'A9876543210', '2025-05-29 19:34:43'),
(17, '12s', 'A', '08:30', '09:30', 'Networking Fundamentals', '-----', '-----', 'System Security', 'Networking Fundamentals', '', 'A9876543210', '2025-05-29 19:38:34'),
(18, '12s', 'A', '09:30', '10:30', 'Networking Fundamentals', '-----', '-----', 'System Security', 'Networking Fundamentals', '', 'A9876543210', '2025-05-29 19:38:34'),
(19, '12s', 'A', '10:30', '11:30', 'Networking Fundamentals', 'System Security', '-----', 'System Security', 'Web & Application Security ', '', 'A9876543210', '2025-05-29 19:38:34'),
(20, '12s', 'A', '11:30', '12:30', 'Networking Fundamentals', 'System Security', '-----', 'System Security', 'Web & Application Security ', '', 'A9876543210', '2025-05-29 19:38:34'),
(21, '12s', 'A', '14:30', '15:30', 'System Security', 'Web & Application Security', '------', 'Networking Fundamentals', '-----', '', 'A9876543210', '2025-05-29 19:38:34'),
(22, '12s', 'A', '15:30', '16:30', 'System Security', 'Web & Application Security', '------', 'Networking Fundamentals', '-----', '', 'A9876543210', '2025-05-29 19:38:34'),
(23, '12s', 'A', '16:30', '17:30', 'System Security', 'Web & Application Security', 'Web & Application Security', 'Networking Fundamentals', '-----', '', 'A9876543210', '2025-05-29 19:38:34'),
(24, '12s', 'A', '17:30', '18:30', 'System Security', 'Web & Application Security', 'Web & Application Security', 'Networking Fundamentals', '-----', '', 'A9876543210', '2025-05-29 19:38:34'),
(25, '11s', 'A', '08:30', '09:30', '2D & 3D Game Dev', '------', 'Programming Fundamentals', '2D & 3D Game Dev', 'Game Engines', '', 'A9876543210', '2025-05-29 19:42:37'),
(26, '11s', 'A', '09:30', '10:30', '2D & 3D Game Dev', '------', 'Programming Fundamentals', '2D & 3D Game Dev', 'Game Engines', '', 'A9876543210', '2025-05-29 19:42:37'),
(27, '11s', 'A', '10:30', '11:30', '-----', '2D & 3D Game Dev', 'Programming Fundamentals', '2D & 3D Game Dev', 'Programming Fundamentals', '', 'A9876543210', '2025-05-29 19:42:37'),
(28, '11s', 'A', '11:30', '12:30', '-----', '2D & 3D Game Dev', 'Programming Fundamentals', '2D & 3D Game Dev', 'Programming Fundamentals', '', 'A9876543210', '2025-05-29 19:42:37'),
(29, '11s', 'A', '14:30', '15:30', 'Programming Fundamentals', 'Game Engines', 'Game Engines', '-----', '-----', '', 'A9876543210', '2025-05-29 19:42:37'),
(30, '11s', 'A', '15:30', '16:30', 'Programming Fundamentals', 'Game Engines', 'Game Engines', '-----', '-----', '', 'A9876543210', '2025-05-29 19:42:37'),
(31, '11s', 'A', '16:30', '17:30', 'Game Engines', 'Game Engines', '-----', 'Programming Fundamentals', '-----', '', 'A9876543210', '2025-05-29 19:42:37'),
(32, '11s', 'A', '17:30', '18:30', 'Game Engines', 'Game Engines', '-----', 'Programming Fundamentals', '-----', '', 'A9876543210', '2025-05-29 19:42:37'),
(33, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(34, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(35, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(36, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(37, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(38, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(39, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(40, '11c', 'B', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 15:50:02'),
(41, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42'),
(42, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42'),
(43, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42'),
(44, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42'),
(45, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42'),
(46, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42'),
(47, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42'),
(48, '10', 'A', '', '', '', '', '', '', '', '', 'A9876543210', '2025-05-29 19:42:42');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `s_no` int(15) NOT NULL,
  `id` varchar(40) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password_hash` varchar(700) NOT NULL,
  `role` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`s_no`, `id`, `email`, `password_hash`, `role`, `theme`) VALUES
(1, 'A9876543210', 'admin@generation.nt.ma', '$2y$10$8h3sB9bRhNpAJ.py6PFR0.FcJrLbQqy0waMGxYvOvlQabzBy33ymW', 'admin', 'light'),
(4, 'O7898987845', 'owner@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'owner', 'light'),
(5, 'T1748520016', 'youssefel@generation.nt.ma', '$2y$10$4KObyNK2eQXCaq6iIlsWGek3LuJLxvtwIIEUqWjytg3gG55EV4Ncm', 'teacher', 'light'),
(6, 'T1748520244', 'redaar@generation.nt.ma', '$2y$10$6Awgc6FqV2Lmbg4YjGpYbunigIZRNFS6k.53l6vk6s/B052/BnQju', 'teacher', 'light'),
(7, 'T1748520468', 'salmaid@generation.nt.ma', '$2y$10$SXHj8i3f89s5T9rcc7Xo6e48220uwsCAhZDfxW55oiDONgG2dfCgy', 'teacher', 'light'),
(8, 'T1748520591', 'hamzabo@generation.nt.ma', '$2y$10$MM/iGgw/ZkPZfM/9B2ade.qfo1E/Cw6jixlyYcabM4pwScQ6LtGYm', 'teacher', 'light'),
(9, 'T1748520746', 'mehdiai@generation.nt.ma', '$2y$10$PcYknWg55Ydwd1Yu3.qOTOXIuAWGhJDAr/HQInnc.84M8.R/sOXoi', 'teacher', 'light'),
(10, 'T1748520885', 'nabilta@generation.nt.ma', '$2y$10$IHafi5yzhXBdBLINRjiBkOPI9YhxxMNDBRlyUarl6yuWmPIfTWPvi', 'teacher', 'light'),
(11, 'T1748521041', 'hajarel@generation.nt.ma', '$2y$10$1aFpiIJ4vpV.tAOrIuNsfeFGL7mz0zn4Nu.RgaB7WTW0dPG4N3n0G', 'teacher', 'light'),
(12, 'T1748521124', 'nawalra@generation.nt.ma', '$2y$10$kzQbNUm4VM7HROqsAOby5.krwPtG8b20YHI6DJZnXErHl2nJMPraW', 'teacher', 'light'),
(13, 'T1748521409', 'anouarid@generation.nt.ma', '$2y$10$unNnp6LFcF.SW80UNOa1qu7yNA2KEaHFcK.qV23XfIkkMDwltjW3y', 'teacher', 'light'),
(14, 'T1748521523', 'tarikkh@generation.nt.ma', '$2y$10$nJOM4k/GW635F.6fDs/YG.qIi4QHwWJaKJUQfNbB5pz6B.LQqjnwO', 'teacher', 'light'),
(15, 'T1748521607', 'ayoubbe@generation.nt.ma', '$2y$10$K6SX5FPxxriVscvnDu2.ve7H6PZokjEDKzoeXydRLdBoA0Aq5BcxK', 'teacher', 'light'),
(16, 'T1748521690', 'hindaz@generation.nt.ma', '$2y$10$/kiHFyifeJni6RsZAjwSmex2L2NYNIUScKXXOIH9dCs9WrY.c7zfW', 'teacher', 'light'),
(25, 'S1748524486', 'yassinemy@generation.nt.ma', '$2y$10$FyB8IEzH0BTq4OJ0lEhzYuns4GTBypTKaUzvQP6LTutIZZPIXraBO', 'student', 'light'),
(26, 'S1748524554', 'oussamala@generation.nt.ma', '$2y$10$inJUkCzLM45L6Gcg43XN2ubcfT/2I/THsEUJxuBoL9mpB2K0oA9Fm', 'student', 'light'),
(27, 'S1748524614', 'ayala@generation.nt.ma', '$2y$10$HW8L.B5q8HaOuaD77WMjTenAFmV4JrETtNADGiV7XSPH42Ni.ipMO', 'student', 'light'),
(28, 'S1748524680', 'salmaha@generation.nt.ma', '$2y$10$RKKVRJ28mlMajTCSkxt8iuKdGJT.JQdeskcj7q4scsfTHTD0p.aYy', 'student', 'light'),
(29, 'S1748524796', 'yassinemo@generation.nt.ma', '$2y$10$onMrXTDgP2pO2wa4fiFJAeLYOMuJil8dY2OzACNy1OCRC8xjHhnU2', 'student', 'light'),
(30, 'S1748524863', 'tahael@generation.nt.ma', '$2y$10$I0xnNgeVPtYN6JLIvFT7SOQkJtHOspXh7PZbZoPT2vXMeiqYQyYOa', 'student', 'light'),
(31, 'S1748524939', 'imaneel@generation.nt.ma', '$2y$10$MBHOVfg2mvN9gLCQPpcFyOMflamj4J0Xs/to.QveATjhqUTnNQ6N2', 'student', 'light'),
(32, 'S1748525013', 'nisrinefa@generation.nt.ma', '$2y$10$o8YLMXnftrRGgydDcYo4WOXlhEfinnVSZ1kmNF0hidxfFko8RqNxO', 'student', 'light'),
(33, 'T1748597572', 'yassinemyr@generation.nt.ma', '$2y$10$O73rsyIsb52YYSK/Drz.I.KGmeAhqJQxMA0eiiJ4tXL9594FRqCN6', 'teacher', 'light');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `fee_record`
--
ALTER TABLE `fee_record`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `student_guardian`
--
ALTER TABLE `student_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exams`
--
ALTER TABLE `exams`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `fee_record`
--
ALTER TABLE `fee_record`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `marks`
--
ALTER TABLE `marks`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `notice`
--
ALTER TABLE `notice`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `student_guardian`
--
ALTER TABLE `student_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `s_no` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

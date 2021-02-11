-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 10:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdv`
--

-- --------------------------------------------------------

--
-- Table structure for table `annonce`
--

CREATE TABLE `annonce` (
  `id` int(11) NOT NULL,
  `contenu` longtext DEFAULT NULL,
  `idEmploye` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annonce`
--

INSERT INTO `annonce` (`id`, `contenu`, `idEmploye`, `image`, `titre`) VALUES
(41, 'COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?', 31, 'DSC01554-1080x675.jpg', 'CVID D-Prived and Down?'),
(42, 'COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?', 31, 'DSC01554-1080x675.jpg', 'COVID D-Prived and Down?');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `cin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `numTele` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mot_de_passe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_debut` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photoProfile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ancien_mot_de_passe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `cin`, `nom`, `prenom`, `numTele`, `adresse`, `email`, `mot_de_passe`, `date_debut`, `photoProfile`, `ancien_mot_de_passe`) VALUES
(1, 'D78932', 'amiri', 'mohamed', '0624273884', 'ajmous', 'amiri@gmail.com', 'mohamedamiri17', '25-7-2021', 'benaicha.jpg', 'mohamedamiri17');

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `contenu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(3) NOT NULL,
  `cin` varchar(120) NOT NULL,
  `nom` varchar(120) NOT NULL,
  `prenom` varchar(120) NOT NULL,
  `ville` varchar(120) NOT NULL,
  `email` varchar(220) NOT NULL,
  `mot_de_passe` varchar(500) NOT NULL,
  `num_telephone` varchar(500) NOT NULL,
  `date_debut` varchar(120) NOT NULL,
  `photo_profil` varchar(500) NOT NULL,
  `ancien_mot_de_passe` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(10) NOT NULL DEFAULT 0,
  `isConge` tinyint(10) NOT NULL DEFAULT 0,
  `nombre_de_mois` int(10) NOT NULL,
  `statut_payment` tinyint(10) NOT NULL DEFAULT 0,
  `showPaymentOption` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`id`, `cin`, `nom`, `prenom`, `ville`, `email`, `mot_de_passe`, `num_telephone`, `date_debut`, `photo_profil`, `ancien_mot_de_passe`, `isAdmin`, `isConge`, `nombre_de_mois`, `statut_payment`, `showPaymentOption`) VALUES
(4, 'D990099', 'Elattar', 'Mohamed', 'Agadir', 'amine98ben90@gmail.com', 'Amine123', '0787980990', '11-11-2020', 'elattar.jpg', 'Amine123', 0, 0, 2, 1, 0),
(14, 'I737329', 'Benaicha', 'Mohamed Amine', 'Beni Mellal', 'amine98ben90@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0635734578', '17-09-2020', 'benaicha.jpg', 'Amine1234', 1, 0, 4, 1, 0),
(31, 'J334445', 'attar', 'Mohamed', 'Agadir', 'amiri@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0671944135', '04-02-2021', 'DSC_1874.jpg', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, 0, 0, 0, 0),
(34, 'J334445', 'attar', 'Mohamed', 'Agadir', 'amiri12@gmail.com', 'c775e7b757ede630cd0aa1113bd102661ab38829ca52a6422ab782862f268646', '0671944135', '04-02-2021', 'Jessica-Longden.png', 'c775e7b757ede630cd0aa1113bd102661ab38829ca52a6422ab782862f268646', 0, 0, 0, 0, 0),
(35, 'J334445', 'attar', 'Mohamed', 'Agadir', 'amiri@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0671944135', '05-02-2021', 'Dentist-with-smiling-patient-696x464.jpg', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(41);

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `contenu` longtext DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `idEmploye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`id`, `titre`, `contenu`, `image`, `date`, `idEmploye`) VALUES
(2, 'Mlanoma: What You Need to Know', 'Melanoma is known as malignant melanoma or cutaneous melanoma, an aggressive form of skin cancer. It arises from the cells that give skin its color, the pigment-producing cells present in the epidermis called melanocytes.\r\n\r\nMelanomas can develop anywhere on the body. Because melanoma cells stem from pigment-producing cells, melanomas are most frequently brown or black in color. In rare instances, melanoma develops from pigmented cells that are not associated with the skin, such as the eye or other internal organs.', 'Dentist-with-smiling-patient-696x464.jpg', '2021-02-05 11:35:25', 31),
(3, '  Need to Worry About Getting Cancer', 'Some people worry about getting cancer continuously. Their persistent fear of cancer rises to the level of an overt phobia that is known as cancerophobia. It may lead to repeated medical examinations that fail to reveal a malignancy. Despite this, people with this condition are unable to be reassured about their clean bill of health for any length of time. This article will explore why most of us probably donÃ¢ÂÂt need to worry about getting cancer.', 'photo-1434494878577-86c23bcb06b9.jpg', '2021-02-05 11:41:18', 31),
(4, ' 5 Strategies That Will Help', 'Fortunately, our higher brains can come to the rescue and help us make good on our intentions. Ultimately, I did rouse myself and completed the at-home workout Iâve devised to substitute for my gym routine during the pandemic. I even did some extra repetitions for good measure.', 'make-fitnesss-a-habit-older-man-at-a-gym-696x464.jpg', '2021-02-05 11:43:39', 31),
(5, 'COVID-19 Vaccine Distribution', 'We have entered a new phase of the COVID-19 pandemic. A phase that is not only critical but that also offers great hope. It encompasses the monumental task of vaccinating hundreds of millions of Americans with the newly available COVID-19 vaccines. And, to do it as rapidly and safely as possible in order to get this crisis under control.', 'Dentist-with-smiling-patient-696x464.jpg', '2021-02-05 11:45:51', 31);

-- --------------------------------------------------------

--
-- Table structure for table `reservation2`
--

CREATE TABLE `reservation2` (
  `idReservation` int(11) NOT NULL,
  `cin` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `heure` varchar(100) NOT NULL,
  `idClient` int(11) NOT NULL,
  `statut` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation2`
--

INSERT INTO `reservation2` (`idReservation`, `cin`, `date`, `heure`, `idClient`, `statut`) VALUES
(15, 'I897878', '2021-02-03', '12:20', 1, 'confirmée'),
(21, 'I898789', '2021-02-03', '09:00', 4, 'confirmée'),
(36, 'I987878', '2021-02-18', '07:16', 1, 'confirmée'),
(40, 'D78932', '2021-02-05', '09:00', 1, 'ignorée');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEmploye` (`idEmploye`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idClient` (`idClient`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEmploye` (`idEmploye`);

--
-- Indexes for table `reservation2`
--
ALTER TABLE `reservation2`
  ADD PRIMARY KEY (`idReservation`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservation2`
--
ALTER TABLE `reservation2`
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `EmployeAnnonceContrainte` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `IdClietComment` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `EmployePublicationContrainte` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

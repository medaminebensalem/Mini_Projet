-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 20 mai 2025 à 20:51
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
-- Base de données : `akabd`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sujet` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date_envoi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `nom`, `email`, `sujet`, `message`, `date_envoi`) VALUES
(1, 'amine', 'amine@gmail.com', 'juu', 'xxljionyuv', '2025-05-03 15:47:32'),
(2, '', 'amine@gmail.com', 'juu', '', '2025-05-03 17:33:26'),
(3, '', 'amine@gmail.com', 'juu', '', '2025-05-03 17:35:40'),
(4, '', 'amine@gmail.com', 'juu', '', '2025-05-03 17:35:46'),
(5, 'yassin', 'yassin@gmail.com', 'juu', 'hhhhhhhh', '2025-05-03 17:46:08'),
(6, 'yassin', 'yassin@gmail.com', 'juu', 'hhhhhhhh', '2025-05-03 17:46:34'),
(7, 'yassin', 'yassin@gmail.com', 'juu', 'hhhhhhhh', '2025-05-03 17:50:43'),
(8, 'yassin', 'yassin@gmail.com', 'juu', 'hhhhhhhh', '2025-05-03 17:58:35'),
(9, 'yassin', 'yassin@gmail.com', 'juu', 'hhhhhhhh', '2025-05-03 17:59:09'),
(10, 'yassin', 'amine@gmail.com', 'goooo', 'yfu', '2025-05-20 18:49:32');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_inscription` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

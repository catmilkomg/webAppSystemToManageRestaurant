-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230212.f19d22c671
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 07 mars 2023 à 19:50
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rms`
--

-- --------------------------------------------------------

--
-- Structure de la table `order_item_table`
--

CREATE TABLE `order_item_table` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_quantity` int(4) NOT NULL,
  `product_rate` decimal(12,2) NOT NULL,
  `product_amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `order_item_table`
--

INSERT INTO `order_item_table` (`order_item_id`, `order_id`, `product_name`, `product_quantity`, `product_rate`, `product_amount`) VALUES
(2, 2, 'Viennetta  praline amandes noisettes', 1, 60.95, 60.95),
(3, 2, 'Croustillant de fruits rouges confits', 1, 60.95, 60.95),
(4, 2, 'Boudin de la mer', 2, 800.95, 1601.90),
(5, 3, 'Escargots au beurre persille', 1, 250.95, 250.95),
(6, 4, 'Palet Chocolat fume', 1, 90.95, 90.95),
(7, 5, 'Palet Chocolat fume', 1, 90.95, 90.95),
(8, 6, 'Tartare et Ceviche de Liche de Mediteranee', 4, 50.95, 203.80),
(9, 7, 'Croustillant de fruits rouges confits', 2, 60.95, 121.90),
(10, 8, 'Escargots au beurre persille', 1, 250.95, 250.95),
(11, 9, 'Viennetta  praline amandes noisettes', 1, 60.95, 60.95),
(12, 10, 'Boudin de la mer', 1, 800.95, 800.95),
(13, 9, 'Boudin de la mer', 1, 800.95, 800.95),
(14, 11, 'Boudin de la mer', 1, 800.95, 800.95),
(15, 12, 'Tartare et Ceviche de Liche de Mediteranee', 2, 50.95, 101.90),
(16, 13, 'Tartare et Ceviche de Liche de Mediteranee', 1, 50.95, 50.95);

-- --------------------------------------------------------

--
-- Structure de la table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL,
  `order_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order_table` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_gross_amount` decimal(12,2) NOT NULL,
  `order_tax_amount` decimal(12,2) NOT NULL,
  `order_net_amount` decimal(12,2) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `order_waiter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_cashier` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_status` enum('In Process','Completed') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `order_table`
--

INSERT INTO `order_table` (`order_id`, `order_number`, `order_table`, `order_gross_amount`, `order_tax_amount`, `order_net_amount`, `order_date`, `order_time`, `order_waiter`, `order_cashier`, `order_status`) VALUES
(2, '100000', 'outdoors tables 2', 1723.80, 0.00, 1723.80, '2022-06-18', '02:29:09', 'Master', 'Master', 'Completed'),
(3, '100001', 'outdoors tables 2', 250.95, 25.10, 276.05, '2022-06-18', '02:37:17', 'Master', 'Master', 'Completed'),
(4, '100002', 'bar height 3', 90.95, 0.00, 90.95, '2022-06-18', '02:31:43', 'Master', 'Master', 'Completed'),
(5, '100003', 'family table 1', 90.95, 0.00, 90.95, '2022-06-20', '21:08:48', 'Master', 'Master', 'Completed'),
(6, '100004', 'outdoors tables 2', 203.80, 0.00, 203.80, '2022-06-20', '21:22:29', 'Master', 'Master', 'Completed'),
(7, '100005', 'family table 1', 121.90, 0.00, 121.90, '2022-06-21', '10:30:46', 'Master', 'Master', 'Completed'),
(8, '100006', 'outdoors tables 1', 250.95, 0.00, 250.95, '2022-06-21', '11:18:57', 'Master', 'Master', 'Completed'),
(9, '100007', 'family table 1', 0.00, 0.00, 0.00, '2022-06-21', '11:17:47', 'Master', '', 'In Process'),
(10, '100008', 'family table 1', 800.95, 0.00, 800.95, '2022-06-21', '11:29:02', 'Master', 'omar', 'Completed'),
(11, '100009', 'outdoors tables 1', 0.00, 0.00, 0.00, '2022-06-21', '11:29:42', 'karim', '', 'In Process'),
(12, '100010', 'bar height 1', 101.90, 0.00, 101.90, '2022-06-21', '11:32:35', 'karim', 'omar', 'Completed'),
(13, '100011', 'bar height 1', 50.95, 5.10, 56.05, '2022-06-21', '16:56:14', 'Master', 'Master', 'Completed');

-- --------------------------------------------------------

--
-- Structure de la table `order_tax_table`
--

CREATE TABLE `order_tax_table` (
  `order_tax_table_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_tax_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `order_tax_percentage` decimal(4,2) NOT NULL,
  `order_tax_amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `order_tax_table`
--

INSERT INTO `order_tax_table` (`order_tax_table_id`, `order_id`, `order_tax_name`, `order_tax_percentage`, `order_tax_amount`) VALUES
(3, 3, 'TAX1', 10.00, 25.10),
(4, 13, 'TAX1', 10.00, 5.10);

-- --------------------------------------------------------

--
-- Structure de la table `product_category_table`
--

CREATE TABLE `product_category_table` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `category_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `product_category_table`
--

INSERT INTO `product_category_table` (`category_id`, `category_name`, `category_status`) VALUES
(2, 'starters', 'Enable'),
(3, 'main course', 'Enable'),
(4, 'Special dishes', 'Enable'),
(5, 'Fruit', 'Enable'),
(6, 'fruits', 'Enable');

-- --------------------------------------------------------

--
-- Structure de la table `product_table`
--

CREATE TABLE `product_table` (
  `product_id` int(11) NOT NULL,
  `category_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `product_table`
--

INSERT INTO `product_table` (`product_id`, `category_name`, `product_name`, `product_price`, `product_status`) VALUES
(2, 'starters', 'Tartare et Ceviche de Liche de Mediteranee', 50.95, 'Enable'),
(3, 'starters', 'Chutney de fraises au vinaigre de framboise', 40.95, 'Enable'),
(4, 'starters', 'Raviolis de ricotta a la blette', 90.95, 'Enable'),
(5, 'main course', 'Boudin de la mer', 800.95, 'Enable'),
(6, 'main course', 'Filet de Boeuf', 905.95, 'Enable'),
(7, 'main course', 'Pomme de Ris de Veau', 900.95, 'Enable'),
(8, 'dessert', 'Viennetta  praline amandes noisettes', 60.95, 'Enable'),
(9, 'dessert', 'Croustillant de fruits rouges confits', 60.95, 'Enable'),
(10, 'dessert', 'Palet Chocolat fume', 90.95, 'Enable'),
(11, 'Special dishes', 'Cassoulet', 500.00, 'Enable'),
(12, 'Special dishes', 'Escargots au beurre persille', 250.95, 'Enable'),
(13, 'Special dishes', 'boeuf bourguignon', 650.00, 'Enable'),
(14, 'Special dishes', 'Bouillabaisse', 700.95, 'Enable'),
(15, 'Special dishes', 'Coq au Vin', 550.95, 'Enable');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_table`
--

CREATE TABLE `restaurant_table` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_tag_line` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_address` text COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_contact_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_timezone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `restaurant_table`
--

INSERT INTO `restaurant_table` (`restaurant_id`, `restaurant_name`, `restaurant_tag_line`, `restaurant_address`, `restaurant_contact_no`, `restaurant_email`, `restaurant_currency`, `restaurant_timezone`, `restaurant_logo`) VALUES
(1, 'Dynastie', 'Au service de la bonne bouffe depuis plus de 18 ans!', 'Derb Moulay Abdellah Ben Hezzian, Bab El Ksour, Medina, Marrakech', '0644630398', 'Aymane@gmail.ily', 'MAD', 'Africa/Casablanca', 'images/1625222534.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `table_data`
--

CREATE TABLE `table_data` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `table_capacity` int(3) NOT NULL,
  `table_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `table_data`
--

INSERT INTO `table_data` (`table_id`, `table_name`, `table_capacity`, `table_status`) VALUES
(2, 'family table 1', 10, 'Enable'),
(3, 'outdoors tables 1', 4, 'Enable'),
(4, 'bar height 1', 1, 'Enable'),
(5, 'outdoors tables 2', 2, 'Enable'),
(6, 'family table 2', 8, 'Enable'),
(7, 'bar height 2', 1, 'Enable'),
(8, 'bar height 3', 1, 'Enable'),
(9, 'bar height 4', 1, 'Enable'),
(10, 'outdoors tables 3', 4, 'Enable'),
(11, 'outdoors tables 4', 4, 'Enable');

-- --------------------------------------------------------

--
-- Structure de la table `tax_table`
--

CREATE TABLE `tax_table` (
  `tax_id` int(11) NOT NULL,
  `tax_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tax_percentage` decimal(4,2) NOT NULL,
  `tax_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tax_table`
--

INSERT INTO `tax_table` (`tax_id`, `tax_name`, `tax_percentage`, `tax_status`) VALUES
(1, 'TAX1', 10.00, 'Enable');

-- --------------------------------------------------------

--
-- Structure de la table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_contact_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('Master','Waiter','Cashier') COLLATE utf8_unicode_ci NOT NULL,
  `user_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `user_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_name`, `user_contact_no`, `user_email`, `user_password`, `user_profile`, `user_type`, `user_status`, `user_created_on`) VALUES
(1, 'zineb', '0644630398', 'zineb@gmail.com', '12345', 'images/207167117.jpg', 'Master', 'Enable', '2022-06-18 02:26:58');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `order_item_table`
--
ALTER TABLE `order_item_table`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Index pour la table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `order_tax_table`
--
ALTER TABLE `order_tax_table`
  ADD PRIMARY KEY (`order_tax_table_id`);

--
-- Index pour la table `product_category_table`
--
ALTER TABLE `product_category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Index pour la table `table_data`
--
ALTER TABLE `table_data`
  ADD PRIMARY KEY (`table_id`);

--
-- Index pour la table `tax_table`
--
ALTER TABLE `tax_table`
  ADD PRIMARY KEY (`tax_id`);

--
-- Index pour la table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `order_item_table`
--
ALTER TABLE `order_item_table`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `order_tax_table`
--
ALTER TABLE `order_tax_table`
  MODIFY `order_tax_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `product_category_table`
--
ALTER TABLE `product_category_table`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `table_data`
--
ALTER TABLE `table_data`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tax_table`
--
ALTER TABLE `tax_table`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

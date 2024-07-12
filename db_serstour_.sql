-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 12 juil. 2024 à 14:00
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_serstour+`
--

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `objectives` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`objectives`)),
  `side_events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`side_events`)),
  `activities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`activities`)),
  `eventpicture` varchar(255) DEFAULT NULL,
  `event_start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `event_end_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `name`, `created_at`, `updated_at`, `objectives`, `side_events`, `activities`, `eventpicture`, `event_start_date`, `event_end_date`) VALUES
(25, 'Traning of trainers', '2024-07-08 17:46:54', '2024-07-11 11:29:32', '\"make a project eshop\"', '\"pactise\"', '\"devlopement\"', 'event_pictures/3cbKcgiMIpLlr6WwEO0tMwpCc9G9JVmNkCpust2c.jpg', '2024-07-12 00:00:00', '2024-07-10 00:00:00'),
(26, 'ToT', '2024-07-08 18:46:07', '2024-07-09 11:15:32', '\"inovants project\"', '\"pactise\"', '\"devlopement name updated\"', 'event_pictures/E3cRpqJUK85DctYiDnHJBYgUilSYA0M0Fvjmgorm.jpg', '2024-07-13 00:00:00', '2024-07-10 00:00:00'),
(27, 'React js', '2024-07-08 18:46:40', '2024-07-09 11:32:29', '\"make a project eshop\"', '\"pactise\"', '\"devlopement\"', 'event_pictures/xGuqgWIJXJAm4JJXCYhVmucmqlAiIo1IyrVzwnzL.jpg', '2024-07-09 00:00:00', '2024-07-10 00:00:00'),
(29, 'laravel Formation', '2024-07-08 18:48:44', '2024-07-09 11:33:02', '\"inovants project\"', '\"pactise\"', '\"devlopement name\"', 'event_pictures/JPBwkrnwSxlrGWktdsj9t9xkHS39gbLhdm1MqmpH.jpg', '2024-07-19 00:00:00', '2024-07-10 00:00:00'),
(30, 'phone', '2024-07-08 18:51:02', '2024-07-09 11:33:43', '\"inovants project\"', '\"public speaking\"', '\"devlopement name updated\"', 'event_pictures/MtZw9VxPd63JBgbZGhw6iKLtXa0cAxEPcjCqbu5T.jpg', '2024-07-11 00:00:00', '2024-07-16 00:00:00'),
(31, 'devops', '2024-07-11 17:42:34', '2024-07-11 17:42:34', '\"inovants project\"', '\"public speaking\"', '\"jeux public jeus video\"', 'event_pictures/c5V4ViOZZwV2LXGQctokt3wKYzAy737pJgNX16eY.jpg', '2024-07-12 00:00:00', '2024-07-13 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `event_user`
--

CREATE TABLE `event_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2024_07_04_200539_create_events_table', 1),
(17, '2024_07_05_121834_add_profile_picture_to_users_table', 1),
(18, '2024_07_06_005650_add_social_links_to_users_table', 1),
(19, '2024_07_06_131928_create_event_user_table', 1),
(20, '2024_07_06_135334_add_details_to_events_table', 1),
(21, '2024_07_06_140842_remove_columns_from_users_table', 1),
(22, '2024_07_07_003029_create_reclamations_table', 1),
(23, '2024_07_09_005832_create_partners_table', 2),
(24, '2024_07_09_005839_create_sponsors_table', 2),
(25, '2024_07_09_020240_add_sponsorship_type_to_sponsors_table', 2),
(26, '2024_07_11_211436_add_new_details_to_events_table', 3),
(27, '2024_07_11_212656_add_new_details_to_events_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `activity_domain` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `partnership_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partners`
--

INSERT INTO `partners` (`id`, `name`, `description`, `contact`, `activity_domain`, `start_date`, `end_date`, `partnership_type`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Partner1', 'Godd partner', '73678939', 'dev web', '2024-07-12', '2024-07-12', 'VC Partner', 'partner_images/xUVabAYlfWh2kRoIq6IqiYCkVGvQQRXP4YSOx953.jpg', '2024-07-11 17:21:35', '2024-07-11 17:21:35'),
(3, 'Partner2', 'GOOD', '58178242', 'devops', '2024-07-19', '2024-07-13', 'Media Partner', 'partner_images/Bk1U5iAH37vYgNGWq5mDo7EyMN5faa3daLVE9VPM.jpg', '2024-07-11 17:22:35', '2024-07-11 17:22:35'),
(4, 'Partner3', 'good', '476373993', 'dev web', '2024-07-12', '2024-07-13', 'VC Partner', 'partner_images/mmilDIadFwoak4ZAXMFgT6qR6DcLx67J7iXvHFUy.jpg', '2024-07-11 17:23:24', '2024-07-11 17:23:24');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reclamations`
--

CREATE TABLE `reclamations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `response` text DEFAULT NULL,
  `replied_at` timestamp NULL DEFAULT NULL,
  `is_user` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reclamations`
--

INSERT INTO `reclamations` (`id`, `name`, `email`, `text`, `response`, `replied_at`, `is_user`, `created_at`, `updated_at`) VALUES
(1, 'saber', 'saber@gmail.com', 'good luck', NULL, NULL, 0, '2024-07-11 17:39:47', '2024-07-11 17:39:47');

-- --------------------------------------------------------

--
-- Structure de la table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `sponsorship_level` varchar(255) DEFAULT NULL,
  `contribution_amount` int(11) DEFAULT NULL,
  `benefits_offered` text DEFAULT NULL,
  `sponsorship_duration` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sponsorship_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `description`, `contact`, `sponsorship_level`, `contribution_amount`, `benefits_offered`, `sponsorship_duration`, `image`, `created_at`, `updated_at`, `sponsorship_type`) VALUES
(2, 'ooredoo', 'good sponsor', '58178242', '3', 300, 'make your logo', '2024-07-10', 'sponsor_images/8075ohlp9pwqBLkZHRlWPBzJ17osTPVkQ2txr7x2.png', '2024-07-09 14:39:15', '2024-07-09 16:25:13', 'Official Sponsors'),
(3, 'sponsor4', 'good sponsor', '73678939', '3', 5000, 'logo', '2024-07-10', 'sponsor_images/yKldmjyEkb1p4Oo6o4zNVwmCXwsq2Rqg1NdguUbr.jpg', '2024-07-09 14:40:20', '2024-07-09 15:05:47', 'Gold Sponsors'),
(4, 'iberis', 'good', '58178242', '3', 2000, 'LOGO', '2024-07-10', 'sponsor_images/Zna48HwVf88hTfHtR2ncmGyg6pc94WUZoA81wGhk.jpg', '2024-07-09 14:42:30', '2024-07-09 16:26:52', 'Official Transporter');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `civility` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `attendance_mode` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `activity_description` text DEFAULT NULL,
  `email_subscription` tinyint(1) DEFAULT NULL,
  `accepted_terms` tinyint(1) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `profile_picture`, `civility`, `first_name`, `last_name`, `gender`, `phone`, `country`, `city`, `attendance_mode`, `username`, `password`, `occupation`, `company_name`, `sector`, `activity_description`, `email_subscription`, `accepted_terms`, `role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `facebook`, `twitter`, `instagram`, `linkedin`) VALUES
(25, 'beau.mraz@example.net', NULL, 'Mr', 'Mercedes', 'Dach', 'female', '571.369.9980', 'Saint Pierre and Miquelon', 'Rueckerside', 'offline', 'admin', '$2y$10$sReSC6.A0CAi/CUGUyjr/OjpbQn01e4QrGzWH.1d28hz0SeBcjxoS', 'Film Laboratory Technician', 'Cartwright-Graham', 'consequatur', 'Earum id quae quidem vero amet ut. Nam deleniti ullam necessitatibus dolore. Voluptates amet omnis libero asperiores ut unde. A est minima qui cupiditate qui.', 0, 0, 'admin', '2024-07-08 17:27:18', 's8AzOlBhmrzEh5tfUSKasJCFEAGfMz0Sdn2JTNXDD3eEMGcMDSlvLOcVkY5x', '2024-07-08 17:27:18', '2024-07-08 17:27:18', NULL, NULL, NULL, NULL),
(26, 'user1@gmail.com', NULL, 'Mr', 'User1', 'Test', 'male', '12345671', 'Country1', 'City1', 'online', 'user1', '$2y$10$6sZiyqCvUTw71.A2uj956.cmtjaZQS5LSiVdNuNtEgbK4rjVYaqLK', 'Occupation1', 'Company1', 'Sector1', 'Activity description for User1', 1, 1, 'user', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(27, 'user2@gmail.com', NULL, 'Mr', 'User2', 'Test', 'male', '12345672', 'Country2', 'City2', 'online', 'user2', '$2y$10$xMjfPqPOlUT/CAi9XdwHpOmy2OzvAgP7Pw0WJsBD5MnV6sm4HIhBC', 'Occupation2', 'Company2', 'Sector2', 'Activity description for User2', 1, 1, 'user', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(28, 'user3@gmail.com', NULL, 'Mr', 'User3', 'Test', 'male', '12345673', 'Country3', 'City3', 'online', 'user3', '$2y$10$vpozTxwj0GyLjkkkpCPNI.Y1u0BlFfFVBwyUwOrT/O29.q9v77j8S', 'Occupation3', 'Company3', 'Sector3', 'Activity description for User3', 1, 1, 'user', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(29, 'user4@gmail.com', NULL, 'Mr', 'User4', 'Test', 'male', '12345674', 'Country4', 'City4', 'online', 'user4', '$2y$10$acloGYmsxiwoS4WkVhGozurZTwCmbKYdghUxn/DzGvrAEFCP8jXJS', 'Occupation4', 'Company4', 'Sector4', 'Activity description for User4', 1, 1, 'user', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(30, 'user5@gmail.com', NULL, 'Mr', 'User5', 'Test', 'male', '12345675', 'Country5', 'City5', 'online', 'user5', '$2y$10$InAY6G6Adt1AWWm2Le.oYO5KWU1vy4kv.ZkSofp28UUadEb4zSrIu', 'Occupation5', 'Company5', 'Sector5', 'Activity description for User5', 1, 1, 'user', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(31, 'user6@gmail.com', NULL, 'Mr', 'User6', 'Test', 'male', '12345676', 'Country6', 'City6', 'online', 'user6', '$2y$10$eDt8GL25D5d8zEkdEP17eO/iP5LLc6qvWhg/iOXXc5773CHDLYoIa', 'Occupation6', 'Company6', 'Sector6', 'Activity description for User6', 1, 1, 'user', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(33, 'admin1@gmail.com', NULL, 'Mr', 'Admin1', 'Test', 'male', '12345671', 'Country1', 'City1', 'online', 'admin1', '$2y$10$jzaR84jAonq5/FSiGhXMKeu5oxIv/xd4DclOdolnfUo..f/hq.Tie', 'Occupation1', 'Company1', 'Sector1', 'Activity description for Admin1', 1, 1, 'admin', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(34, 'admin2@gmail.com', NULL, 'Mr', 'Admin2', 'Test', 'male', '12345672', 'Country2', 'City2', 'online', 'admin2', '$2y$10$N0EgwJ5ZE/RvPZdzS4ycXeSkFPecEaJrR3.oRdArdbU1bxS7fn9rq', 'Occupation2', 'Company2', 'Sector2', 'Activity description for Admin2', 1, 1, 'admin', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(35, 'admin3@gmail.com', NULL, 'Mr', 'Admin3', 'Test', 'male', '12345673', 'Country3', 'City3', 'online', 'admin3', '$2y$10$C.kB46nST39M5iO9SxVCTeieRcv7Q6LHGGCfOgWZACn8TKz0A2BWS', 'Occupation3', 'Company3', 'Sector3', 'Activity description for Admin3', 1, 1, 'admin', NULL, NULL, '2024-07-11 17:29:13', '2024-07-11 17:29:13', NULL, NULL, NULL, NULL),
(36, 'admin@gmail.com', NULL, 'Mr', 'Saber', 'master', 'male', '58178242', NULL, NULL, NULL, 'masterAdmin', '$2y$10$l08khhXToZhodgeBczsCFOW7dKMKSf.UCwNpus7T4TXQE/9lLwKsm', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, '2024-07-11 17:38:37', '2024-07-11 17:38:37', NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `event_user`
--
ALTER TABLE `event_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_user_user_id_foreign` (`user_id`),
  ADD KEY `event_user_event_id_foreign` (`event_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `reclamations`
--
ALTER TABLE `reclamations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `event_user`
--
ALTER TABLE `event_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reclamations`
--
ALTER TABLE `reclamations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `event_user`
--
ALTER TABLE `event_user`
  ADD CONSTRAINT `event_user_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

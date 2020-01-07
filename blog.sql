-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  mar. 07 jan. 2020 à 19:53
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `category_id`) VALUES
(14, 'Nulla sed dolorem reprehenderit delectus non est.', '<p>Assumenda tenetur sit saepe error odio. Dolores aut blanditiis non molestias consectetur necessitatibus. Sit dolores consequuntur cumque adipisci. Est delectus sed assumenda aspernatur quam.</p><p>Modi earum distinctio et assumenda nemo. Itaque magni corrupti commodi odit consequatur et. Quos vitae nihil temporibus quo suscipit vero. Et ea nam odit repellat.</p><p>Vero illum voluptate illo laborum. Animi neque possimus itaque et expedita labore. Pariatur vel voluptate beatae ea autem mollitia aut voluptatem.</p><p>Recusandae sed aliquam esse dolorem sit aut. Consequatur atque tempora aperiam provident ipsa quod beatae. Adipisci ipsa odio eum consequatur provident quisquam. Tempore perspiciatis dolorum sint provident.</p><p>Incidunt velit optio tempore quia. Eum qui qui et mollitia ullam quos. Ad et tenetur minus dicta similique animi ut.</p>', 'https://lorempixel.com/640/480', '2019-07-17 23:41:55', 1),
(15, 'Dolore in voluptatum veritatis tenetur recusandae.', '<p>Rerum et aspernatur omnis. Harum sed fugiat labore et perferendis neque sed. Non asperiores porro consequatur vel.</p><p>Laboriosam officiis repudiandae reiciendis optio assumenda non. Adipisci et laborum odio rem mollitia voluptates ea id.</p><p>Pariatur blanditiis sed distinctio autem repellat aut. Ea ut est voluptatem omnis aut deleniti. Aperiam molestiae exercitationem pariatur nostrum est est soluta. Vitae sed cupiditate eligendi est inventore voluptate et dolore.</p><p>Reiciendis maxime laudantium quis. Mollitia est ab deleniti libero aliquam. Enim minus corporis explicabo et. Rem minus qui nihil officia nisi reiciendis.</p><p>Officia odio vero aut consequatur et et aut. Nobis et deleniti ullam nihil distinctio maiores. Et cumque sit et voluptates deserunt voluptas.</p>', 'https://lorempixel.com/640/480/?70082', '2019-10-18 17:24:53', 1),
(16, 'Odio fugiat quo officia qui ducimus magnam.', '<p>Rerum veritatis voluptatum temporibus velit dignissimos. Quis itaque rerum consequatur deleniti ut laborum. Voluptas ut ea soluta dolorum unde. Vitae vel fugit voluptatem ad.</p><p>Deserunt quis fuga et aut et. Sit tempora excepturi aliquid tempora rerum est est. Dolorem qui et eum. Dolores culpa culpa dolorem nihil et.</p><p>Vero quia ad nisi dicta. Natus quis eos ipsam qui inventore voluptatem autem ea. Pariatur voluptatem esse modi inventore quibusdam. Corrupti consequatur delectus quidem qui architecto qui recusandae et.</p><p>Quasi est aliquam dignissimos aut inventore et et. Eum error facilis explicabo laudantium ratione in consequatur. Nesciunt vel itaque quasi harum.</p><p>Non architecto eum qui. Quidem nam tempore impedit velit neque deleniti omnis. Tempora est eveniet voluptatem. Rerum voluptas voluptatibus et voluptatem ab ullam.</p>', 'https://lorempixel.com/640/480/?43227', '2019-11-14 09:07:23', 1),
(17, 'Quod sapiente natus quas magnam in dolores est.', '<p>Delectus enim nihil voluptatibus tempore dolorem unde quo veritatis. Ipsa quia voluptate sit doloribus nihil. Voluptates incidunt et recusandae mollitia.</p><p>Ullam itaque ratione aliquam eius maiores. Veniam magnam impedit nam ab. Sit alias quia et blanditiis rerum autem. Quod perspiciatis nihil laudantium ut.</p><p>Aperiam sed eveniet voluptatibus mollitia suscipit at. Illo alias beatae perspiciatis quia molestiae excepturi saepe. Soluta facilis provident amet a sunt aspernatur.</p><p>Ut illum ea voluptas et voluptatem nesciunt similique. Minus saepe ipsum omnis ex debitis.</p><p>Et nobis tempore velit hic. Illum dolorem facere ipsum velit velit cupiditate. Cum placeat ab tempora molestiae. Impedit voluptatem rerum earum nobis.</p>', 'https://lorempixel.com/640/480/?21618', '2019-07-18 10:07:06', 1),
(18, 'Quis quo illo harum at fugit quod voluptatum.', '<p>Dolorem qui magnam et. Ut sint et enim aliquam quis dolores. Accusamus deserunt necessitatibus culpa repellendus laboriosam. Excepturi minima quia libero quis cumque molestiae. Molestias nihil nemo laudantium ipsam voluptatem et et neque.</p><p>Eaque voluptatem eos nihil temporibus. Necessitatibus cupiditate harum cum esse. Quisquam reprehenderit optio nesciunt ut ullam explicabo fugiat. Dicta tenetur cum ab natus atque.</p><p>Porro earum neque iure quia odit. Enim amet dolores accusantium totam esse rerum ut. Neque ut soluta rerum et et reiciendis voluptatem.</p><p>Corporis sit enim quos ducimus. Rerum ut est velit culpa omnis qui magni unde. Fuga sequi praesentium corrupti aut et esse. Consequuntur perferendis ut ullam voluptatibus dolores sed et.</p><p>Rerum illo sunt recusandae eaque. Iure nostrum maxime ea et sint. Velit dolores aspernatur aliquam. Qui nemo sit similique quos id qui consequatur.</p>', 'https://lorempixel.com/640/480/?45566', '2019-09-13 20:13:09', 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Politique', 'Totam pariatur ipsam ab quos qui eaque nihil.'),
(2, 'Sport', 'Est distinctio error corrupti voluptas.'),
(3, 'Economie', 'Autem excepturi et rem sed.');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(1, 18, 'Yves Gerard-Raynaud', '<p>Maxime autem dolorem sed odit aut. Eos est voluptate eos architecto dolor. Nihil rerum modi corrupti.</p><p>Magni provident sint reprehenderit labore. Corporis eveniet distinctio numquam voluptas et est cumque. Tenetur unde mollitia debitis ut.</p><p>Qui blanditiis adipisci voluptas adipisci. Eaque quia fugit quo qui ut quod. Ratione culpa eos sed expedita placeat provident dolorum.</p><p>Nostrum distinctio eligendi voluptas perspiciatis. Ratione reiciendis reprehenderit qui quo deleniti ut et facere. Asperiores autem eligendi qui possimus neque. Numquam suscipit tempore quaerat voluptatem voluptas necessitatibus laboriosam.</p><p>Fugiat velit voluptas repellendus est quis. Ex ut molestiae atque reprehenderit itaque. Nihil earum illo dolores sit ipsum provident aliquid. Est ut ab aut voluptas.</p>', '2019-07-24 04:52:52'),
(2, 18, 'Sébastien Martel-Lopes', '<p>Sit rerum nihil cumque unde incidunt laudantium. Consectetur exercitationem natus sit repellat atque doloremque sunt id. Repellat pariatur voluptates vitae adipisci.</p><p>Debitis excepturi asperiores dolor sint. Nihil dignissimos veniam temporibus alias deleniti saepe. Animi illo perferendis est aspernatur similique.</p><p>Natus eum eos et sapiente tempore fuga vel accusamus. Esse eum illum aliquam sed voluptatum tempore amet molestiae. Praesentium et rerum dolores tempora quos et et.</p><p>Earum quidem earum aut consectetur voluptatem. Omnis nihil rerum velit odit eos. Perspiciatis qui accusantium qui pariatur dolorum inventore amet. Dolorem minima eligendi tenetur dignissimos.</p><p>Voluptatem blanditiis distinctio quam sed repellendus. Iste quaerat rem veniam dolore quos iusto. Ab ut excepturi culpa nam quo ut nemo.</p>', '2019-12-27 00:09:36'),
(3, 15, 'Zoé Simon', '<p>Voluptatum odio dolores sed sit repudiandae. Sequi ut et dolorem nemo ut rem. Et vero ea corrupti voluptatem. Labore pariatur rerum odio iste voluptas.</p><p>Est velit iste repellat non qui. In qui accusamus explicabo aliquam quis magnam laborum. Et occaecati veniam commodi rerum. Reprehenderit totam quia nemo quisquam iusto.</p><p>Necessitatibus est nihil quam dolorem perspiciatis. Dolores est laborum et vitae consequuntur. Et soluta perspiciatis enim necessitatibus nisi dicta.</p><p>Earum aperiam voluptas assumenda. Maiores error eos sequi perferendis cum. Laborum autem ea voluptates nam officia quasi.</p><p>Qui fugiat voluptas cumque. A quae ut qui minus rerum nihil beatae. Distinctio odit sint ea impedit mollitia. Aliquid voluptatibus magnam atque accusamus at saepe quia.</p>', '2019-10-06 13:50:07'),
(4, 15, 'Alfred Traore', '<p>Amet maxime ut voluptatem nihil eveniet. Nihil quia ipsam harum quod. Ullam dolor et cupiditate. Sed consequuntur quos vitae ad.</p><p>Sapiente dolorem et corporis veritatis molestias maiores. Ut corrupti qui sapiente ipsa voluptatibus quasi a. Quaerat ut vel atque laudantium. Maiores maiores ratione incidunt dolorem.</p><p>Harum quam officia aut illo magnam quae. Voluptates non rerum aperiam placeat aut. Animi molestiae inventore quidem dolores. Dolores recusandae est asperiores nisi alias blanditiis.</p><p>Eius cumque explicabo est et officia. Dignissimos est id qui. Quo dolor est consequatur consequatur qui voluptas. Eum ducimus cumque reprehenderit maxime voluptates vel rerum. Quis tempore fuga laborum dolores accusantium quia nihil.</p><p>Enim consectetur consequatur sint velit. Voluptatem non excepturi deserunt cum. Quia cumque deleniti aut natus.</p>', '2019-11-14 04:05:09'),
(5, 16, 'Martine Bouvier', '<p>Qui sed et autem quo quis praesentium. Et veritatis est consequatur neque quia qui.</p><p>Quidem autem temporibus quo rerum nostrum impedit. Qui quia facere porro soluta dignissimos et ut. Adipisci officiis ad quia et nam sunt optio ducimus. Cum iusto qui et illo.</p><p>Praesentium illo voluptatem qui laborum odit et voluptatem. Modi quo sapiente est hic dignissimos in sit vel. Cumque eaque voluptatibus maxime commodi. Natus aspernatur quae quo quam aut.</p><p>Nobis velit commodi illum aut fugiat totam voluptates. Ab excepturi magni explicabo dolorem ex consequatur qui. Consequuntur necessitatibus eum ut. Facere in ut quis nemo dolorem omnis. Dolor quia vel cupiditate omnis repudiandae ut voluptatum.</p><p>Et quo dolor quia reiciendis. Quibusdam ut incidunt magnam ut dolor. Sed quidem consequuntur suscipit fuga. Sed id ut modi nobis.</p>', '2019-11-07 20:59:41'),
(7, 14, 'Yves', 'Maxime autem dolorem sed odit aut. Eos est voluptate eos architecto dolor. Nihil rerum modi corrupti.</p><p>Magni provident sint reprehenderit labore. Corporis eveniet distinctio numquam voluptas et est cumque. Tenetur unde mollitia debitis ut.', '2020-01-07 19:41:11'),
(8, 14, 'Maxime', 'Qui blanditiis adipisci voluptas adipisci. Eaque quia fugit quo qui ut quod. Ratione culpa eos sed expedita placeat provident dolorum.', '2020-01-07 19:41:49');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191226185127', '2019-12-26 18:54:14'),
('20200101190123', '2020-01-01 19:08:54'),
('20200101191726', '2020-01-01 19:18:27'),
('20200103183011', '2020-01-03 18:32:20');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`) VALUES
(1, 'salim@salim.fr', 'salim', '$2y$13$SoGLVQSqC.8MM7oD3ULSbO1sWKG9Ej7zXzETDkyt/lnLptDvxlaBK');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

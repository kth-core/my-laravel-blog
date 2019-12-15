-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2019 at 02:25 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'General', '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(2, 'Technology', '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(3, 'News', '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(4, 'Internet', '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(5, 'Mobile', '2019-11-19 09:28:34', '2019-11-19 09:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptas minima sunt molestiae. Accusantium consequuntur beatae sed vitae modi deserunt cupiditate. Et est atque ut esse. Accusamus sed et quisquam inventore dicta.', 6, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(2, 'Doloremque aut deserunt animi dolores. Aliquid voluptatem cum dolor voluptas accusantium. Est adipisci tenetur officia et ratione. Repellendus ipsam maiores voluptatem eveniet.', 17, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(3, 'Sed autem deleniti quam laboriosam maxime neque. Inventore nulla id vel. Repellendus qui voluptates facilis harum ex.', 19, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(4, 'Repellat velit vel at voluptatem sint. Et et at temporibus ut. Dolor laborum quibusdam ut consectetur quos minus.', 1, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(5, 'Dolorem nam vitae maxime. Minus sapiente est ut. Dolorem voluptatum debitis ullam. Voluptatum fugiat suscipit porro doloribus numquam iure quas ut.', 5, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(6, 'Voluptate autem eum qui molestiae fugiat debitis. Quidem velit nihil occaecati rem et veniam nemo accusamus. Tenetur aperiam voluptate harum at accusamus tenetur aliquam. Veniam totam voluptatum quibusdam laudantium minima debitis vel similique.', 3, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(7, 'Laboriosam odio ratione ad illo vel molestias et. Voluptas consequatur quibusdam et deserunt nihil esse. Et vel quo aliquam placeat rerum ab.', 17, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(8, 'Maxime dolorum fugiat non maxime tenetur. Aperiam autem sunt voluptatem rem in. Error saepe quod consectetur facilis.', 7, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(9, 'Enim iste ut doloremque debitis consectetur. Aut natus eum repudiandae. Updated Comment.', 20, '2019-11-19 09:28:34', '2019-11-19 09:30:03'),
(10, 'Expedita maxime iure aspernatur. Et eveniet reiciendis similique ipsum quaerat. Temporibus quia itaque occaecati quisquam. Dolorum quod architecto omnis soluta est.', 18, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(11, 'Eveniet qui sequi eos maiores eum occaecati. Exercitationem soluta quos ex ducimus reiciendis et sed. Vero repellendus libero temporibus qui.', 11, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(12, 'Iste quaerat voluptatem eius. Laboriosam nihil ipsam vero laboriosam. Harum ducimus qui delectus et.', 15, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(13, 'Exercitationem repudiandae voluptatem laboriosam qui vel temporibus voluptas. Non omnis quam totam sit ipsam. Quis voluptatum incidunt est adipisci voluptas non. Nam omnis rerum reiciendis beatae sit.', 6, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(14, 'Quo rerum numquam natus. Qui ab architecto est vitae iste dolor nemo ex. Eum ea nam sit quasi nulla. Velit ut et qui in suscipit omnis quas.', 9, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(15, 'Est et necessitatibus dolores ducimus perspiciatis. Aut quidem molestiae numquam earum pariatur repellat officia culpa. Rerum cum consequatur numquam voluptatem pariatur. Perferendis itaque explicabo sed esse aliquid et.', 14, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(16, 'Culpa et ipsam perferendis praesentium. Ea omnis quam distinctio quia ut exercitationem. Expedita in optio voluptatem numquam est temporibus.', 16, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(17, 'Laboriosam perferendis aperiam aliquid. Perferendis commodi nostrum magnam itaque impedit et. Aut esse repellendus laudantium assumenda error.', 7, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(18, 'Blanditiis eum molestiae est deserunt id assumenda. Ad cumque eum nesciunt amet. Consequuntur qui quis dolor et et enim.', 14, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(19, 'Est ut odio sed sed ut et. Porro quidem et incidunt id non nihil. Perferendis earum nobis accusantium nostrum aut aperiam.', 19, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(20, 'Eum mollitia quam facilis tenetur cupiditate ut modi. Vero dolor placeat tenetur qui facere consequatur nesciunt ipsam. Et laborum ea voluptatem.', 17, '2019-11-19 09:28:35', '2019-11-19 09:28:35'),
(21, 'Believe in Yourself. One day, You will become a good rockstar software developer. Its exectly.', 20, '2019-11-23 10:28:06', '2019-11-23 10:29:30'),
(22, 'First comment', 21, '2019-12-15 06:54:12', '2019-12-15 06:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_26_024126_create_posts_table', 1),
(4, '2019_11_02_030350_create_categories_table', 1),
(5, '2019_11_02_030441_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Aut nesciunt nihil unde ut quo.', 'Vitae est tempore iure rerum est ullam. Quia harum nisi aut facilis. Maxime nisi doloremque iure. Nesciunt quia ducimus quasi nihil aut sapiente culpa.', 5, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(2, 'Odit expedita ut vel aut delectus.', 'Qui voluptas animi odio. Illum nobis voluptatem odit tempora voluptatem repellendus id. Ut consequatur vero vel.', 4, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(3, 'Ut voluptatem quidem modi ad velit eligendi.', 'Minus ex doloremque in cupiditate nihil eum error. Sunt voluptatem non doloremque voluptatibus non veniam. Itaque voluptate et beatae iusto vel assumenda architecto. Accusantium qui amet vel aut odio molestias vel.', 5, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(4, 'Illum nemo et id tempora mollitia sint ad.', 'Saepe reiciendis esse quis voluptas odio in modi. Numquam magni rem et.', 4, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(5, 'Assumenda vitae voluptatem aut eveniet illum itaque.', 'Omnis doloribus eveniet dolorem dolores autem consequatur laboriosam. Ad fuga delectus quis facilis doloremque saepe velit qui. Autem consequatur magni voluptatum expedita possimus dolor.', 5, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(6, 'Est magni sed quam hic autem voluptatem.', 'Ut amet reprehenderit totam aut qui. Non aliquam est minus aut. Cumque consequatur optio vel doloremque quia. Accusamus eius atque consectetur quos error dolore.', 1, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(7, 'Non quibusdam odio quidem consequatur laborum.', 'In occaecati eligendi vel autem non corrupti sed. Repellat qui quibusdam ex quasi. Est est quo vel et ut. Accusantium accusamus dicta earum eum aliquid corporis facilis.', 4, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(8, 'Est mollitia voluptate quis aut natus doloribus error.', 'Animi quisquam id officiis numquam quod laudantium. Quo soluta et ducimus eveniet dolores. Et iste quisquam illum suscipit consequatur consectetur ut. Et aperiam qui qui eius.', 2, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(9, 'Atque neque quis voluptatem animi.', 'Non culpa dolor aut et modi enim doloremque. Quae autem velit id omnis mollitia officiis. Vel consequatur reprehenderit est nam officiis voluptates. Molestiae et at sunt est ea quam odit.', 3, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(10, 'Et soluta reprehenderit voluptatum saepe.', 'Dolor quis quis sint vitae eos commodi qui. Et minus in aut eaque nesciunt natus. Sed deleniti vel aut consequuntur. Incidunt quos dolores qui similique.', 5, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(11, 'Consequatur fugiat culpa qui error nostrum iste.', 'Harum similique quasi commodi dolore voluptas. Laudantium doloremque eaque fuga quos non quisquam. Deserunt velit eos incidunt voluptatum consequuntur reprehenderit quisquam.', 4, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(12, 'Provident aut sapiente quod dolorem fugit.', 'Reiciendis blanditiis delectus dolorem numquam odio. Incidunt corrupti voluptatem eveniet tempora enim alias omnis. Eum vero optio nobis consequatur rem necessitatibus vel.', 4, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(13, 'Consequatur error quo et.', 'Aut modi explicabo ut necessitatibus optio quam tempora. Eum et provident facilis illum quia temporibus. Et ratione quidem incidunt possimus. Earum ratione illum sapiente corrupti delectus voluptatem et.', 1, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(14, 'Quia libero aliquid unde animi qui nesciunt suscipit.', 'Nihil ullam autem minima eaque dolorum. Iste autem ex enim nobis quod. Incidunt maxime repellat sint. Quo ipsam quas vel dolore recusandae assumenda doloremque veniam.', 1, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(15, 'Id unde dolorem officia animi et qui et.', 'Ad numquam consequatur sed earum esse voluptate. Neque enim delectus blanditiis.', 4, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(16, 'Nostrum est illo laudantium.', 'Est eius porro et quasi cupiditate quo. Architecto fugiat quisquam quo expedita omnis tenetur cumque. Est repellendus ut et.', 4, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(17, 'Vero rerum quos dolore eos in.', 'Laboriosam illum reprehenderit enim quos corrupti alias alias. Quis quam impedit aut repellat et sit. Maxime aut in ut consequatur expedita ex. Corporis velit iusto dolorem animi voluptatum qui laudantium.', 3, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(18, 'Labore beatae eos sequi labore et.', 'Blanditiis dicta perferendis est quidem dolor sit neque doloribus. Asperiores fugiat occaecati et. Quis atque adipisci ut cupiditate eos voluptate.', 5, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(19, 'Impedit vero voluptates aut.', 'Repudiandae temporibus veritatis illum recusandae sed quis. Voluptates accusamus quo aut dignissimos. Voluptatum est adipisci sint numquam nobis inventore. Tempora eos nemo ut quibusdam qui.', 2, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(20, 'Adipisci velit commodi laudantium dignissimos illum.', 'Suscipit omnis nobis corrupti dicta voluptatibus sint eos ipsam. Non natus maxime aut voluptas saepe. Rerum beatae odit et et repellat quidem dolore.', 1, '2019-11-19 09:28:34', '2019-11-19 09:28:34'),
(21, 'Professional Web Developer', 'Host in Fairway Technology', 2, '2019-12-15 06:53:59', '2019-12-15 06:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bob', 'bob@gmail.com', '$2y$10$AHMB/fYItXm3FsOyfEhjvep4562pc7x3DRNt4QPHUP/ns9U78JSL2', NULL, '2019-11-28 04:56:35', '2019-11-28 04:56:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

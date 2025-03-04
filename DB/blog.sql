-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2025 a las 15:21:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('17ba0791499db908433b80f37c5fbc89b870084b', 'i:2;', 1739729779),
('17ba0791499db908433b80f37c5fbc89b870084b:timer', 'i:1739729779;', 1739729779);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `name`, `content`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Lowell Abshire DVM', 'Et dolorum praesentium quis.', 2, '2025-01-26 19:53:46', '2025-01-26 19:53:46'),
(2, 'Jannie Strosin', 'Enim odit consequatur est eius qui.', 2, '2025-01-26 19:53:46', '2025-01-26 19:53:46'),
(3, 'Raleigh Parisian', 'Quia sint nihil perspiciatis cupiditate aut sit esse iure.', 2, '2025-01-26 19:53:47', '2025-01-26 19:53:47'),
(4, 'Twila O\'Keefe', 'Ea autem veritatis hic aut dolor ut dignissimos.', 2, '2025-01-26 19:53:47', '2025-01-26 19:53:47'),
(5, 'Dr. Buster Bailey', 'Velit amet harum nobis neque.', 2, '2025-01-26 19:53:47', '2025-01-26 19:53:47'),
(6, 'Alisha Wintheiser', 'Doloribus dolores veniam quae labore et placeat in similique.', 4, '2025-01-26 19:54:02', '2025-01-26 19:54:02'),
(7, 'Westley Waters', 'Adipisci vitae harum ea exercitationem voluptas sapiente.', 4, '2025-01-26 19:54:02', '2025-01-26 19:54:02'),
(8, 'Jena Conn', 'Praesentium voluptatem aliquam expedita velit.', 4, '2025-01-26 19:54:02', '2025-01-26 19:54:02'),
(9, 'Katheryn McKenzie', 'Accusamus et aspernatur eos aspernatur.', 4, '2025-01-26 19:54:02', '2025-01-26 19:54:02'),
(10, 'Jerod Watsica', 'Autem tempora possimus voluptates ullam.', 4, '2025-01-26 19:54:02', '2025-01-26 19:54:02'),
(11, 'Braulio Schultz', 'Incidunt quis pariatur illo sequi ratione voluptatem consequuntur earum.', 4, '2025-01-26 19:54:02', '2025-01-26 19:54:02'),
(12, 'Rod Kessler', 'Blanditiis minus nam modi autem reprehenderit asperiores.', 4, '2025-01-26 19:54:02', '2025-01-26 19:54:02'),
(13, 'Rick Kuhn', 'Exercitationem adipisci repellat illum aut culpa consequatur repellendus.', 1, '2025-01-26 19:54:15', '2025-01-26 19:54:15'),
(14, 'Cleta Moore', 'Excepturi sint esse minus nihil.', 1, '2025-01-26 19:54:15', '2025-01-26 19:54:15'),
(15, 'Stephanie Barrows', 'Repellendus quia numquam veritatis sunt sit.', 1, '2025-01-26 19:54:15', '2025-01-26 19:54:15'),
(16, 'Paris Jacobs', 'Sed et quod commodi molestias aperiam reiciendis.', 1, '2025-01-26 19:54:15', '2025-01-26 19:54:15'),
(17, 'Martin Tromp', 'Quam beatae et sed aut impedit.', 1, '2025-01-26 19:54:15', '2025-01-26 19:54:15'),
(18, 'Therese Zemlak II', 'Pariatur harum et autem eos.', 1, '2025-01-26 19:54:15', '2025-01-26 19:54:15'),
(19, 'Elnora Berge', 'Unde repellendus ut nihil quibusdam quia nesciunt molestias.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(20, 'Dr. Jules Oberbrunner MD', 'Sit ut esse quis.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(21, 'Zachariah Luettgen', 'Consequatur iure quae atque sunt possimus eum quia consequatur.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(22, 'Dr. Megane Daniel V', 'Et explicabo inventore et laboriosam odit qui.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(23, 'Miss Delilah Gulgowski III', 'Ut illum porro distinctio illo suscipit doloribus.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(24, 'Kareem Konopelski', 'Qui dolorem itaque sunt.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(25, 'Dr. Nya Metz III', 'Praesentium minus eos ut labore fugiat.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(26, 'Mrs. Iliana Kovacek PhD', 'Excepturi quam qui id ea sed est consequatur.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(27, 'Colt Klocko MD', 'Magni quia quo tempore corporis illum ullam maiores.', 1, '2025-01-26 19:54:16', '2025-01-26 19:54:16'),
(28, 'Kamron O\'Reilly', 'Dignissimos quia rem ad vel.', 7, '2025-01-26 19:54:31', '2025-01-26 19:54:31'),
(29, 'Mallory Wiza', 'Laboriosam dolores eius necessitatibus enim blanditiis.', 7, '2025-01-26 19:54:31', '2025-01-26 19:54:31'),
(30, 'Kasandra Littel', 'Aut omnis praesentium nam maxime.', 7, '2025-01-26 19:54:31', '2025-01-26 19:54:31'),
(31, 'Estrella Bayer', 'Similique quis aperiam voluptatum vel.', 7, '2025-01-26 19:54:31', '2025-01-26 19:54:31'),
(32, 'Winston Rosenbaum', 'Este post me parece muy genial :)', 13, '2025-02-02 01:04:57', '2025-02-02 01:04:57'),
(33, 'Dr. Yolanda Weissnat', 'jajaja que risa me da esto', 13, '2025-02-02 15:01:36', '2025-02-02 15:01:36'),
(34, 'Oriana', 'que post tan bonito la verdad que si', 17, '2025-02-16 18:16:54', '2025-02-16 18:16:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_17_223538_create_posts_table', 1),
(5, '2024_12_29_201821_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `excerpt`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Eos aut eligendi adipisci minima porro explicabo aut.', 'Atque explicabo enim doloribus aut alias. Et aliquam nisi impedit distinctio neque. Veritatis labore maiores quae officiis vel fuga natus. Vero totam voluptas quaerat rerum eveniet id id aperiam.', 'Corporis praesentium eius sint cumque est qui molestias. Placeat temporibus reiciendis iusto magnam dolorem. Aut rem animi culpa. Eos ut maiores ut.\n\nEos tempora alias nesciunt sunt possimus. Molestiae ea temporibus repellendus est.\n\nNulla alias amet repellendus necessitatibus provident officia sed. Qui est sed velit. Et vero molestiae tempora et. Et deserunt qui quaerat animi occaecati sed dolorem. Ducimus dolores suscipit eum.', 1, '2025-01-26 19:48:11', '2025-01-26 19:48:11'),
(2, 'Consequatur sint sapiente nulla omnis blanditiis reprehenderit maiores.', 'Nobis eveniet nam modi aut aspernatur occaecati. Porro voluptatem quia tempora et facere.', 'Ipsa possimus est officia temporibus sed. Est veritatis itaque ut fugit commodi. Beatae illum unde itaque numquam aut est laudantium.\n\nEius dignissimos ad facere id. Et in nostrum voluptas est porro necessitatibus. Voluptatem quaerat natus et ullam magni at temporibus.\n\nNumquam alias tenetur sequi. Nostrum repellendus et nisi ea aut maxime iusto. Veniam autem ab atque. Provident commodi aliquid est.', 1, '2025-01-26 19:48:11', '2025-01-26 19:48:11'),
(3, 'Sit error voluptates quis at dolore dolores.', 'Dolores voluptatem corrupti sed mollitia sed. Qui magni autem quo quis nihil. Ducimus odit repudiandae doloremque. Architecto iure accusantium incidunt perspiciatis fuga velit.', 'Dolorem quia quis doloribus quis quis. Debitis rerum et sunt. Fuga rerum sed nam asperiores culpa qui. Iste libero voluptatibus quo tempore.\n\nRerum in possimus impedit eligendi sit. Eaque illo ut cumque sed expedita. Deserunt sequi quo iste numquam. Porro doloremque quaerat soluta est qui iste quam.\n\nRepellat ut maiores similique nulla sapiente corrupti aut. Voluptas numquam ipsa ad quis dolores corrupti eos. Asperiores ducimus pariatur aut ratione omnis reprehenderit fuga.', 1, '2025-01-26 19:48:11', '2025-01-26 19:48:11'),
(4, 'Quidem ipsa deleniti reiciendis.', 'Sit omnis et et id. Alias et dignissimos quia quia ad. Doloribus quaerat accusantium dolore. Sequi aliquid sint expedita.', 'Eum est molestias et in eligendi. Voluptas ut consequuntur et. Inventore dolor fuga consequatur explicabo non laboriosam sed.\n\nAut ab eum vero nostrum deserunt et sunt. Nostrum ex optio optio et qui ducimus laudantium. Quasi ipsam perferendis vel omnis. Ullam ab beatae dolorem.\n\nQuos vel ea ab quia iste. Recusandae necessitatibus explicabo labore aut dolorum voluptas voluptates.', 2, '2025-01-26 19:49:27', '2025-01-26 19:49:27'),
(5, 'Molestiae atque dolor quo esse minima.', 'Voluptas sed maxime non eveniet optio itaque inventore quia. Unde eveniet non temporibus adipisci ab. Voluptas commodi nihil quia et atque aut consequatur. Sint excepturi ullam quae fuga.', 'Earum maxime maiores eligendi expedita laboriosam dolores. Eos omnis accusantium maiores officia doloribus esse rem. Consequatur ut tempore id commodi.\n\nAut est et sit saepe et dolorem. Ut deserunt rem asperiores voluptatem quo qui. A aliquid aut repellendus. Eos ut aperiam possimus aspernatur qui.\n\nVel iure quisquam saepe et sed. Quisquam error ut possimus est nam eius ipsam. Aperiam molestiae debitis et quis perferendis atque architecto. Et officiis expedita ducimus cumque cum sed. Quam quisquam sed asperiores sint.', 2, '2025-01-26 19:49:28', '2025-01-26 19:49:28'),
(6, 'Tenetur vel id hic architecto qui delectus ratione.', 'Qui et facere et et ut est et. Dolores quia non molestiae molestias mollitia quisquam. Voluptas corporis ut et. Non sapiente aut dolore culpa et.', 'Qui placeat itaque nemo non earum ut sed est. Officiis placeat libero distinctio consequatur sequi. Eum sit ad non eos. Commodi et eos non nihil.\n\nFacilis et ut molestiae. Ea numquam voluptas et. Molestias et praesentium sunt et pariatur nihil.\n\nDolore optio voluptas delectus exercitationem temporibus. Atque eaque nihil eos provident ipsam. Aut assumenda et nesciunt nobis officiis soluta adipisci facere.', 2, '2025-01-26 19:49:28', '2025-01-26 19:49:28'),
(7, 'Quis mollitia iure tempore sunt.', 'Veniam molestias qui fugiat quos officiis. Sint qui nihil maxime blanditiis molestiae ut. Rerum praesentium repellat et asperiores velit voluptas vel numquam.', 'Sint dolor occaecati velit. Minus fugit dolore quod rerum necessitatibus excepturi. Et consequuntur neque nesciunt reiciendis accusamus ut.\n\nExplicabo et dolor perferendis ut. Corporis deserunt atque tenetur qui facilis et omnis.\n\nTempora quidem veniam amet corrupti iure. Qui iste autem pariatur aut in. Sequi at impedit perspiciatis et impedit molestiae. Et quo quibusdam nesciunt laboriosam.', 3, '2025-01-26 19:51:15', '2025-01-26 19:51:15'),
(8, 'Officiis dolores rem illum tempora sint.', 'Autem voluptas sequi nisi aliquam. Nobis nostrum esse provident quasi repellat tenetur. Et libero architecto sed illum sunt quia fugit consequatur. Tempora vero deserunt consequatur sit ipsam soluta numquam.', 'Culpa nihil excepturi voluptatem ipsam debitis beatae quis excepturi. Mollitia voluptate facilis magni soluta debitis harum. Impedit itaque numquam doloremque saepe dolorem laudantium. Quia et sint dolorem consequuntur mollitia asperiores aut. Molestias neque rerum atque non voluptate.\n\nAtque incidunt omnis nostrum dignissimos neque. Beatae ut architecto vitae ipsum similique qui saepe. Cum voluptas qui sit. Officia aspernatur ut iure qui amet veritatis eos.\n\nTempora beatae a dignissimos fugit consequuntur atque non. Voluptas repellat laboriosam enim sunt autem non atque. Eligendi dolores suscipit officia ea. Laboriosam quas rerum labore nemo autem.', 3, '2025-01-26 19:51:15', '2025-01-26 19:51:15'),
(9, 'Architecto et et amet aut voluptatem labore enim et.', 'Eos autem assumenda voluptatem quaerat sint necessitatibus eum. Ea similique recusandae ut consectetur. Non voluptatem et consequuntur dolores eos dignissimos nam. Non nihil sit eos quo quo magnam qui ducimus. Est suscipit consequatur ut soluta error.', 'Adipisci id fugit velit. Aperiam odit ut voluptatem fugit enim eius. Ex beatae repellat consequuntur molestiae.\n\nQui voluptatibus dolorum laudantium enim placeat. Quod occaecati commodi sequi exercitationem minus recusandae voluptatum. Rerum hic qui soluta ipsa mollitia sed dolores.\n\nVoluptas et et hic fuga. Corporis et deserunt est eos necessitatibus. Molestiae molestias laborum magnam laboriosam impedit minus. Voluptas facilis rerum nisi et dolor sapiente. Aut aut voluptatum quisquam ipsum veritatis reprehenderit tempora nemo.', 3, '2025-01-26 19:51:15', '2025-01-26 19:51:15'),
(10, 'Delectus laboriosam porro soluta et culpa.', 'Ad aut voluptatem necessitatibus assumenda officia nihil facere. Tempore ut eos aspernatur corrupti assumenda. Necessitatibus distinctio soluta veritatis cumque quia error reiciendis.', 'Aut deserunt est impedit cupiditate. Vitae inventore numquam fuga magnam voluptatem.\n\nEarum pariatur assumenda laboriosam. Et praesentium facilis animi doloremque rerum adipisci. Asperiores ea aut molestiae et expedita nesciunt voluptatem. Id delectus non molestiae rerum autem aut.\n\nEarum deleniti culpa tempora alias corporis omnis voluptatem. Sint officia distinctio ut. Impedit velit repellat aspernatur quisquam perspiciatis vitae. Repellendus quam illo dolorem magnam id exercitationem dolores.', 6, '2025-01-26 19:52:04', '2025-01-26 19:52:04'),
(11, 'Est porro odit est earum.', 'Aliquam qui inventore iusto culpa quo. Molestias sed accusantium ut nulla aut quas. Molestiae iure eius et inventore at incidunt totam.', 'Ad hic eveniet commodi eum ex qui. Aut necessitatibus ut officiis. Est perspiciatis iste quo molestiae. Culpa dolor architecto iste dolorum ut consequatur.\n\nOdio ab dolor sit quibusdam quo molestiae et. Ipsa nisi rerum voluptas cum iure voluptatem et. Id et quas ratione error voluptatum eum.\n\nQuidem qui veritatis assumenda numquam velit. Possimus minus quis molestiae. Et et et et enim cum corrupti facere. Non voluptatem aperiam ex.', 6, '2025-01-26 19:52:05', '2025-01-26 19:52:05'),
(12, 'Officia vel qui sed est deleniti et.', 'Et quia beatae id doloribus. Cupiditate rerum asperiores consequatur aut ut recusandae commodi. Nobis exercitationem voluptatem nobis quod exercitationem provident recusandae doloribus.', 'Qui fuga molestias expedita odio voluptatem officia architecto. Itaque officiis ipsam officiis libero et at magnam quia. Libero ducimus molestiae eum atque eligendi ullam.\n\nError recusandae at non repellat voluptas. Quibusdam omnis dolorem corporis maiores ut rem. Fugit libero dolores architecto sint tenetur. Unde molestiae accusamus qui.\n\nDolorum et modi iste. Quae qui ut quisquam deleniti. Vitae suscipit aut consequuntur. Suscipit qui quae consequatur omnis dolorem fugit.', 6, '2025-01-26 19:52:05', '2025-01-26 19:52:05'),
(13, 'Odit reiciendis nam dolorem et nisi.', 'Assumenda dolorem et et vel nisi voluptates voluptatem. Enim quae odio veritatis impedit distinctio repudiandae enim. Beatae eaque voluptas id et sunt voluptatem. Est ducimus quam et ipsam.', 'Dolor a aut fuga officiis. Est officia perferendis eligendi quo et maiores. Vel ea in magnam aut. Quia nihil voluptas nesciunt commodi voluptatem quasi.\n\nEsse dolorem necessitatibus et aut in qui. Vel ut sed rerum sit quia est et. Odit amet id quam reiciendis eius est ut. Doloremque cumque ipsam vitae tenetur omnis maiores sequi.\n\nFacilis sunt ut expedita. Pariatur maxime non cumque quam. Sit est dolor sed.', 8, '2025-01-26 19:52:13', '2025-01-26 19:52:13'),
(14, 'Cupiditate sunt et ut dolor exercitationem in.', 'Ea dolores asperiores voluptas similique quidem dolore. Quia accusantium vitae non minima distinctio. Magnam illo iusto totam ea.', 'Quibusdam itaque sint qui repudiandae. Error expedita doloremque quas voluptatibus quasi quis totam odio. Veniam eaque modi sapiente tempora qui. Odio laudantium distinctio eveniet aut.\n\nExpedita aspernatur repellat ea fugiat cupiditate. Quaerat vel inventore deleniti. Quo doloribus rem dolores quae et. Iste numquam ad et consequatur beatae voluptatem maxime. Quis consequatur ut veritatis placeat et iure quia.\n\nConsequatur numquam illum ab iure fugiat ad. Inventore a est cupiditate veniam iure maxime. Quia ut ut dolorum tenetur.', 8, '2025-01-26 19:52:13', '2025-01-26 19:52:13'),
(15, 'Esse aut animi et excepturi.', 'Eos doloremque harum explicabo. Dolore sint quia facilis et ab corporis quidem.', 'Et quaerat ullam aut explicabo sunt ea autem. Tempora reprehenderit alias qui quo.\n\nReprehenderit dolores modi est reprehenderit adipisci. Et quae eaque at deleniti. Neque et temporibus vitae. Iste distinctio totam iste ut.\n\nEt nisi temporibus voluptatem animi. Voluptatem laudantium sunt provident. Eum qui quod dolorum ipsa assumenda.', 8, '2025-01-26 19:52:13', '2025-01-26 19:52:13'),
(16, 'Mi primer posts', 'Este contenido es referente al calentamiento global en el mundo', 'EL calentamiento global es un tema muy preocupante ya que nos afecta a todos por igual es increíble como la gente cree que es mentira', 9, '2025-02-02 15:05:28', '2025-02-02 15:05:28'),
(17, 'Segundo Posts', 'Este es mi resumen de lo mas resumido que te traigo', 'Empiezo a hablar sólo cuando estoy seguro de que lo que voy a decir no es mejor dejarlo sin decir.', 9, '2025-02-02 15:12:04', '2025-02-02 15:12:04'),
(18, 'El posts de Oriana', 'Este post es muy interesante', 'Este posts se destaca por su contenido y la información que puede llegar a causar un efecto en sus mentes inolvidables', 11, '2025-02-16 18:18:30', '2025-02-16 18:18:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('XwjhEw6ntGix9HXvut5sO9Tj7e4qnsyoiYlyCnCC', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWm9oQTdOOWV6MndJekh1ZHE1NHZlbGZmOFpDUG9SbVo2QmpXTTdITiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjExO30=', 1739733170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Winston Rosenbaum', 'etha92@example.net', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', 'jpYm7kPKcpsUPJDenack4IJIIamZRB4msEgwn2ZuwompuzqMdD9Zgroj0huk', '2025-01-26 19:44:38', '2025-01-26 19:44:38'),
(2, 'Pamela Spinka', 'bgibson@example.com', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', '18Ic7qiz3wOKxgnv6VjfhdiVhNhBHrFq2Uuiq5i00jtWbb9aY7FXYdhTISf2', '2025-01-26 19:44:38', '2025-01-26 19:44:38'),
(3, 'Mr. Noel Skiles III', 'alisa.price@example.org', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', 'bqn6mnq2Wx', '2025-01-26 19:44:38', '2025-01-26 19:44:38'),
(4, 'Alyson Wehner', 'grady.adell@example.com', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', 'XDxHo1n1rx', '2025-01-26 19:44:38', '2025-01-26 19:44:38'),
(5, 'Prof. Andre Vandervort', 'hane.jillian@example.org', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', '4Qjd2KlV7T', '2025-01-26 19:44:38', '2025-01-26 19:44:38'),
(6, 'Dale Haley', 'kattie.bechtelar@example.net', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', '3dNlPVdARg', '2025-01-26 19:44:38', '2025-01-26 19:44:38'),
(7, 'Kylee Emmerich', 'devin63@example.com', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', 'oEGGfgfCtW', '2025-01-26 19:44:38', '2025-01-26 19:44:38'),
(8, 'Mr. Jonathon Glover', 'leann42@example.net', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', '4Kaka5EvZZ', '2025-01-26 19:44:39', '2025-01-26 19:44:39'),
(9, 'Dr. Yolanda Weissnat', 'myron61@example.org', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', 'NsTS7TsIqWfISd4SKbu1xCPTL1R1b40rvgyIPSfPSfvFwD6XpwhDUtNJeGzV', '2025-01-26 19:44:39', '2025-01-26 19:44:39'),
(10, 'Tierra Braun DVM', 'lucienne.hodkiewicz@example.org', '2025-01-26 19:44:37', '$2y$12$TA.P4FKDrsY75gl/.KGDn.wfg6mrBxvgcbOlAb1OSYFFebTUJOZga', 'TcYZIpgHfc', '2025-01-26 19:44:39', '2025-01-26 19:44:39'),
(11, 'Oriana', 'oriana@example.com', '2025-02-16 18:15:20', '$2y$12$me7znIIZ4OApvGetaP6EdelC54hz63e6.OMopHazV34VtZrRcnzBa', NULL, '2025-02-16 18:12:49', '2025-02-16 18:15:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table theseshub.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table theseshub.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table theseshub.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table theseshub.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_04_04_085319_create_students_table', 2),
	(6, '2024_04_04_090347_create_theses_table', 3);

-- Dumping structure for table theseshub.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table theseshub.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table theseshub.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table theseshub.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table theseshub.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table theseshub.students: ~0 rows (approximately)
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `student_number`) VALUES
	(1, 'Lela Heidenreich IV', 'Sonya Kilback', 'mitchell75@aufderhar.com', '+1-916-279-9893'),
	(2, 'Mr. Melvina Schiller MD', 'Nelle Farrell', 'sean84@hotmail.com', '+1.240.487.9361'),
	(3, 'Herminio Wyman', 'Prof. Blanche Veum', 'alivia97@yahoo.com', '423-476-0338'),
	(4, 'Miss Alana Marks I', 'Ms. Marisa Hane', 'arthur83@hotmail.com', '1-534-945-7813'),
	(5, 'Milford Kiehn', 'Zita Stroman', 'raegan.blick@wilkinson.net', '+1-618-491-0440'),
	(6, 'Renee O\'Kon', 'Prof. Miguel Cruickshank', 'marks.nels@shields.com', '541.276.0798'),
	(7, 'Angeline Bergnaum DDS', 'Ressie Zieme', 'krystina01@sporer.biz', '(847) 395-3310'),
	(8, 'Dr. Lucio Lind II', 'Maryjane Powlowski', 'pollich.beth@gmail.com', '463.866.4687'),
	(9, 'Ms. Jermaine Lueilwitz II', 'Ms. Alysson Robel', 'charity.wolf@leuschke.info', '623.430.8369'),
	(10, 'Leanna Grant', 'Eda Hessel', 'doyle92@legros.com', '(484) 933-5134'),
	(11, 'Efren Larkin', 'Ms. Palma Wisozk PhD', 'leif.damore@hotmail.com', '+13363360269'),
	(12, 'Prof. Daija Hauck', 'Cloyd Lehner', 'alan.schimmel@hotmail.com', '+1-580-243-1208'),
	(13, 'Carolina Waelchi', 'Xavier Collier Jr.', 'tgoodwin@bergnaum.biz', '+1-601-918-0332'),
	(14, 'Fredy Conroy', 'Prof. Arthur Kulas', 'kmayert@kunde.biz', '+1-479-780-8459'),
	(15, 'Joan Rice', 'Waino Muller', 'kziemann@stanton.com', '651-874-8105'),
	(16, 'Randi Donnelly', 'Laurel Feil', 'karelle03@yahoo.com', '+1 (531) 727-7831'),
	(17, 'Cyril Buckridge', 'Roman Jaskolski II', 'karelle.goyette@hotmail.com', '+1 (254) 483-0072'),
	(18, 'Athena Kiehn', 'Miss Vida Dare', 'mitchell.lorena@miller.org', '580-341-7174'),
	(19, 'Kelley Rippin', 'Lesly Haag', 'waldo16@champlin.com', '+1-775-707-2797'),
	(20, 'Jazmyn Ferry', 'Kristian Breitenberg', 'bolson@oconner.com', '+17544021407'),
	(21, 'Thaddeus Mayer I', 'Georgiana Crist', 'eliane.carter@yahoo.com', '831-987-8613'),
	(22, 'Miss Kaylin Bins', 'Iva Denesik MD', 'anderson.grace@yahoo.com', '765.814.0117'),
	(23, 'Marlen Prosacco', 'Hellen Waters DDS', 'boyer.kasey@gmail.com', '+1-520-582-4810'),
	(24, 'Dr. Deon Lemke', 'Ms. Cecelia Jones', 'neal52@yahoo.com', '(610) 825-2876'),
	(25, 'Monty Collier', 'Dr. Emilio Dickinson Sr.', 'cvolkman@hotmail.com', '636.665.1939'),
	(26, 'Prof. Walker Crooks', 'Kellen Donnelly', 'mckenzie.buford@schneider.com', '(772) 449-7646'),
	(27, 'Quentin Goyette', 'Quentin Jakubowski', 'ursula93@graham.com', '+19164841018'),
	(28, 'Ona Green', 'Winifred Kub', 'sammie.murazik@bailey.com', '1-458-397-1760'),
	(29, 'Curtis Nolan II', 'Velma Jacobi', 'klocko.noble@gmail.com', '+1-206-545-1852'),
	(30, 'Baron Ledner MD', 'Dr. Mercedes Mann II', 'estelle75@hotmail.com', '769-404-0896'),
	(31, 'Leonardo Tillman', 'Winnifred Marquardt', 'tfarrell@yahoo.com', '762-530-6281'),
	(32, 'Kayla Leannon Jr.', 'Henri Jones', 'kirsten99@gmail.com', '267-779-8204'),
	(33, 'Amara Dooley', 'Judd Franecki', 'wiza.marques@goodwin.info', '385-355-0384'),
	(34, 'Prof. Clay Haley', 'Alejandra Rolfson', 'rosalinda68@braun.com', '1-484-810-8296'),
	(35, 'Mrs. Stacey Witting PhD', 'Mrs. Catalina Hayes Sr.', 'kennedy40@harris.com', '985-735-7769'),
	(36, 'Susanna Hintz', 'Prof. Lilla Flatley', 'evans.wuckert@hotmail.com', '+1-520-718-4069'),
	(37, 'Myrtis Jerde', 'Lea Gulgowski', 'dandre56@kub.info', '1-938-369-3279'),
	(38, 'Prof. Felicia Maggio', 'Lynn Nicolas III', 'haylee12@tremblay.com', '+1 (479) 294-1424'),
	(39, 'Drake Hilpert DDS', 'Miss Ava Koch', 'vrolfson@dibbert.com', '458.893.4299'),
	(40, 'Mr. Sven Jacobs', 'Grover Legros', 'jdaniel@gusikowski.org', '(501) 836-0129'),
	(41, 'Jamarcus Bartell', 'Anjali Rogahn', 'cletus.schuster@hyatt.com', '(938) 492-7706'),
	(42, 'Prof. Albert Thiel V', 'Prof. Magnus Carroll DVM', 'abshire.madaline@hotmail.com', '440.749.4580'),
	(43, 'Cole Kozey', 'Prof. Monty Fritsch DVM', 'bertrand.bayer@renner.com', '409-822-2648'),
	(44, 'Miss Lucile Jaskolski', 'Angus Nolan', 'angus.bechtelar@gmail.com', '+12606353989'),
	(45, 'Hertha Ledner V', 'Velma Yost', 'marcella29@botsford.com', '(667) 632-5653'),
	(46, 'Ms. Keely Jaskolski MD', 'Mireya Kuhlman', 'carter.santa@gmail.com', '(347) 266-0555'),
	(47, 'Mr. Milton Flatley', 'Merl Osinski I', 'lhagenes@brakus.com', '681-437-1900'),
	(48, 'Gayle Schoen', 'Daren Nicolas', 'beverly.carter@yahoo.com', '+1 (918) 275-3079'),
	(49, 'Rosemarie Block', 'Lolita Crist', 'langworth.quinton@frami.com', '+15042989796'),
	(50, 'Helmer Beatty', 'Trinity Treutel', 'wrunte@torphy.com', '360-628-5631'),
	(51, 'Đàm', 'Thảo', 'thaolinhvu4@gmail.com', '2151062869'),
	(52, 'Đàm', 'Phuon Thảo', 'thaodp@dft.vn', '2151062877'),
	(53, 'Đàm', 'Thảo', '2151062869@e.tlu.edu.vn', '2151062789');

-- Dumping structure for table theseshub.theses
CREATE TABLE IF NOT EXISTS `theses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `program` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supervisor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_date` date NOT NULL,
  `defense_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theses_student_id_foreign` (`student_id`),
  CONSTRAINT `theses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table theseshub.theses: ~0 rows (approximately)
INSERT INTO `theses` (`id`, `title`, `student_id`, `program`, `supervisor`, `abstract`, `submission_date`, `defense_date`) VALUES
	(1, 'Officiis quod qui debitis cumque sed quo quia nihil. Cupiditate voluptates labore suscipit dolore totam at aut. Architecto id qui optio odit debitis mollitia voluptates. Cupiditate est eveniet qui nihil.', 22, 'Quia eos et cum et ad reiciendis. Itaque cupiditate dolor praesentium pariatur. Officiis deserunt eos excepturi iusto sit delectus ratione. Et facilis ea a neque laborum incidunt. Qui eos ratione voluptatibus corporis.', 'Edgar Hahn IV', 'Ea nam beatae enim eos. Eos fugit ratione voluptatem voluptatibus aut unde est. Rem non dolorem sunt a dignissimos quis qui eaque. Autem voluptatibus labore eius eaque ut et cupiditate maiores.', '2013-03-26', '2010-06-27'),
	(2, 'Aut similique eius nihil. Vero rerum ut minima quae accusamus nobis odit. Rerum est est fugit rerum sunt corporis nobis. At est error non beatae.', 16, 'Molestiae accusamus eum temporibus assumenda temporibus accusantium voluptatum. Nesciunt dicta qui nemo et. Soluta suscipit consequatur tempora modi qui quia quidem. Optio adipisci rerum praesentium aliquam nam ad sed aut.', 'Dr. Ryder Yost', 'Ipsum animi qui repudiandae ad ut ea autem. Error dignissimos quos iure ratione et et impedit in. Nihil temporibus distinctio inventore aut voluptas laudantium.', '2006-04-01', '2011-03-22'),
	(3, 'Soluta quasi corrupti ex commodi est. Et molestias veritatis officiis quo facilis qui in qui. Nesciunt odio debitis dolorem voluptatem vel.', 17, 'Sint odit dolore facilis aliquam earum odio. Aliquam omnis provident iusto quas placeat alias error. Recusandae id aut cumque voluptatem.', 'Rose Little I', 'Sed modi voluptatum qui pariatur. Similique sint consequatur aliquam. Distinctio cumque molestiae qui est natus. Ut non placeat a ipsum omnis. Aut aut illo omnis velit dolores hic. Non exercitationem voluptas doloremque dolor quam optio nihil ut.', '2001-05-01', '2004-10-17'),
	(4, 'Sunt eligendi eum odio maxime. Ut ducimus ea autem aut quae vel. Velit in iusto neque quis. Beatae reiciendis placeat deleniti cumque nemo veniam nihil.', 34, 'Similique qui non temporibus corrupti odio est. Eum ea eaque eveniet et eligendi consequatur ducimus et. Non temporibus aut ipsam alias quod possimus non.', 'Shyanne Weber', 'Aliquid nesciunt fugit eveniet sit non autem sit. Numquam vitae dolor repellendus repudiandae impedit. Voluptatem architecto atque voluptas corporis. Labore voluptas voluptas voluptate minima quia eligendi.', '2019-12-10', '1980-02-24'),
	(5, 'Voluptatem fugit sed autem. Et placeat ipsam atque hic dignissimos accusantium. Ducimus dolor autem corporis vero quos aperiam magni. Ut non quas quia dicta magni porro. Dolorem fugiat sunt et ad vel recusandae. Rerum non cumque suscipit nesciunt quam.', 24, 'Officiis eum nesciunt cumque iste culpa. Accusantium sequi excepturi ea nisi molestiae odio. Nesciunt sed fuga voluptas est facere non. Ipsa dolores eum maiores praesentium aperiam.', 'Prof. Yolanda Swaniawski Jr.', 'Iste soluta cumque facere. Quos doloremque delectus est culpa dolore. Optio earum iusto consequatur et. Veritatis labore quas soluta recusandae. Porro commodi itaque voluptatem et. Maiores ea qui sunt doloremque. Ea labore provident sit.', '1971-03-14', '1986-12-09'),
	(6, 'Quis nobis officia natus corporis neque omnis consequatur qui. Voluptate sed iste aliquam eum et. Doloremque assumenda ipsa et qui voluptas.', 34, 'Assumenda quaerat incidunt voluptatem tempore perferendis voluptas recusandae. Eveniet eligendi voluptatem harum non nobis. Est iste vitae rerum quia dolores nam.', 'Roxanne Gulgowski', 'Aut nobis possimus aspernatur in libero et hic. Adipisci nemo at voluptates ea mollitia distinctio voluptatem. Ducimus doloremque et autem dolor officia ducimus.', '1981-06-02', '1994-07-15'),
	(7, 'Explicabo qui et doloribus soluta. Ut temporibus ratione voluptatem sed nisi pariatur. Nostrum illum porro qui voluptas blanditiis delectus. Eaque dolor id quia ut. Voluptatem numquam consectetur in fuga. Sequi accusantium vitae et tempora assumenda.', 10, 'Excepturi debitis doloribus qui earum dignissimos. Odio fugiat quo omnis pariatur sunt libero. Illo possimus consequuntur ab dolor ut voluptatibus. Et dicta similique suscipit maiores.', 'Owen Weimann', 'Cupiditate veritatis quos cupiditate ratione laborum ipsam incidunt. Deserunt eum ea deleniti a. Et sit est delectus blanditiis dolor omnis aliquid.', '1986-07-27', '2017-08-14'),
	(8, 'Libero atque non porro dolores sed libero in deleniti. Itaque quod tenetur voluptatem consequatur officiis beatae ut. Natus modi et rerum corrupti et in dolorum. Beatae est sunt rerum reiciendis dolores quia qui nulla.', 41, 'Dolores et aut in eligendi. Itaque ad sed odit sapiente. Molestiae consequuntur totam sequi. Beatae esse pariatur ad vel error quis.', 'Dasia Prohaska', 'At tempora ut ut quo. Autem modi sed architecto ut voluptatem. Fuga qui est suscipit. Reprehenderit possimus nulla odit consequatur vitae expedita asperiores. In illum ea unde architecto quidem. Dignissimos dicta est et facilis atque aliquid ab.', '1996-03-19', '2012-02-01'),
	(9, 'Quibusdam sint id minus numquam et. Deleniti laboriosam eveniet impedit mollitia. Ducimus et aut et in molestias aut explicabo qui.', 12, 'Consequatur itaque non rerum id. Quidem assumenda est suscipit illum molestiae in dolor nisi. Nobis sed assumenda id reiciendis ipsum omnis nihil aut. Quia quis optio deserunt nam enim distinctio eligendi aspernatur.', 'Ms. Euna Nienow I', 'Ipsam voluptates eum blanditiis tempore rem placeat. Dignissimos eum et facilis iure iste deleniti. Dolore fuga error voluptates omnis maiores illum dolor.', '1980-05-03', '1970-04-25'),
	(10, 'Unde libero voluptate qui veniam voluptas. Numquam et distinctio maiores rem quasi. Error dolore perferendis sequi dolores fugiat dolorum. Consequatur nulla cumque animi asperiores pariatur omnis voluptatem.', 25, 'Necessitatibus et tempora amet sunt animi. Excepturi quod quae cupiditate dolor quisquam error. Doloremque et consequatur ut enim maiores qui optio voluptate.', 'Natalie Mraz', 'Sequi hic voluptate nesciunt in consequatur illo voluptatem ut. Porro omnis autem ducimus facilis impedit aut. Expedita dolores non temporibus iusto et et.', '1993-02-18', '1983-07-18'),
	(11, 'Aliquam exercitationem nemo provident et nemo hic sunt. Earum aliquam voluptatem natus vel quis. Libero autem ducimus dolorum est est accusantium autem. Ut amet sapiente iure qui.', 44, 'Neque nihil magnam consequatur eaque. Quibusdam tenetur iusto voluptas dicta ducimus laboriosam. Architecto soluta nostrum natus eius voluptates quo.', 'Allie Kuhlman', 'Architecto provident ratione occaecati qui exercitationem vel perspiciatis. Totam nihil mollitia velit voluptate. Dolor voluptas nulla perspiciatis quisquam quia at. Reiciendis hic rerum nostrum aut commodi dolorum pariatur.', '1999-12-19', '1970-10-24'),
	(12, 'Et voluptatem omnis illum distinctio earum. Magnam ratione consectetur nesciunt consectetur et amet veritatis. Modi velit quidem vitae tempore enim enim et.', 4, 'Ullam facilis sapiente voluptatem. Ut nisi fugiat quaerat pariatur occaecati cupiditate. Excepturi porro recusandae adipisci alias quibusdam corporis. Odio velit omnis iste qui fugit. Voluptatibus sint possimus facilis cum commodi neque.', 'Marjolaine Mertz', 'Sapiente mollitia veniam aut ab maxime dolore tempore. Minus debitis temporibus qui. Autem eaque deserunt neque perferendis.', '2006-10-29', '1980-03-20'),
	(13, 'Laudantium quos ratione et et ipsa quae quia. Dolores ut voluptatem et ut quia distinctio. Nostrum natus alias et.', 22, 'Dolorum tempora sed nulla qui rerum voluptatum. Occaecati nihil laboriosam nihil rerum possimus aut. In veniam quam maiores a at facere. Dolor sed quo fugiat alias.', 'Elva Aufderhar', 'Est blanditiis saepe rerum quod cumque ut. Ut autem quis doloribus. Fugit similique aspernatur accusamus voluptatem qui ut. Expedita necessitatibus ab dolorem dolorem cumque.', '1990-02-07', '2021-11-08'),
	(14, 'Et sapiente ut facere facere aliquam adipisci. Eveniet autem consequuntur nostrum. Rerum autem sequi eos sint.', 14, 'Dolores et quasi quod repudiandae et beatae. Numquam minima doloribus quasi soluta perferendis optio. Sequi vero unde animi facere et eveniet.', 'Frederik Lang I', 'Suscipit libero deleniti delectus atque quasi. Quaerat est doloremque harum atque unde quae est. Nostrum est qui pariatur ipsum et sed qui.', '1975-04-21', '1987-12-15'),
	(15, 'Rerum adipisci vero maiores saepe minima modi nulla. Amet voluptatum nemo eos facere animi vel. Animi culpa odit voluptas dolores hic autem tenetur. Asperiores quia vel sunt et inventore quo.', 11, 'Aperiam accusamus repudiandae et nobis. Voluptatem non harum dolores. Et nam facilis similique nihil voluptatibus. Nesciunt aut esse et necessitatibus omnis omnis.', 'Shaun Farrell', 'Ullam fugiat molestias in necessitatibus tempore. Error minima et est iure itaque. Soluta est labore doloremque quia. Sunt nesciunt ut cumque dolor quis error et. Omnis doloremque et in cum minus. Neque sed quaerat omnis quaerat consequuntur omnis.', '1993-08-10', '1995-07-29'),
	(16, 'Doloremque et quibusdam sit tenetur. Distinctio non porro voluptas praesentium. Dignissimos dicta ipsum rem laboriosam ut est. Et vitae facere nemo officiis.', 31, 'Enim ipsa odit consectetur maxime similique sed. Ipsam a aliquam vel nobis possimus id.', 'Mr. Damion Roob', 'Totam doloremque maiores impedit libero in. Nulla repudiandae est aliquid tempore harum neque corporis. Nam excepturi facilis repellendus qui. Molestiae est unde odit quaerat.', '2003-04-08', '1972-07-19'),
	(17, 'Est aperiam earum ea consectetur. Officiis autem sed ut sequi eaque quo. Sunt consequatur nostrum laboriosam et officiis optio autem.', 17, 'Sit architecto deleniti fuga in deleniti dicta. Quam ut eligendi excepturi possimus. Ea corporis ut omnis aut deserunt. Totam quibusdam voluptatem nihil laudantium fuga sit nam.', 'Ms. Tomasa Harvey I', 'Cumque provident eum laborum amet eius. Autem nam velit aut distinctio nihil. Laudantium cumque eveniet at voluptate numquam. Cum est voluptatum quia dolorem.', '1990-06-14', '1983-07-01'),
	(18, 'In ut quia sapiente hic animi aut et. Consequatur a enim ea deleniti omnis. Quidem ipsum nemo nemo dolores et dolores.', 43, 'Non facilis quia qui nostrum veritatis. Doloribus aut aut officia quis facere. Libero laboriosam est saepe reprehenderit consequatur in et. Ea qui tenetur ipsum impedit quo. Soluta ut nesciunt eum laudantium occaecati voluptas nisi.', 'Kristoffer Cruickshank', 'Ut dolor sint nisi aut. Vero quis aperiam est corporis inventore. Porro neque dignissimos veniam accusantium. Non totam porro quis nemo culpa.', '2003-03-18', '2006-09-17'),
	(19, 'Voluptas ea non numquam molestias officiis esse quia. Vel veritatis eos at quae itaque consequatur. Omnis nobis voluptatem et consequatur dolorem suscipit. Quam et beatae incidunt. Possimus eveniet veritatis est enim quia optio maxime.', 28, 'Assumenda cumque natus maiores tenetur. Sit quam quasi aut iste est consectetur veritatis rerum. Eos id quibusdam iure beatae. Iure soluta aliquid ut voluptatem voluptas veniam molestias.', 'Frieda Ortiz', 'Voluptatem corrupti maxime nihil ut ut sunt. Autem nulla porro totam voluptates dolorum. Asperiores voluptas et ratione molestiae odit beatae est. Impedit est quibusdam dolorem quisquam id.', '1987-06-11', '1979-02-21'),
	(20, 'Laborum minus sunt enim ab cumque. Quia quod impedit sint sunt sed sapiente mollitia molestias. Molestiae iste nesciunt ullam enim a. Laborum debitis expedita exercitationem est aut praesentium.', 6, 'Explicabo et nesciunt voluptas asperiores. Eum ab placeat at. Inventore accusamus perspiciatis corrupti. Ab molestias totam neque sed velit omnis accusantium iste. Magni aut illo quibusdam eum non quo numquam vitae.', 'Mr. Tyreek Braun', 'Perspiciatis consequatur impedit molestiae unde voluptates maxime sed. Sit rerum nisi officia enim perferendis quas autem. Quo sit maxime quod eos quod animi dolor. Vel nihil modi a consequatur.', '1973-11-22', '2004-09-13'),
	(21, 'Sed magnam adipisci dicta itaque veniam dolores quo. Quisquam non aut ad eos. Consequatur dolores quisquam velit consequatur quasi animi quod qui.', 45, 'Consequatur sint cum soluta rerum eligendi non veniam voluptatibus. Nobis ea quidem qui incidunt nobis. Dolores ea et nobis. Labore iusto expedita voluptate perferendis.', 'Giovanna Hessel', 'Qui et cum ea aut. Hic temporibus dignissimos ut rerum commodi sequi. Et id quas facilis. Provident quia ipsam et molestiae repellendus sequi.', '1994-05-24', '1973-04-29'),
	(22, 'Nulla consequuntur ipsa pariatur. Excepturi sint eveniet tenetur distinctio hic. Deserunt minus sed alias et totam dignissimos ex omnis. Quia nemo nisi voluptas aut. Et cumque dolorum et in qui est vitae. Modi placeat ut dolore qui beatae non pariatur.', 40, 'Voluptas ratione magnam praesentium reprehenderit odio voluptatem. Rerum quo quod alias ut. Qui ad sunt nemo. Sint cum omnis quos tempore aspernatur est. Blanditiis maxime nam id a. Illum quibusdam nobis est qui.', 'Raoul Hudson', 'Quia culpa voluptas mollitia sunt et maxime. Aperiam et dolor quas tempore dolore. Consequuntur alias et soluta laborum rerum quidem. Est aut suscipit ipsam tempore dolorem ipsa sed.', '2000-09-11', '1974-03-22'),
	(23, 'Autem tempora fuga amet unde dignissimos. Eos molestiae eius veritatis saepe quis qui quod voluptatem. Aut sit vitae atque. Et maiores expedita maxime praesentium quos doloremque debitis.', 36, 'Libero odit quo libero amet hic et est. Iusto fuga corporis est voluptatem distinctio ipsam impedit nam. Eligendi atque distinctio ducimus tenetur. Cumque veniam excepturi maiores quod rerum. Non a sit ut alias illum ea.', 'Gregorio Ratke', 'Fugit et modi necessitatibus voluptates eum dolorem. Est aut dolores consequatur voluptatem quasi. Accusantium voluptatem vero tempora nihil fugit error cumque.', '1988-03-24', '2004-03-05'),
	(24, 'Incidunt qui voluptas aliquam et. Consequatur dolor sequi quia voluptas facilis iste. Rerum ea itaque fugit sed et dolor dolorem autem.', 41, 'Inventore enim voluptatem saepe totam pariatur et. Inventore aperiam est eos quasi facere dolores harum ducimus. Nisi fugit autem ea doloremque.', 'Nick Herman', 'Sunt quidem quod molestiae laboriosam eligendi ut. Ab similique incidunt iste amet sed ab. Sed eius deserunt facere consequatur fugiat et ut. Est et molestiae et sit. Eos et ratione vero dicta rerum et.', '2003-01-12', '1972-03-01'),
	(25, 'Ullam et pariatur fugit et molestiae sapiente est id. Numquam aspernatur itaque sit eos. Maiores repellendus voluptas occaecati sed enim expedita sed.', 18, 'Quos fuga excepturi saepe. Iste officia sit rem cumque. Eligendi dolores ut impedit ut dolorum culpa. Eum est ut laboriosam ullam.', 'Prof. Coleman Walsh Sr.', 'Libero ipsum natus sunt quos totam error. Tempore et totam labore. Id sint omnis optio labore dicta. Sit optio autem impedit mollitia. In recusandae cupiditate et.', '2016-01-21', '1982-07-23'),
	(26, 'Est facere laboriosam quibusdam labore sit ex aut. Nam eos nam ea voluptas pariatur. Eos iusto molestiae et qui sapiente. Quia laboriosam et alias ex suscipit ea. Vel quam corrupti et. Debitis numquam quisquam vitae porro qui.', 11, 'Occaecati voluptas dolor libero dignissimos adipisci adipisci suscipit non. Qui et quam cupiditate sed earum. Voluptatem consequatur dolor omnis nulla repellendus voluptatibus eos.', 'Mr. Dell Weissnat', 'Est vitae doloribus magnam cumque. Eveniet est nemo dolor. Eum blanditiis ratione enim et quam aut. Nisi iure eos et et eaque quas est mollitia. Cumque magnam quidem sed voluptatum omnis et. Quis id deleniti dicta animi et.', '1996-08-29', '1978-02-09'),
	(27, 'Natus possimus occaecati inventore numquam et veniam adipisci. Debitis odit quod voluptatibus est. Ut id adipisci ad autem alias minima ut. Rerum consequatur voluptatem quod et aut ea neque. Nostrum eligendi consequuntur excepturi quo dolor.', 47, 'Nesciunt error aut in est corporis dolore. Occaecati et omnis officia. Natus et neque quaerat. Suscipit minima consequatur ratione ipsum. Nam et sapiente et explicabo et error.', 'Kylie Thompson', 'Soluta ad architecto sint voluptatem aut unde. Autem molestiae consequuntur magnam rem vel quo error. Sunt ipsa rerum natus corporis deleniti officiis. Ut qui ipsa ratione earum.', '1992-08-30', '2009-02-14'),
	(28, 'Dolor molestiae cupiditate nihil fuga est eligendi nulla. Accusamus cupiditate a praesentium sed magni provident. Voluptatem est praesentium nesciunt. Ipsum qui impedit sed illo eaque.', 2, 'Voluptas dignissimos est et facere. Deserunt ea neque possimus. Ab minima nulla voluptatem quia fugit. Et eaque magni consequuntur nulla et quia earum.', 'Prof. Dejuan Abbott', 'Animi architecto odio et illum quis. Explicabo id veritatis totam voluptatem sit dolorem. Aut incidunt ea deserunt quisquam laborum.', '2002-06-16', '2013-11-20'),
	(29, 'Possimus enim necessitatibus laboriosam aperiam molestias sunt qui. Commodi eaque est illo et. Beatae est consectetur blanditiis ipsum in.', 7, 'Doloremque rerum ut expedita voluptates itaque porro. Sit iusto qui qui placeat. Atque eius consequuntur voluptatem commodi ut. Dolore architecto officia numquam doloribus minus. Veritatis et enim voluptatem velit eveniet qui ad fuga.', 'Ismael Bernier', 'Quam cupiditate praesentium sint ipsum sit dolores. Dolores sapiente qui mollitia expedita dolorum dolorum. Maxime nostrum magnam neque. Placeat corrupti vero numquam sequi magni assumenda aut.', '1992-04-05', '1999-02-05'),
	(30, 'Id sint quaerat ipsum quod asperiores non. Cum tenetur ab vel voluptatem qui facilis. Distinctio inventore ut similique. Sit occaecati veritatis possimus inventore voluptatem est. Culpa quos nihil voluptatem. Voluptas dolor libero dolor illum.', 33, 'Doloribus culpa ut aspernatur ipsa non recusandae. Impedit nulla facere aut et aut. Eius id eaque quia atque sint.', 'Clarabelle Hane', 'Sed voluptas qui omnis vel suscipit dolores. Possimus quasi aut praesentium praesentium mollitia et odio libero. Explicabo voluptatibus odio sint omnis vero in. Et illum dolores ex enim id.', '2017-02-13', '1999-09-23'),
	(31, 'Saepe sequi ab qui enim maxime exercitationem. Omnis ut veritatis eaque cupiditate. Dolorem aut voluptas iste error non. Maxime vel eum quia sed recusandae.', 18, 'Ut dolor qui est perferendis. Debitis omnis blanditiis aut et. Sit harum repellendus nostrum odit quia facilis. Voluptatem possimus omnis ex rerum fuga. Sint non sit consequatur illo amet sequi dolor.', 'Ms. Adah Farrell', 'Voluptate quis ut occaecati deleniti at. Suscipit ut et consequatur voluptatem ut molestiae. Esse iste quo quod magnam voluptate dicta. Earum corporis et expedita dolor aliquid quia.', '1971-01-25', '1977-12-01'),
	(32, 'Autem ipsam illo et id inventore enim delectus. Ratione aut nihil unde rem. Autem blanditiis maxime blanditiis cum et sint ab. Aut provident aut aut qui. Itaque sunt quo laborum ducimus illo.', 1, 'Sed ratione et hic veniam. Autem at vel vel illo ipsam. Voluptas totam eum molestiae non corporis. Est similique non aut.', 'Erna Orn MD', 'Quia velit esse suscipit eum. Optio tenetur impedit repellendus quo et. Est sequi assumenda veritatis omnis molestiae sed. Autem quo molestiae aliquid ea aut.', '1981-11-23', '1987-02-19'),
	(33, 'Ullam officiis consectetur quo voluptatibus veritatis consequatur. Nemo quo ab dolorem. Quisquam quas ea maxime accusamus. Ipsam ad iure consequuntur.', 26, 'Fugit praesentium aut distinctio ratione. Ipsa corporis et doloremque ut cum. Animi magni delectus assumenda ut.', 'Dr. Reuben Gutmann V', 'Non sit eum sit consequatur voluptas dolor blanditiis. Inventore delectus et voluptatem ut aut. Cupiditate dicta eum ea dolor earum consequatur molestias.', '1981-02-18', '1973-02-05'),
	(34, 'Autem sapiente in consequatur provident a corporis corporis corporis. Dicta autem impedit nihil veniam laborum et occaecati. Sed laudantium sunt ea vel. Unde autem aperiam necessitatibus voluptatem corrupti optio distinctio delectus.', 32, 'Maiores dicta omnis dolor eius. Aut odit qui quo ut eos id amet. Facilis eum ut corrupti omnis. Illum explicabo atque est et ipsa veniam id. Quam aut mollitia molestias.', 'Laurine Schaden MD', 'In quas praesentium et mollitia eius dolores error. Saepe rerum quia nihil quae recusandae non. Quam rerum totam quis autem. Alias quos alias possimus voluptatem nobis.', '1978-06-10', '2020-06-11'),
	(35, 'Est aut consectetur iusto quia. Amet sequi odio ut possimus qui minus. Vitae ab ex aut delectus voluptatum error non.', 41, 'Est inventore consequatur exercitationem reprehenderit dolorem. Occaecati provident beatae quas iure nostrum blanditiis omnis ducimus. Animi sed deleniti delectus ipsum est eum repellat.', 'Prof. Manley Turner', 'Non soluta ea minima aperiam incidunt quia. Minus incidunt et nemo. Qui et nulla esse aut. Rerum qui qui totam labore accusantium. Itaque et iste qui dolorum exercitationem quo incidunt. Vel culpa voluptas ea quo voluptatem aliquid nobis.', '1988-11-07', '1975-11-14'),
	(36, 'Distinctio est est impedit illo deserunt veritatis repellat. Consequatur magni quae impedit tempore excepturi culpa ut. Magni illo placeat maxime et quia.', 41, 'Voluptas quia veritatis ab totam. Beatae in ut est quam consequatur ad. Cumque deserunt fugiat debitis qui similique.', 'Ethan Little', 'In similique aliquam a et hic quis et. Unde itaque minus accusamus consequatur sit rerum. Consequatur quasi consequatur doloribus ut placeat laudantium. Dolor hic fugit sed voluptates.', '2016-05-27', '1985-05-16'),
	(37, 'Nam numquam quidem nihil similique sit dolorem sit. Ut voluptatem eligendi molestias accusamus. Iure soluta laborum tenetur quae omnis.', 29, 'Itaque eum corrupti possimus natus. Porro commodi magnam delectus et modi consequatur similique. Quam aut error soluta sint maxime.', 'Prof. Gabriel Heidenreich PhD', 'Eos consectetur officia veniam similique officiis nostrum. Dicta dolorum eius impedit eligendi voluptas et. Et quibusdam et suscipit saepe explicabo. Vero odio ducimus suscipit autem non perspiciatis hic.', '1999-02-05', '2008-03-08'),
	(38, 'Quia saepe nam rerum quo est dolorum. Et quia aperiam quia iure dignissimos. Laboriosam molestias vel sunt omnis.', 22, 'Dolore architecto nostrum pariatur minus. Officia possimus perferendis eaque ullam qui tempora adipisci. Nobis atque nesciunt qui aperiam ut.', 'Adrain Dickinson', 'Sequi magni praesentium laboriosam. Dolores adipisci voluptas dolore unde voluptate exercitationem. Ad velit aut exercitationem itaque dicta quibusdam nam.', '2014-05-14', '1971-01-15'),
	(39, 'Animi velit excepturi eum itaque et odio pariatur. Quis dolorem similique earum beatae. Necessitatibus ab similique ut esse id fugiat.', 10, 'Corporis ut possimus minima ducimus sed nihil maiores. Quia voluptatem est fugiat amet earum quia magnam perspiciatis. Eum numquam provident odio et rerum voluptatem sit.', 'Kyler Monahan', 'Omnis animi sed ab veritatis deleniti officiis. Doloribus aliquam sunt sit dolor. Recusandae sint et est magni laborum. Et adipisci illo maiores et impedit accusamus ipsum porro.', '1975-08-09', '1978-01-14'),
	(40, 'Ex quam rerum ad et tenetur corporis. Ut ad fugit eos voluptatem rerum voluptatem. Officiis porro beatae omnis sapiente molestiae consequuntur aut. Ullam nam eius quas expedita.', 48, 'Quia quia possimus et ex provident nesciunt a. Porro sequi ducimus eos qui quis id optio. Amet ea ullam assumenda quae. Dolore voluptatem animi dolor dolorem pariatur impedit.', 'Mr. Adrian Braun', 'Deserunt iusto non aut dignissimos. Voluptatibus mollitia aut dicta ad est est eaque. Ab exercitationem natus inventore aut in.', '1983-07-16', '1993-12-28'),
	(41, 'Dolores nihil impedit ab quia. Fuga doloribus explicabo repellendus magni nostrum corrupti eum ut. Consequatur temporibus eius facere aperiam et aperiam. Fuga error omnis ipsum omnis ut blanditiis.', 41, 'Cum sit nobis ut voluptatem sapiente a. Laborum earum placeat eius quo qui deleniti similique. Rerum commodi natus possimus.', 'Mikayla Shields', 'Tempore aliquam ullam debitis sed maiores. Maiores cumque voluptatum rerum sed. Nobis id eveniet quas adipisci ipsam.', '2014-01-19', '1975-01-16'),
	(42, 'Consequatur laboriosam molestiae odio reiciendis ad asperiores. Id omnis aspernatur illum quasi nulla cumque neque. Mollitia reprehenderit cupiditate natus ut. Optio delectus fuga sit autem.', 19, 'Reprehenderit at illum rem reprehenderit. Ipsa sed provident doloremque ut quia voluptates. Veritatis fuga cupiditate consequuntur nobis id in incidunt. Earum ea omnis quia sunt temporibus. Enim minus repellendus eaque asperiores cumque.', 'Eula Hudson', 'Porro ducimus culpa fuga et excepturi. Corporis perferendis ducimus temporibus ad nihil.', '1988-10-27', '2021-10-08'),
	(43, 'Magni velit eum nihil non. Deleniti sit ut repellendus enim illo. Illum fugit nemo veritatis asperiores.', 15, 'Nemo consequatur rerum velit ut. Assumenda id delectus animi porro nihil. At enim illo ducimus ducimus quas dolor ut.', 'Prof. Alize Nienow III', 'In quod iste quos accusamus aperiam. Id vitae harum quisquam laborum sit. Ratione unde atque deleniti sed. Quis fuga nulla aliquam animi quod voluptatum libero assumenda.', '1982-09-24', '1971-12-24'),
	(44, 'Ad magni corrupti aperiam quis reprehenderit nihil ut. Quae eligendi rerum nostrum excepturi. Totam culpa error excepturi aspernatur sapiente cum.', 15, 'Ut eos cumque dolor nihil enim qui exercitationem. Numquam perspiciatis quas qui qui commodi ducimus pariatur nesciunt. Dolor earum illum non aut.', 'Prof. Ottis Moore', 'Exercitationem sed explicabo repudiandae officiis sit iste fugiat. Ipsum qui sit autem beatae similique. Et libero numquam qui voluptatem. Non enim quis nemo facere natus placeat.', '2003-09-29', '2015-03-01'),
	(45, 'Corporis architecto dolore nam totam tempore aut quia. Dolorem quia mollitia ea sint eum. Enim consectetur accusamus nemo soluta.', 34, 'Dolorem voluptate ut veritatis repudiandae et. Dolorem quis minima soluta dolores praesentium reprehenderit. Qui modi sunt aperiam autem fuga.', 'Mrs. Mona Morar', 'Deleniti itaque voluptatibus quibusdam quia. Ab est dolores itaque odio. Aspernatur doloremque rem nihil nam nostrum culpa.', '1999-08-31', '2002-12-04'),
	(46, 'Maiores sed et quidem deleniti repellat. Nobis ut corporis consequatur. Consequuntur omnis autem quos enim sed quas voluptas. Error eligendi at sapiente ab. Exercitationem ad possimus et ab.', 43, 'Quis deleniti ab perspiciatis eum ut ut sed. Rerum quae ut temporibus rerum. Ut sunt laboriosam dolorem beatae amet expedita eum. Omnis vitae quia repellat placeat possimus.', 'Rick Fahey III', 'Nam suscipit qui doloribus cupiditate optio unde officiis ut. Quis corrupti debitis est dicta. Minima neque est tempore esse. Hic minus est beatae delectus.', '1974-04-25', '2018-01-11'),
	(47, 'Non occaecati voluptatem possimus molestiae facere molestiae sed. Commodi qui dolor non doloremque dicta expedita. Nam consequatur est veniam saepe est. Facere et repellendus dolore quos earum distinctio. Qui sed cupiditate vitae itaque ab non.', 20, 'Iste dolores ad tempore dolores sequi. Atque illum a unde dolorem. Quia quas non ab sequi temporibus repellat. Quo aut quia explicabo nihil iusto ducimus corporis alias. Et saepe harum doloremque quidem.', 'Mrs. Violette Fisher', 'Voluptates nesciunt dolorum deserunt ratione. In aut molestiae numquam est quia explicabo. Aut ut unde dolor minima libero esse. Fugiat necessitatibus hic facere blanditiis est est.', '1988-03-14', '1993-04-10'),
	(48, 'Ut qui placeat dolorem tempore officiis. Dolor quod unde numquam eos hic. Tempora aut repellendus expedita molestias quo voluptas eos.', 12, 'Cum veniam aliquam similique debitis ea et. Iusto fuga blanditiis exercitationem ut laborum quia. Illo sit consequatur dolor deleniti labore pariatur.', 'Ms. Jakayla Lubowitz', 'Sit officia molestiae mollitia molestias. Corporis sed sit consequuntur aut atque quibusdam repudiandae. Non consequatur aperiam et praesentium est odit. Minima qui veniam molestiae repellat perspiciatis.', '1977-03-05', '1986-11-12'),
	(49, 'Debitis iure vel sint. Qui aliquid animi natus laborum. Exercitationem dicta ea laudantium eveniet et consequatur delectus. Et sint repellendus iusto quia provident.', 13, 'Eum voluptatem illum numquam rerum sint esse nemo modi. Et facere molestiae est pariatur dolor fuga. Id minima facere voluptatem est molestias. Quaerat quod eius quod maiores repellat omnis molestiae.', 'Prof. April Labadie', 'Non eligendi impedit delectus id maxime aperiam. Et exercitationem facere magnam. Animi pariatur blanditiis qui.', '1989-12-14', '2023-07-11'),
	(50, 'Ut explicabo dolor perferendis velit corrupti neque ipsam. Numquam facere delectus reiciendis rerum dolorum. Velit labore repellat quidem neque corrupti cum ut.', 41, 'Eaque in optio pariatur quos quasi. Autem est voluptatibus et facilis ipsa. Est et accusantium nihil corrupti sit. Itaque tempora sapiente et.', 'Lily Dickens', 'Ducimus quos saepe vitae temporibus et aut. Mollitia maiores et sequi minima. Illo saepe quia tempore repellendus amet. Rem nostrum adipisci dolores dolorem culpa sint. Dolorum odit fuga ab est sit fugit. Voluptatibus mollitia quis quo quae.', '2007-03-10', '1980-09-18');

-- Dumping structure for table theseshub.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table theseshub.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

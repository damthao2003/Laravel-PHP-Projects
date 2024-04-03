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

-- Dumping structure for table baiktra2_mau.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table baiktra2_mau.departments: ~0 rows (approximately)
INSERT INTO `departments` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Bộ phận 0', 'Fugit impedit sequi quasi. Quas qui aperiam harum perferendis.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(2, 'Bộ phận 1', 'Est dignissimos qui minus eaque vero quaerat voluptatem. Dolorum dolore fugit suscipit exercitationem perferendis nihil. Nam dolorem non voluptas hic.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(3, 'Bộ phận 2', 'Impedit fuga dolor at id velit. Quidem incidunt molestias eum. Totam voluptas ut harum assumenda.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(4, 'Bộ phận 3', 'Nulla aut aut omnis iusto. Voluptas fugiat voluptatem eum.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(5, 'Bộ phận 4', 'Quo molestias beatae quia ab ipsa similique provident. Eaque itaque eius voluptatum rerum corrupti saepe.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(6, 'Bộ phận 5', 'Aut cumque deleniti saepe quas repellendus alias ipsa. Sit cupiditate esse ut dolorem harum non dignissimos.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(7, 'Bộ phận 6', 'Eos repellat cumque nulla harum. Qui labore ratione unde recusandae minus omnis. Expedita beatae molestias earum quibusdam.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(8, 'Bộ phận 7', 'Animi iste laboriosam alias reprehenderit dolorem. Consequatur voluptatem est inventore quo aspernatur non ipsam. Nihil ex aut qui tempora labore.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(9, 'Bộ phận 8', 'Dolores minima ad ad. Quas consectetur aut cum veritatis ut voluptatibus voluptatem in.', '2024-04-02 12:24:35', '2024-04-02 12:24:35'),
	(10, 'Bộ phận 9', 'Molestias ut quas itaque. Nulla suscipit ipsum tempore quaerat rerum quae.', '2024-04-02 12:24:35', '2024-04-02 12:24:35');

-- Dumping structure for table baiktra2_mau.failed_jobs
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

-- Dumping data for table baiktra2_mau.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table baiktra2_mau.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table baiktra2_mau.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_04_02_182414_create_departments_table', 1),
	(6, '2024_04_02_191552_create_people_table', 1);

-- Dumping structure for table baiktra2_mau.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table baiktra2_mau.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table baiktra2_mau.people
CREATE TABLE IF NOT EXISTS `people` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_department_id_foreign` (`department_id`),
  CONSTRAINT `people_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table baiktra2_mau.people: ~50 rows (approximately)
INSERT INTO `people` (`id`, `name`, `email`, `phone`, `title`, `department_id`, `created_at`, `updated_at`) VALUES
	(4, 'Ms. Eva Kshlerin PhD', 'zoconner@yahoo.com', '0393789245', 'Chemistry Teacher', 7, '2024-04-02 12:24:39', '2024-04-02 20:04:05'),
	(5, 'Wendell Roberts', 'mbosco@gleason.org', '757.229.5810', 'Radiologic Technologist and Technician', 6, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(6, 'Elvie Reichert Sr.', 'edyth.bayer@skiles.net', '618.982.5175', 'Technical Program Manager', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(8, 'Danyka Zboncak III', 'katelin.steuber@yahoo.com', '(775) 242-9259', 'Fence Erector', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(9, 'Prof. Moshe Hauck', 'lorine83@gmail.com', '+1 (815) 695-7370', 'Metal Pourer and Caster', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(10, 'Mr. Abe Langworth DVM', 'wintheiser.anya@emard.com', '1-626-934-9058', 'Structural Iron and Steel Worker', 7, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(11, 'Thaddeus Murray', 'gleichner.maritza@gmail.com', '(248) 660-5953', 'License Clerk', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(12, 'Yessenia Smitham', 'darrick.durgan@nader.biz', '743.881.2979', 'Log Grader and Scaler', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(13, 'Alene Mueller', 'darron34@schulist.net', '1-984-320-8218', 'Network Systems Analyst', 6, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(14, 'Cleveland Kreiger', 'brad32@yahoo.com', '(402) 433-1367', 'Umpire and Referee', 5, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(15, 'Halie West', 'theodore.huels@gmail.com', '(223) 807-8964', 'Fast Food Cook', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(16, 'Chance Mueller', 'ericka34@tromp.net', '+1-773-299-4983', 'Claims Taker', 6, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(17, 'Prof. Howard Hane III', 'mgoodwin@yahoo.com', '989.237.7742', 'Electrical and Electronic Inspector and Tester', 8, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(18, 'Mr. Carey Parker', 'kjacobs@douglas.com', '+1-254-526-3194', 'Nuclear Power Reactor Operator', 5, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(19, 'Rosella Collier', 'nkeebler@kuvalis.com', '814.424.6103', 'Dental Assistant', 1, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(20, 'Kyler Feeney I', 'rgrimes@yahoo.com', '442.358.1366', 'Patternmaker', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(21, 'Theresa Leuschke', 'gabe73@gutmann.com', '541.691.3688', 'Travel Agent', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(22, 'Mrs. Christine Crist', 'treutel.jaylen@hotmail.com', '1-934-496-6757', 'Engine Assembler', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(23, 'Danielle Macejkovic MD', 'ejerde@yahoo.com', '520-891-4487', 'Craft Artist', 2, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(24, 'Dr. Donald Cremin', 'amina78@block.info', '+16128667838', 'Purchasing Agent', 2, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(25, 'Yolanda Prosacco II', 'sunny90@hotmail.com', '1-283-205-8821', 'Retail Salesperson', 2, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(26, 'Joy Parker', 'nannie.funk@yahoo.com', '385-225-7206', 'Tailor', 7, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(27, 'Elian Hills DVM', 'reuben99@orn.biz', '770.963.2058', 'Medical Laboratory Technologist', 5, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(28, 'Katarina Schumm', 'imclaughlin@murphy.org', '680-218-8249', 'Nuclear Equipment Operation Technician', 5, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(29, 'Prof. Carrie Rosenbaum I', 'danial.hyatt@hotmail.com', '1-435-274-5005', 'Surgeon', 7, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(30, 'Keara Cremin', 'keeling.glen@tromp.info', '828-406-9990', 'Infantry', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(31, 'Prof. Mikayla Gusikowski', 'padberg.irwin@hotmail.com', '770-294-1082', 'Electrician', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(32, 'Misael Reichert', 'walker84@ondricka.com', '1-980-268-8212', 'Market Research Analyst', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(33, 'Roger Ratke', 'bode.elmo@yahoo.com', '1-640-557-8409', 'Textile Cutting Machine Operator', 2, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(34, 'Dr. Ewell Schroeder Jr.', 'schneider.crystal@gmail.com', '+1 (978) 337-9907', 'Database Administrator', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(35, 'Reymundo Grady', 'claud.hahn@ward.net', '(785) 510-4488', 'Precious Stone Worker', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(36, 'Giovani Kub', 'olindgren@quitzon.biz', '1-985-589-7662', 'Explosives Expert', 1, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(37, 'Solon Schneider', 'pharvey@hotmail.com', '1-854-996-5835', 'Network Systems Analyst', 5, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(38, 'Dorris Frami', 'benton26@dicki.com', '(985) 887-4467', 'City', 2, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(39, 'Willy Thompson MD', 'lonnie.brown@west.com', '+1-260-753-7097', 'Electric Meter Installer', 8, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(40, 'Prof. Dedric Cruickshank I', 'wheidenreich@renner.com', '+1-501-606-3768', 'Data Entry Operator', 5, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(41, 'Diego Grady', 'whamill@ortiz.com', '+17278448975', 'Bellhop', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(42, 'Mona Batz', 'fadel.brooks@bechtelar.com', '+1.559.796.3299', 'Etcher', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(43, 'Grace Crooks DDS', 'delta.keeling@dare.biz', '785.713.6004', 'Nursery Manager', 2, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(44, 'Trycia Heller', 'willms.brendon@ebert.com', '+13463223414', 'Stonemason', 2, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(45, 'Alfreda Abbott', 'alford59@quigley.org', '(928) 518-0113', 'Funeral Attendant', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(46, 'Rosamond Douglas', 'miller.ardith@yahoo.com', '1-269-875-4677', 'Metal Pourer and Caster', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(47, 'Rachelle Dare', 'bartell.courtney@yahoo.com', '1-302-549-1195', 'Avionics Technician', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(48, 'Neva Oberbrunner', 'zboncak.nicolette@gmail.com', '+12485357486', 'Cartographer', 4, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(49, 'Nolan Langworth V', 'howard.batz@goldner.com', '+1.559.420.2069', 'Cultural Studies Teacher', 3, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(50, 'Talon Schultz', 'iwindler@bashirian.com', '210.751.2291', 'Machine Operator', 7, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(51, 'Dr. Keanu Howell V', 'hoppe.elwyn@gmail.com', '+17243788882', 'Meter Mechanic', 7, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(52, 'Xavier Wilderman', 'jabari.trantow@smith.com', '+1-425-262-3488', 'Physical Therapist Aide', 6, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(53, 'Allison Ward DVM', 'mcole@yahoo.com', '1-252-425-9753', 'Precision Pattern and Die Caster', 8, '2024-04-02 12:24:39', '2024-04-02 12:24:39'),
	(54, 'Đàm Phương Thảo', 'thaolinhvu4@gmail.com', '0393789262', 'tttt', 1, '2024-04-02 20:03:09', '2024-04-02 20:03:09'),
	(55, 'Đàm Vũ', 'vu@gmail.com', '0987654322', 'uuuu', 6, '2024-04-02 20:03:52', '2024-04-02 20:03:52');

-- Dumping structure for table baiktra2_mau.personal_access_tokens
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

-- Dumping data for table baiktra2_mau.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table baiktra2_mau.users
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

-- Dumping data for table baiktra2_mau.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

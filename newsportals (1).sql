-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2022 at 05:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportals`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cname`, `created_at`, `updated_at`) VALUES
(2, 'Sports', '2021-12-22 06:12:47', '2021-12-22 06:12:47'),
(4, 'International', '2021-12-30 02:37:54', '2021-12-30 02:37:54'),
(5, 'Health', '2021-12-30 02:38:07', '2021-12-30 02:38:07'),
(6, 'Politics', '2021-12-30 02:38:29', '2021-12-30 02:38:29'),
(7, 'Movies', '2021-12-30 02:38:50', '2021-12-30 02:38:50'),
(8, 'Economics', '2021-12-31 09:29:10', '2021-12-31 09:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_09_15_132751_create_sessions_table', 1),
(10, '2021_10_21_230651_users', 2),
(11, '2021_10_23_055728_create_table_reporters', 2),
(12, '2021_10_23_060805_users', 3),
(13, '2021_10_23_062944_reporters', 4),
(14, '2021_10_23_063301_users', 5),
(15, '2021_10_23_063329_reporters', 5),
(16, '2021_10_26_063153_create_reporters_table', 6),
(17, '2021_10_27_073743_create_news_table', 7),
(18, '2021_10_27_075347_create_categories_table', 7),
(20, '2021_10_28_045716_add_details_to_news_table', 8),
(21, '2021_10_30_151335_categories', 9),
(22, '2021_10_30_151743_create_categories_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reporter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `reporter`, `category`, `img_path`, `description`, `created_at`, `updated_at`) VALUES
(19, 'Petrol Price Hike', 'Rishi Dhamala', 'Economics', '1641054583.jpg', 'The petroleum crisis has become an annual ritual. International prices of petroleum products rise, petroleum import bills rise, oil funds come under pressure, and the government delays for some time. Then there is the inevitable rise in the price of petrol, diesel, kerosene, and cooking gas and aviation fuel. Recently, the Nepal Oil Corporation (NOC) has increased the price of petroleum products in less than two weeks as the price of petroleum in the international market has increased. The corporation has also increased the price of petrol, diesel, kerosene, aviation fuel etc. as well as LP gas. In Nepal, the corporation has increased the price of petrol, diesel and kerosene by Rs 3 per liter and gas by Rs 75 per cylinder.\r\n\r\nAlong with this, petrol price in Kathmandu Valley has reached Rs 136 per liter, diesel and kerosene Rs 119 per liter and LP gas cylinder used for cooking Rs 1575. Similarly, the price of domestic aviation fuel has also been increased by Rs 5 per liter. According to the increased price, the price of aviation fuel has now reached Rs 101.', '2021-12-22 05:34:37', '2022-01-01 10:46:42'),
(20, 'Team Usa Wins Olympics Basketballs', 'Pranil Shakya', 'Sports', '1641054592.jpg', 'There have been more dominant, more talented and more celebrated Team USA squads than the group that came together for the Tokyo Olympics. But no national team has ever overcome as much adversity to win.\r\n\r\nThat will be the lasting memory of this group, and it will be a good one for American basketball as the U.S. men\'s team finished with a gold medal after a 87-82 win over France on Saturday. The record books will show it was the fourth consecutive gold for Team USA, but it was hardly routine.\r\n\r\nAs the Americans celebrated after the final buzzer, wrapping themselves in flags and one another in hugs, it wasn\'t just because they\'d won the biggest prize but because they knew what led up to it.\r\n\r\nEDITOR\'S PICKS\r\n\r\nTeam USA\'s fourth straight Olympic men\'s basketball gold medal has social media buzzing\r\n147dBrianna Williams\r\n\r\nDamian Lillard\'s golden summer deserves a closer look\r\n147dJames Jackson\r\n\r\nMills\' 42 leads Aussies to 1st men\'s hoops medal\r\n147d\r\nNo one had more perspective on it than Kevin Durant, who added a glorious chapter to his Olympic career by scoring 29 points to finish off a brilliant tournament. This was his third gold to go with two NBA titles. A few hours before the game, he agreed to a new $198 million contract with the Brooklyn Nets.', '2021-12-22 06:15:02', '2022-01-01 10:44:52'),
(21, 'Nepal has banned its nationals from working in Afghanistan, Iraq, Libya and Syria', 'Rishi Dhamala', 'Economics', '1640852370.jpg', 'Nepal has banned its nationals from working in Afghanistan, Iraq, Libya and Syria after 13 Nepali security guards were killed by a Taliban suicide bomber in the Afghan capital earlier this week, Labour Minister Deepak Bohara said on Friday (June 24).\r\n\r\nThe decision comes after a parliamentary panel ordered Prime Minister K.P. Oli’s government to crack down on traffickers who send thousands of migrants each year to conflict-torn countries where they can often face danger or exploitation.\r\n\r\n“Our decision is prompted by the security situation in those countries,” Bohara told Thomson Reuters Foundation. “If our nationals already working in those countries want to return home, the government will make arrangements for that.”\r\n\r\nNepal is one of the world’s poorest countries.\r\n\r\nPolitical instability since a decade-long civil conflict ended in 2006 has discouraged investment, stunted growth and curtailed job creation – forcing hundreds of thousands of Nepalis to migrate overseas in search of work.\r\n\r\nTo make matters worse, the Himalayan nation is still recovering from twin quakes in April and May last year which killed more than 8,800 people and left two million homeless.', '2021-12-30 02:34:30', '2021-12-30 02:34:30'),
(22, '‘Spider-Man: No Way Home’ Swings Into $44 Million Overseas', 'Pranil Shakya', 'Movies', '1640852934.jpg', 'It will come at the surprise of absolutely no one, but Spider-Man: No Way Home - the long-awaited threequel in Tom Holland\'s MCU Spidey trilogy, featuring a returning ensemble of all-star baddies - is absolutely tearing it up overseas. While it\'s yet to hit the domestic market, swinging into theaters tomorrow, it debuted in some markets as early as Wednesday, giving Sony a lot of reasons to be cheerful ahead of the holiday season. It\'s even racking up huge numbers in territories currently ravaged by the Omicron Covid-19 variant, where theaters are yet to be impacted by any legal restrictions.', '2021-12-30 02:43:54', '2021-12-30 02:43:54'),
(23, 'Nepali women\'s volleyball team returns home as victor', 'Bijen Maharjan', 'Sports', '1640853440.jpg', 'The Nepali women\'s volleyball team, which won the title of AVC Asian Senior Central Zone Women\'s Volleyball Challenge Cup held in Bangladesh, has returned to Kathmandu. The team was given a grand welcome at Tribhuvan International Airport by endearing fans and family members.\r\n\r\nNepal had defended its title by defeating Uzbekistan 3-2 in a thrilling set in the final match played on Tuesday in Dhaka, Bangladesh.\r\n\r\nA cabinet meeting held yesterday decided to give Rs 500,000 each to the 12 title winners, Rs 300,000 each to 2 coaches, and Rs 200,000 to an official.\r\n\r\nEarlier, Nepal had won the title for the first time in 2019 by defeating the Maldives in a straight-set.', '2021-12-30 02:52:20', '2022-01-01 09:42:42'),
(24, 'Man City takes 8 point lead at top of EPL', 'Bijen Maharjan', 'Sports', '1640853605.jpg', 'Manchester City moved eight points clear at the top of the Premier League following their 1-0 win away to Brentford on Wednesday night.\r\n\r\nThe win for Pep Guardiola\'s side, coupled with Brighton\'s 1-1 draw away to Chelsea and Liverpool\'s surprise defeat away to Leicester on Tuesday, gives them a comfortable eight-point cushion going into the New Year.\r\n\r\nPhil Foden\'s 16th-minute goal on his return to the team after apparently being dropped for a disciplinary issue was all that separated the two sides at Brentford\'s Community Stadium.\r\n\r\nFoden scored from close range after the VAR ruled he was onside as he finished Kevin de Bruyne\'s cross from close range, although the VAR ruled out a second goal for Aymeric Laporte for a marginal offside three minutes from time.\r\n\r\nChelsea looked to be on the way to a home win against Brighton when Romelu Lukaku confirmed his return to form with a 26th-minute goal, but that goal brought an impressive reaction from the Seagulls.\r\n\r\nChelsea looked to have weathered the storm when N\'Golo Kante came off the bench midway through the second half, but Danny Welbeck\'s late header from Marc Cucurella\'s cross in the first minute of injury time gave Brighton a deserved point while denying Chelsea two vital points in the title race.\r\n\r\nManchester City could take a huge step towards the title at the weekend as they visit Arsenal, whose coach Mikel Arteta is in isolation for COVID-19, while Chelsea are at home to Liverpool, in a game between their two closest rivals.', '2021-12-30 02:55:05', '2021-12-30 02:55:05'),
(26, 'California Hospitals Are Not Ready for an Omicron Winter', 'Bijen Maharjan', 'International', '1641055241.jpg', 'As frontline health care workers prepare for the next coronavirus wave to hit California, almost everyone involved in the battle agrees on one thing: What happened during the last peak surge was as easy to explain as it was grim.\r\n\r\nCOVID cases overran the state’s health care system, which wasn’t equipped to handle the load. Ambulances circled facilities for hours, looking for a place to safely deliver their patients. Medical staffs frayed, working multiple shifts with no days off. Nurses in particular began leaving the industry, worn out, frustrated and emotionally drained.\r\nThese scenes played out against the backdrop of last January, the virus’s deadliest month in California, when nearly 15,000 people lost their lives to COVID. There were 6,411 deaths in Los Angeles County alone. The surge in cases overwhelmed hospitals’ collective ability to respond.\r\n\r\n“The health care system underwent a stress test with COVID last winter, and we failed,” says Dr. Jeanne Noble, director of COVID response for the emergency department at the University of California, San Francisco, Medical Center. “We failed in many ways.”', '2022-01-01 10:55:41', '2022-01-01 10:56:54'),
(27, 'Nepal reports 241 new Covid-19 cases, two deaths', 'Pranil Shakya', 'Health', '1641055413.jpg', 'As of Tuesday, 4,838,223 PCR and 809,541 antigen tests have been carried out across the country.\r\n\r\nA total of 8,536 PCR tests were performed in the past 24 hours, according to the Health Ministry.\r\n\r\nIn its regular situation report, the ministry did not mention the death toll over the past 24 hours. It, however, reported two Covid-19-related fatalities.\r\n\r\nThe countrywide death toll has now reached 11,588. The number of active cases stands at 4,910.\r\n\r\nAccording to the ministry, 811,265 infected people have recovered from the disease so far; 260 of them in the last 24 hours.\r\n\r\nKathmandu Valley recorded 149 new infections in the past 24 hours. Of these, 112 cases were confirmed in Kathmandu, 29 in Lalitpur and eight in Bhaktapur.\r\n\r\nIn the past 24 hours, 30 new infections were recorded in Province 1, four in Province 2, 169 in Bagmati, 14 in Gandaki, 17 in Lumbini, three in Karnali and four in Sudurpaschim.\r\n\r\nOn Tuesday, 84 individuals infected with the virus were being treated in intensive care units across the country. Another 22—three in Province 1 and 19 in Bagmati—were on ventilator support.\r\n\r\nNepal on Monday reported 251 new coronavirus cases and one death. Similarly, 213 new coronavirus cases and two deaths were recorded on Sunday and 157 new coronavirus cases and one death were reported on Saturday.\r\n\r\nTrack all Covid-19 cases in Nepal here.', '2022-01-01 10:58:33', '2022-01-01 10:58:59'),
(28, 'Dahal asserts a ‘leap forward’ as calls grow for him to mend ways', 'Rishi Dhamala', 'Politics', '1641055519.jpg', 'The Communist Party of Nepal (Maoist Centre) chair conveniently resorted to “a great leap forward”, his old and oft-repeated jargon, to assuage the concerns of the delegates who have come down heavily on him.\r\n\r\nDahal has faced a host of questions from his party delegates surrounding his lifestyle, his way of leading the party and his failure to provide clear direction to the organisation.\r\n\r\n“To make this party a revolutionary force, I am ready to make any kind of sacrifice that is required,” said Dahal on Friday while responding to the delegates.\r\n\r\nThe Maoist party has been holding its eighth general convention in Kathmandu since Sunday.\r\n\r\nDahal also refuted charges that the Maoist party had become a reformist.\r\n\r\n“In our journey, I see a steady progression and a leap forward,” said Dahal.\r\n\r\nDespite criticism, Dahal’s document titled “Nepal’s Road to Socialism in the 21st Century” was endorsed from the convention without any changes.\r\n\r\n“I don’t see that it [the political document] needs a revision,” Dahal told the delegates. “You all [the delegates] will get it after we incorporate all the suggestions. All suggestions will be incorporated.”\r\n\r\nMultiple leaders the Post spoke to said Dahal has provided a vague response, saying that the political document “is not his personal one but a common property of the party”.\r\n\r\n“We are ready to wait and see how Dahal makes attempts to change himself, starting from his promise to leave the Khumaltar house,” said Hemraj Bhandari, a Central Committee member. “There’s no option—either accept what Dahal says or leave the party.”\r\n\r\nDahal’s extravagant lifestyle has often been talked about by party members, who say the party chair has changed into a materialistic person, given his penchant for lavish way of living ever since he came above ground after a peace deal in 2006.\r\n\r\nDahal currently lives in a house at Khumaltar owned by a contractor, who has often courted controversy.\r\n\r\nLeaders say that if the party were to transform, it should start from the top leadership—the chairman.', '2022-01-01 11:00:19', '2022-01-01 11:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rohelshk@gmail.com', '$2y$10$KJs1adl23X/XTLHDBNC4fu1jBpMSSG3ectBDXZJWSCCrfaPLRyGq.', '2021-10-23 00:20:24'),
('nccsbijen@gmail.com', '$2y$10$6XuaS3ruU5uP6tMPr3ypx.HtT2tyIb1k.E1evRQFUedJL6Fv.dOta', '2021-12-23 08:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reporters`
--

CREATE TABLE `reporters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reporters`
--

INSERT INTO `reporters` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(8, 'Rishi Dhamala', 'rishi@yahoo.com', 'Kalanki', '2021-10-28 00:10:51', '2021-10-28 00:10:51'),
(10, 'Bijen Maharjan', 'byan@gmail.com', 'Nardevi', '2021-10-30 08:18:44', '2021-10-30 08:18:44'),
(11, 'Pranil Shakya', 'p@gmail.com', 'Dhalko', '2021-12-22 06:13:16', '2021-12-22 06:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0cQVtj6jnJafNX6VSTXvOHDoTFZneGMxNgUcUw2c', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVTFwemY0TTJiOHk4Ukhha3RIR2hnaDIzM2NnbnlWMnNuRnJyNmtqWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWFkbW9yZS8yMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRIYjZPNWZESkpwRWQ5OU5jNFpIVE4uN3hkVjkvME8vLy92TkJVaUJDQm5ZMHlOLzhwQVZ0QyI7fQ==', 1641055622);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime NOT NULL DEFAULT '2021-08-04 00:00:00',
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'password',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'rahul', 'rahul@gmail.com', '2021-08-04 00:00:00', '$2y$10$Hb6O5fDJJpEd99Nc4ZHTN.7xdV9/0O///vNBUiBCBnY0yN/8pAVtC', 'password', '2021-10-23 00:49:48', '2021-10-23 00:49:48'),
(2, 'bijen', 'nccsbijen@gmail.com', '2021-08-04 00:00:00', '$2y$10$IGVJEe0JzWuY3y8m/Dvml.4NxOE9ArqlgGDMG6yDAuAiU2R3Lx43G', 'password', '2021-10-27 01:47:30', '2021-10-27 01:47:30'),
(3, 'rahul', 'rahul@gmail.com', '2021-08-04 00:00:00', '$2y$10$tmlM1OugXTYBdqL.0YqzOOkj4mwWd44/xq/KspFsMDNeSCgY.3vTG', 'password', '2021-10-30 06:59:08', '2021-10-30 06:59:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reporters`
--
ALTER TABLE `reporters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporters`
--
ALTER TABLE `reporters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2017 at 07:05 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hacku5`
--
CREATE DATABASE IF NOT EXISTS `hacku5` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hacku5`;

-- --------------------------------------------------------

--
-- Table structure for table `cu_domain_category`
--

CREATE TABLE `cu_domain_category` (
  `cid` int(10) NOT NULL,
  `domain_name` varchar(200) DEFAULT NULL,
  `domain_category` varchar(200) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cu_domain_category`
--

INSERT INTO `cu_domain_category` (`cid`, `domain_name`, `domain_category`, `creation_date`) VALUES
(1, 'www.google.com', 'searchenginesandportals', '2017-02-17 02:14:59'),
(2, 'www.facebook.com', 'socialnetworking', '2017-02-17 02:17:41'),
(3, 'www.webshrinker.com', 'informationtech', '2017-02-17 02:18:22'),
(4, 'angel.co', 'jobrelated', '2017-02-17 02:18:22'),
(5, 'www.yahoo.com', 'searchenginesandportals', '2017-02-17 02:19:56'),
(6, 'www.linkedin.com', 'socialnetworking', '2017-02-17 02:19:56'),
(7, 'www.snapchat.com', 'socialnetworking', '2017-02-17 02:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `cu_mode_url`
--

CREATE TABLE `cu_mode_url` (
  `url_id` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `url_title` varchar(100) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cu_user_browsing`
--

CREATE TABLE `cu_user_browsing` (
  `bid` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `cid` int(10) DEFAULT NULL,
  `browsing_time` date DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cu_user_browsing`
--

INSERT INTO `cu_user_browsing` (`bid`, `uid`, `cid`, `browsing_time`, `creation_date`) VALUES
(1, 1, 1, '2017-02-01', '2017-02-17 02:21:33'),
(2, 1, 2, '2017-02-03', '2017-02-17 02:22:45'),
(3, 1, 3, '2017-02-17', '2017-02-17 02:22:45'),
(4, 1, 4, '2017-02-13', '2017-02-17 02:23:06'),
(5, 1, 5, '2017-02-08', '2017-02-17 02:23:06'),
(6, 1, 6, '2017-02-11', '2017-02-17 02:23:46'),
(7, 1, 7, '2017-02-12', '2017-02-17 02:23:46'),
(8, 1, 1, '2017-02-01', '2017-02-17 02:55:02'),
(9, 1, 1, '2017-02-14', '2017-02-17 02:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `cu_user_likes`
--

CREATE TABLE `cu_user_likes` (
  `lid` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `likes` tinyint(1) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cu_user_modes`
--

CREATE TABLE `cu_user_modes` (
  `mid` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `mode_name` varchar(50) DEFAULT NULL,
  `mode_likes` int(5) DEFAULT '0',
  `mode_share` varchar(5) DEFAULT 'F',
  `mode_active` varchar(5) DEFAULT 'T',
  `mode_notes` varchar(500) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cu_user_modes`
--

INSERT INTO `cu_user_modes` (`mid`, `uid`, `mode_name`, `mode_likes`, `mode_share`, `mode_active`, `mode_notes`, `creation_date`) VALUES
(1, 1, 'Home', 0, '0', 'y', 'Test Notes ', '2017-02-17 00:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `fb_id` varchar(100) DEFAULT NULL,
  `fb_name` varchar(60) DEFAULT NULL,
  `user_activity_flag` tinyint(1) DEFAULT NULL,
  `last_login_date` date NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `fb_id`, `fb_name`, `user_activity_flag`, `last_login_date`, `creation_date`, `modified_date`) VALUES
(1, 'A', 'A', 'Raja', 'Chinta', 'rajaharsha.c@gmail.com', 'M', 'M', '', '', '1', 'Raja Harsha', 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_urls`
--

CREATE TABLE `user_urls` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_urls`
--

INSERT INTO `user_urls` (`id`, `uid`, `url`, `host`, `category`, `created_at`) VALUES
(6428, '1', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 13:45:21'),
(6429, '1', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 13:45:22'),
(6430, '1', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 13:45:45'),
(6431, '1', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 13:46:23'),
(6432, '1', 'https://www.youtube.com/', 'www.youtube.com', 'streamingmedia', '2017-02-06 13:48:01'),
(6433, '1', 'https://www.webshrinker.com/contact/', 'www.webshrinker.com', 'informationtech', '2017-02-06 13:52:01'),
(6434, '1', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 13:52:09'),
(6435, '1', 'https://www.google.com/search?q=webshrinker+careers&rlz=1C5CHFA_enUS690US690&oq=webshrinker+careers&aqs=chrome..69i57.5104j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 13:52:14'),
(6436, '1', 'http://zurple.com/about-us/careers/', 'zurple.com', 'business', '2017-02-06 13:52:17'),
(6437, '1', 'https://www.google.com/search?q=webshrinker+careers&rlz=1C5CHFA_enUS690US690&oq=webshrinker+careers&aqs=chrome..69i57.5104j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 13:52:20'),
(6438, '1', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 13:52:32'),
(6439, '1', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 13:52:41'),
(6440, '1', 'https://angel.co/', 'angel.co', 'jobrelated', '2017-02-06 13:52:43'),
(6441, '1', 'https://angel.co/messages', 'angel.co', 'jobrelated', '2017-02-06 13:52:45'),
(6442, '1', 'https://angel.co/messages/talent', 'angel.co', 'jobrelated', '2017-02-06 13:52:47'),
(6443, '1', 'https://angel.co/?ref=nav', 'angel.co', 'jobrelated', '2017-02-06 13:52:54'),
(6444, '1', 'http://ultimateindian.in/shahrukh-khans-raees-sets-new-record/', 'ultimateindian.in', 'newsandmedia', '2017-02-06 13:53:57'),
(6445, '1', 'https://mail.google.com/mail/u/5/', 'mail.google.com', 'chatandmessaging', '2017-02-06 13:54:28'),
(6446, '1', 'https://mail.google.com/mail/u/2/', 'mail.google.com', 'chatandmessaging', '2017-02-06 13:54:28'),
(6447, '1', 'https://mail.google.com/mail/u/3/', 'mail.google.com', 'chatandmessaging', '2017-02-06 13:55:09'),
(6448, '1', 'http://www.theverge.com/2017/2/6/14523268/samurai-jack-season-5-trailer-genndy-tartakovsky', 'www.theverge.com', 'entertainment', '2017-02-06 13:56:40'),
(6449, '1', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 13:56:49'),
(6450, '1', 'https://www.youtube.com/', 'www.youtube.com', 'streamingmedia', '2017-02-06 13:57:37'),
(6451, '1', 'https://www.scoopwhoop.com/underrated-scary-horror-movies/?ref=social&type=fb&b=0', 'www.scoopwhoop.com', 'newsandmedia', '2017-02-06 13:59:10'),
(6452, '1', 'https://www.youtube.com/watch?v=FQ_AB25ue8o&oref=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DFQ_AB25ue8o&has_verified=1', 'www.youtube.com', 'streamingmedia', '2017-02-06 13:59:54'),
(6453, '1', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 14:02:37'),
(6454, '1', 'http://ultimateindian.in/shahrukh-khans-raees-sets-new-record/', 'ultimateindian.in', 'newsandmedia', '2017-02-06 14:02:37'),
(6455, '1', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 16:23:46'),
(6456, '1', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 16:30:15'),
(6457, '1', 'http://www.zipcar.com/', 'www.zipcar.com', 'education', '2017-02-06 16:30:16'),
(6458, '1', 'https://members.zipcar.com/register/', 'members.zipcar.com', 'education', '2017-02-06 16:30:32'),
(6459, '1', 'https://members.zipcar.com/reservations/reserve', 'members.zipcar.com', 'education', '2017-02-06 16:30:44'),
(6460, '1', 'https://members.zipcar.com/odu/reservations/reservation?reservation_id=2215639762&newres=t', 'members.zipcar.com', 'education', '2017-02-06 16:31:24'),
(6461, '1', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 19:40:11'),
(6462, '1', 'http://www.zipcar.com/?redirect_p=0', 'www.zipcar.com', 'education', '2017-02-06 19:40:48'),
(6463, '1', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:40:49'),
(6464, '1', 'https://www.youtube.com/user/adblitz', 'www.youtube.com', 'streamingmedia', '2017-02-06 19:41:27'),
(6465, '1', 'https://www.youtube.com/watch?v=2fA1FdxNqiE', 'www.youtube.com', 'streamingmedia', '2017-02-06 19:41:27'),
(6466, '1', 'https://www.youtube.com/channel/UCJjC1hn78yZqTf0vdTC6wAQ', 'www.youtube.com', 'streamingmedia', '2017-02-06 19:42:24'),
(6467, '1', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:42:52'),
(6468, '1', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:42:57'),
(6469, '1', 'https://angel.co/', 'angel.co', 'jobrelated', '2017-02-06 19:43:04'),
(6470, '1', 'https://angel.co/messages', 'angel.co', 'jobrelated', '2017-02-06 19:43:08'),
(6471, '1', 'https://angel.co/messages/talent', 'angel.co', 'jobrelated', '2017-02-06 19:43:10'),
(6472, '1', 'https://angel.co/messages/735653?inbox=talent', 'angel.co', 'jobrelated', '2017-02-06 19:43:17'),
(6473, '1', 'https://angel.co/messages/talent', 'angel.co', 'jobrelated', '2017-02-06 19:43:20'),
(6474, '1', 'https://angel.co/messages/733692?inbox=talent', 'angel.co', 'jobrelated', '2017-02-06 19:43:26'),
(6475, '1', 'https://angel.co/?ref=nav', 'angel.co', 'jobrelated', '2017-02-06 19:43:32'),
(6476, '1', 'https://www.google.com/search?q=adp&rlz=1C5CHFA_enUS690US690&oq=adp&aqs=chrome..69i57j0l5.910j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:43:44'),
(6477, '1', 'https://www.adp.com/', 'www.adp.com', 'business', '2017-02-06 19:43:47'),
(6478, '1', 'https://www.google.com/url?sa=f&rct=j&url=http://norfolkjobs.adp.com/&q=&esrc=s&ei=QhiZWPbnIsvajwOLqYboDQ&usg=AFQjCNGrd2r-UJXEMmNNSpN0Xq0_LLkQQg', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:43:49'),
(6479, '1', 'http://norfolkjobs.adp.com/', 'norfolkjobs.adp.com', 'uncategorized', '2017-02-06 19:43:53'),
(6480, '1', 'http://norfolkjobs.adp.com/job-search-results/', 'norfolkjobs.adp.com', 'business', '2017-02-06 19:44:05'),
(6481, '1', 'http://norfolkjobs.adp.com/job/7130773/assoc-application-developer-norfolk-va/', 'norfolkjobs.adp.com', 'business', '2017-02-06 19:44:46'),
(6482, '1', 'http://norfolkjobs.adp.com/job-search-results/?category[]=Technology&sort=open_date&dir=descending', 'norfolkjobs.adp.com', 'business', '2017-02-06 19:44:57'),
(6483, '1', 'http://norfolkjobs.adp.com/job/7118916/associate-application-developer-norfolk-va/', 'norfolkjobs.adp.com', 'business', '2017-02-06 19:45:28'),
(6484, '1', 'http://norfolkjobs.adp.com/job-search-results/?category[]=Technology&pg=2&sort=open_date&dir=descending', 'norfolkjobs.adp.com', 'business', '2017-02-06 19:45:30'),
(6485, '1', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:46:25'),
(6486, '1', 'https://www.webshrinker.com/contact/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:46:53'),
(6487, '1', 'https://www.webshrinker.com/contact/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:47:17'),
(6488, '1', 'https://www.webshrinker.com/blog/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:47:19'),
(6489, '1', 'https://www.webshrinker.com/author/adam/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:47:30'),
(6490, '1', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:47:58'),
(6491, '1', 'https://www.google.com/search?q=webshrinker.com+jobs&rlz=1C5CHFA_enUS690US690&oq=webshrinker.com+jobs&aqs=chrome..69i57.4678j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:48:03'),
(6492, '1', 'https://www.linkedin.com/company/web-shrinker-llc', 'www.linkedin.com', 'socialnetworking', '2017-02-06 19:48:09'),
(6493, '1', 'https://www.linkedin.com/profile/view?id=ABoAAAoL09gB3YCd-0z6iMr5f-e2iRjfzq8c8F0&trk=extra_biz_connect_hb_upphoto', 'www.linkedin.com', 'socialnetworking', '2017-02-06 19:48:29'),
(6494, '2', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:49:28'),
(6495, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:49:51'),
(6496, '2', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 19:49:59'),
(6497, '2', 'https://github.com/webshrinker', 'github.com', 'informationtech', '2017-02-06 19:50:03'),
(6498, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=web+shrinker', 'www.google.com', 'searchenginesandportals', '2017-02-06 19:50:10'),
(6499, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 21:09:24'),
(6500, '2', 'https://www.cs.princeton.edu/~wayne/kleinberg-tardos/pdf/05DivideAndConquerII.pdf', 'www.cs.princeton.edu', 'education', '2017-02-06 21:09:58'),
(6501, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:22:44'),
(6502, '2', 'http://iiit123.github.io/react-datatables-bootstrap/', 'iiit123.github.io', 'uncategorized', '2017-02-06 22:22:46'),
(6503, '2', 'https://github.com/iiit123/react-datatables-bootstrap', 'github.com', 'informationtech', '2017-02-06 22:22:51'),
(6504, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:23:15'),
(6505, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:23:17'),
(6506, '2', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:23:20'),
(6507, '2', 'https://www.google.com/url?sa=f&rct=j&url=https://fabfitfun.com/&q=&esrc=s&ei=pj2ZWKXiM8mU0gKViYrwCQ&usg=AFQjCNF_wEzzoZoJIXHyCwVLcABBrbUWPA', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:23:26'),
(6508, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:23:26'),
(6509, '2', 'https://fabfitfun.com/welcome/', 'fabfitfun.com', 'shopping', '2017-02-06 22:23:27'),
(6510, '2', 'https://fabfitfun.com/welcome/', 'fabfitfun.com', 'shopping', '2017-02-06 22:23:28'),
(6511, '2', 'https://fabfitfun.com/get-the-box/?step=getbox', 'fabfitfun.com', 'shopping', '2017-02-06 22:23:35'),
(6512, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:23:58'),
(6513, '2', 'https://mail.google.com/mail/u/0/', 'mail.google.com', 'chatandmessaging', '2017-02-06 22:24:03'),
(6514, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:24:25'),
(6515, '2', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:24:28'),
(6516, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:25:21'),
(6517, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:25:21'),
(6518, '2', 'https://www.facebook.com/videocall/incall/?peer_id=100001800468675&call_id=4125223891&is_caller=true&audio_only=true&nonce=f227279b5753d28', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:26:03'),
(6519, '2', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:28:17'),
(6520, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:29:40'),
(6521, '2', 'https://facebook.github.io/react/docs/animation.html', 'facebook.github.io', 'education', '2017-02-06 22:29:45'),
(6522, '2', 'https://github.com/iiit123/react-datatables-bootstrap/tree/master/css', 'github.com', 'informationtech', '2017-02-06 22:30:52'),
(6523, '2', 'https://github.com/iiit123/react-datatables-bootstrap', 'github.com', 'informationtech', '2017-02-06 22:30:52'),
(6524, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:35:06'),
(6525, '2', 'https://github.com/', 'github.com', 'informationtech', '2017-02-06 22:35:08'),
(6526, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:35:20'),
(6527, '2', 'https://facebook.github.io/react/docs/animation.html', 'facebook.github.io', 'education', '2017-02-06 22:35:43'),
(6528, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=react+animation', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:35:50'),
(6529, '2', 'https://www.youtube.com/watch?v=npvQX53YuCs', 'www.youtube.com', 'streamingmedia', '2017-02-06 22:36:06'),
(6530, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=react+animation&tbm=vid', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:36:30'),
(6531, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:37:05'),
(6532, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:37:05'),
(6533, '2', 'https://facebook.github.io/react/docs/animation.html', 'facebook.github.io', 'education', '2017-02-06 22:37:07'),
(6534, '2', 'https://www.youtube.com/', 'www.youtube.com', 'streamingmedia', '2017-02-06 22:39:53'),
(6535, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:41:23'),
(6536, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:41:25'),
(6537, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:42:00'),
(6538, '2', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:42:30'),
(6539, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:44:36'),
(6540, '2', 'https://www.commut.co/', 'www.commut.co', 'business', '2017-02-06 22:44:36'),
(6541, '2', 'http://www.thehindu.com/news/cities/Hyderabad/now-an-app-for-public-transport-problems/article7982523.ece', 'www.thehindu.com', 'newsandmedia', '2017-02-06 22:44:44'),
(6542, '2', 'http://epaper.namasthetelangaana.com/c/12848177', 'epaper.namasthetelangaana.com', 'uncategorized', '2017-02-06 22:44:51'),
(6543, '2', 'https://www.youtube.com/watch?v=SXHds63J-UY', 'www.youtube.com', 'streamingmedia', '2017-02-06 22:44:58'),
(6544, '2', 'http://chaibisket.com/commut-hyderabad-startup/', 'chaibisket.com', 'entertainment', '2017-02-06 22:45:04'),
(6545, '2', 'https://yourstory.com/2016/02/commut/', 'yourstory.com', 'education', '2017-02-06 22:45:17'),
(6546, '2', 'https://yourstory.com/2016/02/commut/', 'yourstory.com', 'education', '2017-02-06 22:45:21'),
(6547, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:45:59'),
(6548, '2', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:46:00'),
(6549, '2', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:46:19'),
(6550, '2', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:46:19'),
(6551, '3', 'https://www.bigbinary.com/', 'www.bigbinary.com', 'education', '2017-02-06 22:46:20'),
(6552, '3', 'https://www.bigbinary.com/', 'www.bigbinary.com', 'education', '2017-02-06 22:47:39'),
(6553, '3', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:48:56'),
(6554, '3', 'https://facebook.github.io/react-native/', 'facebook.github.io', 'education', '2017-02-06 22:49:01'),
(6555, '3', 'https://facebook.github.io/react-native/', 'facebook.github.io', 'education', '2017-02-06 22:49:04'),
(6556, '3', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:49:42'),
(6557, '3', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:49:43'),
(6558, '3', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:49:53'),
(6559, '3', 'https://www.google.com/search?q=We+love+Open+Source&rlz=1C5CHFA_enUS690US690&oq=We+love+Open+Source&aqs=chrome..69i57.2783j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:50:12'),
(6560, '3', 'https://www.google.com/search?q=We+love+Open+Source&rlz=1C5CHFA_enUS690US690&oq=We+love+Open+Source&aqs=chrome..69i57j0.439j0j9&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:50:15'),
(6561, '3', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:50:20'),
(6562, '3', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:50:23'),
(6563, '3', 'https://www.google.com/search?q=We+love+Open+Source&rlz=1C5CHFA_enUS690US690&oq=We+love+Open+Source&aqs=chrome..69i57j0.823j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:50:26'),
(6564, '3', 'https://www.google.com/search?q=We+love+Open+Source&rlz=1C5CHFA_enUS690US690&oq=We+love+Open+Source&aqs=chrome..69i57j0.534j0j9&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:50:48'),
(6565, '3', 'https://www.google.com/search?q=We+love+Open+Source&rlz=1C5CHFA_enUS690US690&oq=We+love+Open+Source&aqs=chrome..69i57j0.430j0j9&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:50:51'),
(6566, '3', 'https://www.google.com/search?q=We+love+Open+Source&rlz=1C5CHFA_enUS690US690&oq=We+love+Open+Source&aqs=chrome..69i57j0.454j0j9&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:51:06'),
(6567, '3', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:51:22'),
(6568, '3', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 22:51:28'),
(6569, '3', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:51:31'),
(6570, '3', 'https://www.bigbinary.com/videos', 'www.bigbinary.com', 'education', '2017-02-06 22:56:20'),
(6571, '3', 'https://www.bigbinary.com/', 'www.bigbinary.com', 'education', '2017-02-06 22:56:20'),
(6572, '3', 'https://www.bigbinary.com/clients', 'www.bigbinary.com', 'education', '2017-02-06 22:56:43'),
(6573, '3', 'https://www.bigbinary.com/clients', 'www.bigbinary.com', 'education', '2017-02-06 22:56:44'),
(6574, '3', 'https://www.bigbinary.com/', 'www.bigbinary.com', 'education', '2017-02-06 22:57:08'),
(6575, '3', 'http://how-we-work.bigbinary.com/', 'how-we-work.bigbinary.com', 'uncategorized', '2017-02-06 22:58:04'),
(6576, '3', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:58:46'),
(6577, '3', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 22:58:50'),
(6578, '3', 'https://www.google.com/search?q=es8&rlz=1C5CHFA_enUS690US690&oq=es8&aqs=chrome..69i57j0l5.1241j0j7&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:00:18'),
(6579, '3', 'https://www.quora.com/What-features-will-be-in-ES7-and-ES8', 'www.quora.com', 'messageboardsandforums', '2017-02-06 23:00:26'),
(6580, '3', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 23:01:29'),
(6581, '3', 'https://www.facebook.com/?ref=tn_tnmn', 'www.facebook.com', 'socialnetworking', '2017-02-06 23:01:32'),
(6582, '3', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:01:53'),
(6583, '3', 'https://mail.google.com/mail/u/0/', 'mail.google.com', 'chatandmessaging', '2017-02-06 23:02:00'),
(6584, '3', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 23:02:17'),
(6585, '3', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:02:17'),
(6586, '3', 'https://www.glassdoor.com/Reviews/FabFitFun-Reviews-E655209.htm', 'www.glassdoor.com', 'jobrelated', '2017-02-06 23:02:24'),
(6587, '3', 'https://www.glassdoor.com/Interview/FabFitFun-Interview-Questions-E655209.htm', 'www.glassdoor.com', 'jobrelated', '2017-02-06 23:02:29'),
(6588, '3', 'https://www.glassdoor.com/Interview/FabFitFun-Interview-Questions-E655209.htm?filter.jobTitleExact=Developer%2FSoftware+Engineer', 'www.glassdoor.com', 'jobrelated', '2017-02-06 23:02:43'),
(6589, '3', 'https://www.glassdoor.com/Interview/Some-Javascript-quirks-QTN_1421171.htm', 'www.glassdoor.com', 'jobrelated', '2017-02-06 23:03:14'),
(6590, '3', 'https://www.google.com/search?q=Javascript+quirks&rlz=1C5CHFA_enUS690US690&oq=Javascript+quirks&aqs=chrome..69i57j0l5.567j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:03:32'),
(6591, '3', 'http://developer.telerik.com/featured/seven-javascript-quirks-i-wish-id-known-about/', 'developer.telerik.com', 'informationtech', '2017-02-06 23:03:35'),
(6592, '3', 'https://www.youtube.com/', 'www.youtube.com', 'streamingmedia', '2017-02-06 23:07:33'),
(6593, '3', 'https://www.glassdoor.com/Salary/FabFitFun-Salaries-E655209.htm', 'www.glassdoor.com', 'jobrelated', '2017-02-06 23:07:37'),
(6594, '3', 'https://www.glassdoor.com/Reviews/FabFitFun-Reviews-E655209.htm', 'www.glassdoor.com', 'jobrelated', '2017-02-06 23:08:23'),
(6595, '3', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:22:13'),
(6596, '3', 'https://www.webshrinker.com/', 'www.webshrinker.com', 'informationtech', '2017-02-06 23:22:21'),
(6597, '3', 'https://www.udemy.com/the-complete-guide-to-angular-2/', 'www.udemy.com', 'education', '2017-02-06 23:23:54'),
(6598, '3', 'https://www.udemy.com/the-complete-javascript-developer-mean-stack-zero-to-hero/', 'www.udemy.com', 'education', '2017-02-06 23:24:12'),
(6599, '3', 'https://www.udemy.com/angular-2-and-nodejs-the-practical-guide/', 'www.udemy.com', 'education', '2017-02-06 23:24:56'),
(6600, '3', 'http://www.bradoncode.com/tutorials/learn-mean-stack-tutorial/', 'www.bradoncode.com', 'informationtech', '2017-02-06 23:25:43'),
(6601, '4', 'https://mail.google.com/mail/u/0/', 'mail.google.com', 'chatandmessaging', '2017-02-06 23:32:10'),
(6602, '4', 'https://app.greenhouse.io/tests/1f2bb7ad7a681bf5465c766805d7f5e9', 'app.greenhouse.io', 'uncategorized', '2017-02-06 23:32:44'),
(6603, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:34:45'),
(6604, '4', 'https://www.sitepoint.com/writing-angularjs-apps-using-es6/', 'www.sitepoint.com', 'education', '2017-02-06 23:34:52'),
(6605, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 23:51:47'),
(6606, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:52:23'),
(6607, '4', 'https://fabfitfun.com/get-the-box/?step=getbox&', 'fabfitfun.com', 'shopping', '2017-02-06 23:52:28'),
(6608, '4', 'https://fabfitfun.com/my-account/?login=true', 'fabfitfun.com', 'shopping', '2017-02-06 23:54:41'),
(6609, '4', 'https://fabfitfun.com/jobs/', 'fabfitfun.com', 'shopping', '2017-02-06 23:55:39'),
(6610, '4', 'https://mail.google.com/mail/u/0/', 'mail.google.com', 'chatandmessaging', '2017-02-06 23:56:09'),
(6611, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 23:56:36'),
(6612, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-06 23:56:37'),
(6613, '4', 'https://fabfitfun.com/get-the-box/?step=getbox&', 'fabfitfun.com', 'shopping', '2017-02-06 23:56:37'),
(6614, '4', 'https://fabfitfun.com/jobs/', 'fabfitfun.com', 'shopping', '2017-02-06 23:56:43'),
(6615, '4', 'https://fabfitfun.com/jobpost/526371/?gh_jid=526371', 'fabfitfun.com', 'shopping', '2017-02-06 23:56:56'),
(6616, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-06 23:58:27'),
(6617, '4', 'https://fabfitfun.com/get-the-box/?step=getbox&', 'fabfitfun.com', 'shopping', '2017-02-07 00:00:26'),
(6618, '4', 'https://fabfitfun.com/jobs/', 'fabfitfun.com', 'shopping', '2017-02-07 00:00:56'),
(6619, '4', 'https://fabfitfun.com/jobs/', 'fabfitfun.com', 'shopping', '2017-02-07 00:01:01'),
(6620, '4', 'https://fabfitfun.com/jobpost/526365/?gh_jid=526365', 'fabfitfun.com', 'shopping', '2017-02-07 00:01:10'),
(6621, '4', 'https://fabfitfun.com/jobs/', 'fabfitfun.com', 'shopping', '2017-02-07 00:02:14'),
(6622, '4', 'https://fabfitfun.com/jobs/', 'fabfitfun.com', 'shopping', '2017-02-07 00:02:19'),
(6623, '4', 'https://fabfitfun.com/jobs/', 'fabfitfun.com', 'shopping', '2017-02-07 00:02:27'),
(6624, '4', 'https://www.linkedin.com/', 'www.linkedin.com', 'socialnetworking', '2017-02-07 00:02:50'),
(6625, '4', 'https://www.linkedin.com/vsearch/p/?f_CC=2174958', 'www.linkedin.com', 'socialnetworking', '2017-02-07 00:04:08'),
(6626, '4', 'https://www.linkedin.com/in/danilosapad/', 'www.linkedin.com', 'socialnetworking', '2017-02-07 00:04:56'),
(6627, '4', 'https://www.linkedin.com/in/nikita-jain-3b2b7664/', 'www.linkedin.com', 'socialnetworking', '2017-02-07 00:08:19'),
(6628, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-07 00:10:17'),
(6629, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-07 00:10:18'),
(6630, '4', 'https://fabfitfun.com/get-the-box/?step=getbox&', 'fabfitfun.com', 'shopping', '2017-02-07 00:10:18'),
(6631, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-07 00:10:19'),
(6632, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-07 00:10:20'),
(6633, '4', 'https://fabfitfun.com/get-the-box/?step=getbox&', 'fabfitfun.com', 'shopping', '2017-02-07 00:10:26'),
(6634, '4', 'https://www.facebook.com/FabFitFun/', 'www.facebook.com', 'socialnetworking', '2017-02-07 00:10:30'),
(6635, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=fabfitfun', 'www.google.com', 'searchenginesandportals', '2017-02-07 00:10:43'),
(6636, '4', 'https://www.facebook.com/videocall/incall/?peer_id=100001800468675&call_id=1290889799&is_caller=true&audio_only=true&nonce=fc26afc1f9cdac', 'www.facebook.com', 'socialnetworking', '2017-02-07 07:53:37'),
(6637, '4', 'https://accounts.google.com/AccountDisavow?adt=AOX8kiolojEd8xK3ywJzG6EqALKeDyLNASQYsruQ8M6m2ZO8nW3VGTfx9SQTrmpB2pfSjg', 'accounts.google.com', 'informationtech', '2017-02-07 07:53:59'),
(6638, '4', 'https://accounts.google.com/AccountDisavow', 'accounts.google.com', 'informationtech', '2017-02-07 07:54:05'),
(6639, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-07 08:02:52'),
(6640, '4', 'https://facebook.github.io/react/docs/react-component.html', 'facebook.github.io', 'education', '2017-02-07 08:02:54'),
(6641, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-07 08:06:47'),
(6642, '4', 'https://facebook.github.io/react/docs/jsx-in-depth.html', 'facebook.github.io', 'education', '2017-02-07 08:06:49'),
(6643, '4', 'https://mail.google.com/mail/u/0/', 'mail.google.com', 'chatandmessaging', '2017-02-07 08:09:18'),
(6644, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-07 08:09:58'),
(6645, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-07 08:09:59'),
(6646, '4', 'https://fabfitfun.com/magazine/how-to-slam-dunk-a-job-interview/', 'fabfitfun.com', 'shopping', '2017-02-07 08:10:27'),
(6647, '4', 'http://axelandash.com/10136/', 'axelandash.com', 'uncategorized', '2017-02-07 08:11:22'),
(6648, '4', 'https://fabfitfun.com/magazine/all-american-road-trip-axel-ash/', 'fabfitfun.com', 'shopping', '2017-02-07 08:11:41'),
(6649, '4', 'http://www.builtinla.com/2015/12/09/how-these-people-found-their-jobs-la-tech', 'www.builtinla.com', 'business', '2017-02-07 08:11:59'),
(6650, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=fabfitfun+interview', 'www.google.com', 'searchenginesandportals', '2017-02-07 08:15:07'),
(6651, '4', 'https://www.youtube.com/results?search_query=react+animations', 'www.youtube.com', 'streamingmedia', '2017-02-07 08:15:10'),
(6652, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-07 08:26:36'),
(6653, '4', 'https://facebook.github.io/react-native/docs/animations.html', 'facebook.github.io', 'education', '2017-02-07 08:26:42'),
(6654, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=react+native+animations', 'www.google.com', 'searchenginesandportals', '2017-02-07 08:26:51'),
(6655, '4', 'https://www.tutorialspoint.com/reactjs/reactjs_animations.htm', 'www.tutorialspoint.com', 'informationtech', '2017-02-07 08:27:06'),
(6656, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=react+animations+tutorial', 'www.google.com', 'searchenginesandportals', '2017-02-07 08:27:16'),
(6657, '4', 'https://egghead.io/playlists/react-react-animation-using-react-motion', 'egghead.io', 'informationtech', '2017-02-07 08:27:24'),
(6658, '4', 'https://egghead.io/lessons/react-react-motion-transitionspring-basics?pl=react-react-animation-using-react-motion', 'egghead.io', 'informationtech', '2017-02-07 08:27:35'),
(6659, '4', 'https://egghead.io/playlists/react-react-animation-using-react-motion', 'egghead.io', 'informationtech', '2017-02-07 08:27:53'),
(6660, '4', 'https://www.youtube.com/', 'www.youtube.com', 'streamingmedia', '2017-02-07 08:28:02'),
(6661, '4', 'https://www.youtube.com/watch?v=6pSzsJH56BA', 'www.youtube.com', 'streamingmedia', '2017-02-15 02:21:44'),
(6662, '4', 'http://osxdaily.com/2014/11/26/start-stop-mysql-commands-mac-os-x/', 'osxdaily.com', 'informationtech', '2017-02-15 02:21:44'),
(6663, '4', 'https://coderwall.com/p/w5kwzw/solved-can-t-connect-to-local-mysql-server-through-socket-tmp-mysql-sock', 'coderwall.com', 'informationtech', '2017-02-15 02:21:44'),
(6664, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-15 02:21:44'),
(6665, '4', 'https://mail.google.com/mail/u/0/#inbox/15a405eafbc2d279', 'mail.google.com', 'chatandmessaging', '2017-02-15 02:21:44'),
(6666, '4', 'http://stackoverflow.com/questions/2412258/chrome-extension-onclick-extension-icon-open-popup-html-in-new-tab', 'stackoverflow.com', 'informationtech', '2017-02-15 02:21:44'),
(6667, '4', 'https://gigster.com/careers', 'gigster.com', 'informationtech', '2017-02-15 02:22:12'),
(6668, '4', 'https://developer.chrome.com/extensions/manifest', 'developer.chrome.com', 'informationtech', '2017-02-15 02:22:12'),
(6669, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-15 02:22:22'),
(6670, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-15 02:22:22'),
(6671, '4', 'https://developer.chrome.com/extensions/bookmarks', 'developer.chrome.com', 'informationtech', '2017-02-15 02:22:43'),
(6672, '4', 'https://www.google.com/', 'www.google.com', 'searchenginesandportals', '2017-02-15 02:23:39'),
(6673, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-15 02:23:39'),
(6674, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-15 02:25:04'),
(6675, '4', 'http://stackoverflow.com/questions/2812622/get-google-chromes-root-bookmarks-folder', 'stackoverflow.com', 'informationtech', '2017-02-15 02:25:11'),
(6676, '4', 'https://developer.chrome.com/extensions/bookmarks', 'developer.chrome.com', 'informationtech', '2017-02-15 02:25:40'),
(6677, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-15 02:25:58'),
(6678, '4', 'https://www.google.com/', 'www.google.com', 'searchenginesandportals', '2017-02-15 02:28:13'),
(6679, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-15 02:28:13'),
(6680, '4', 'http://stackoverflow.com/questions/41782937/align-items-flex-end-react-native/41783153?noredirect=1#comment70756716_41783153', 'stackoverflow.com', 'informationtech', '2017-02-15 02:28:47'),
(6681, '4', 'http://majetisiri.com/', 'majetisiri.com', 'uncategorized', '2017-02-15 02:30:37'),
(6682, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-15 02:32:19'),
(6683, '4', 'https://sarah.tnctrx.com/tr?id=013b687c3ecdb565fa170e16754d335521bd2c40a4.r&tk=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwdWIiOiI1MjJjNjE1YTlhODQ4MGNhYjhiMTA0MTIiLCJ0cyI6IjAyMTUwNzMyIiwiZCI6IndhdHNhcHAuY29tIn0.VWxIXX6rnLL9BIfEjGzpCmveoaouH3Ir54NbiPIaInQ', 'sarah.tnctrx.com', 'uncategorized', '2017-02-15 02:32:20'),
(6684, '4', 'http://cdn.lazymae.com/lp/?btp_h=978388e4745db48c129fc1b926a857a8&appid=4558&clickid=63518697698134116&dladv=mm-mac-installer&lpc=d9ecf37e&lang=auto', 'cdn.lazymae.com', 'business', '2017-02-15 02:32:20'),
(6685, '4', 'https://www.google.com/search?q=whatsapp+web&rlz=1C5CHFA_enUS690US690&oq=watsappwe&aqs=chrome.1.69i57j0l5.7039j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-15 02:32:26'),
(6686, '4', 'https://web.whatsapp.com/%F0%9F%8C%90/en', 'web.whatsapp.com', 'chatandmessaging', '2017-02-15 02:32:28'),
(6687, '4', 'http://localhost:3000/', 'localhost', 'uncategorized', '2017-02-16 14:46:06'),
(6688, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 14:46:06'),
(6689, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 14:46:06'),
(6690, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 14:46:35'),
(6691, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 14:46:48'),
(6692, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 14:46:50'),
(6693, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 14:53:43'),
(6694, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 14:54:31'),
(6695, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 14:55:04'),
(6696, '4', 'http://stackoverflow.com/questions/26347489/react-dev-tools-not-loading-in-chrome-browser', 'stackoverflow.com', 'informationtech', '2017-02-16 14:55:10'),
(6697, '4', 'https://www.google.com/search?q=Allow+access+to+file+URLs&rlz=1C5CHFA_enUS690US690&oq=Allow+access+to+file+URLs&aqs=chrome..69i57j0l5.246j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 14:56:00'),
(6698, '4', 'https://lastpass.com/support.php?cmd=showfaq&id=6026', 'lastpass.com', 'business', '2017-02-16 14:56:06'),
(6699, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 14:59:40'),
(6700, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 14:59:40'),
(6701, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=react+production+not+working+on+client', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:04:36'),
(6702, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:05:47'),
(6703, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:05:47'),
(6704, '4', 'http://michelletilley.net/2014/02/24/creating-chrome-extensions-with-react.html', 'michelletilley.net', 'education', '2017-02-16 15:06:04'),
(6705, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:06:53'),
(6706, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:06:53'),
(6707, '4', 'https://cdnjs.com/libraries/react/', 'cdnjs.com', 'informationtech', '2017-02-16 15:07:00'),
(6708, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:09:42'),
(6709, '4', 'http://blog.triplebyte.com/how-to-pass-a-programming-interview', 'blog.triplebyte.com', 'education', '2017-02-16 15:09:42'),
(6710, '4', 'https://www.google.com/search?q=create+react+app&rlz=1C5CHFA_enUS690US690&oq=create+react+app+&aqs=chrome..69i57j69i60j0j69i60l2j0.7120j0j4&sourceid=chrome&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:09:46'),
(6711, '4', 'https://facebook.github.io/react/blog/2016/07/22/create-apps-with-no-configuration.html', 'facebook.github.io', 'informationtech', '2017-02-16 15:10:03'),
(6712, '4', 'https://www.google.com/search?q=create+react+app&rlz=1C5CHFA_enUS690US690&oq=create+react+app+&aqs=chrome..69i57j69i60j0j69i60l2j0.7120j0j4&sourceid=chrome&ie=UTF-8#q=create+react+app+without+server', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:10:34'),
(6713, '4', 'http://stackoverflow.com/questions/40342100/run-react-application-without-server', 'stackoverflow.com', 'informationtech', '2017-02-16 15:10:35'),
(6714, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:10:53'),
(6715, '4', 'http://blog.goguardian.com/nerds/chrome-extensions-in-react', 'blog.goguardian.com', 'education', '2017-02-16 15:11:09'),
(6716, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=can+we+develop+chrome+extension+in+react', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:11:20'),
(6717, '4', 'https://www.npmjs.com/package/react-chrome-extension-boilerplate', 'www.npmjs.com', 'informationtech', '2017-02-16 15:11:28'),
(6718, '4', 'http://stackoverflow.com/questions/40342100/run-react-application-without-server', 'stackoverflow.com', 'informationtech', '2017-02-16 15:17:17'),
(6719, '4', 'https://www.google.com/search?q=create+react+app&rlz=1C5CHFA_enUS690US690&oq=create+react+app+&aqs=chrome..69i57j69i60j0j69i60l2j0.7120j0j4&sourceid=chrome&ie=UTF-8#q=create+react+app+without+server', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:17:17'),
(6720, '4', 'https://www.google.com/search?q=create+react+app&rlz=1C5CHFA_enUS690US690&oq=create+react+app+&aqs=chrome..69i57j69i60j0j69i60l2j0.7120j0j4&sourceid=chrome&ie=UTF-8#q=create+react+app+without+server', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:17:18'),
(6721, '4', 'https://www.fullstackreact.com/articles/using-create-react-app-with-a-server/', 'www.fullstackreact.com', 'education', '2017-02-16 15:17:24'),
(6722, '4', 'https://www.google.com/search?q=create+react+app&rlz=1C5CHFA_enUS690US690&oq=create+react+app+&aqs=chrome..69i57j69i60j0j69i60l2j0.7120j0j4&sourceid=chrome&ie=UTF-8#q=create+react+app+without+server', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:18:55'),
(6723, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:19:25'),
(6724, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:19:26'),
(6725, '4', 'https://www.npmjs.com/package/react-chrome-extension-boilerplate', 'www.npmjs.com', 'informationtech', '2017-02-16 15:19:48'),
(6726, '4', 'https://github.com/jhen0409/react-chrome-extension-boilerplate', 'github.com', 'informationtech', '2017-02-16 15:19:53'),
(6727, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 15:20:47'),
(6728, '4', 'file:///Users/vamshi/Downloads/samosa-chrome-extension/index.html', '', '', '2017-02-16 15:22:47'),
(6729, '4', 'file:///Users/vamshi/Downloads/samosa-chrome-extension/index.html', '', '', '2017-02-16 15:22:47'),
(6730, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:22:48'),
(6731, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:22:49'),
(6732, '4', 'http://stackoverflow.com/questions/20904098/react-js-example-in-tutorial-not-working', 'stackoverflow.com', 'informationtech', '2017-02-16 15:22:52'),
(6733, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=local+react+file+not+working', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:24:25'),
(6734, '4', 'http://stackoverflow.com/questions/35874907/react-router-does-not-work-on-local-file-system-in-ie-edge', 'stackoverflow.com', 'informationtech', '2017-02-16 15:24:32'),
(6735, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=local+react+file+not+working', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:24:37'),
(6736, '4', 'http://stackoverflow.com/questions/20904098/react-js-example-in-tutorial-not-working', 'stackoverflow.com', 'informationtech', '2017-02-16 15:24:45'),
(6737, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:25:03'),
(6738, '4', 'http://michelletilley.net/2014/02/24/creating-chrome-extensions-with-react.html', 'michelletilley.net', 'education', '2017-02-16 15:25:12'),
(6739, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:27:49'),
(6740, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 15:28:36'),
(6741, '4', 'http://localhost/index.html', 'localhost', 'uncategorized', '2017-02-16 15:28:39'),
(6742, '4', 'http://localhost/dashboard', 'localhost', 'uncategorized', '2017-02-16 15:28:40'),
(6743, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 15:28:43'),
(6744, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:29:22'),
(6745, '4', 'http://stackoverflow.com/', 'stackoverflow.com', 'informationtech', '2017-02-16 15:29:28'),
(6746, '4', 'http://stackoverflow.com/questions/ask', 'stackoverflow.com', 'informationtech', '2017-02-16 15:29:33'),
(6747, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:32:54'),
(6748, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:32:54'),
(6749, '4', 'https://facebook.github.io/react/blog/2016/07/22/create-apps-with-no-configuration.html', 'facebook.github.io', 'informationtech', '2017-02-16 15:33:06'),
(6750, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:37:38'),
(6751, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:38:47'),
(6752, '4', 'http://stackoverflow.com/questions/41782937/align-items-flex-end-react-native/41783153#41783153', 'stackoverflow.com', 'informationtech', '2017-02-16 15:38:52'),
(6753, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 15:39:10'),
(6754, '4', 'http://stackoverflow.com/users/3913312/vamshi-kolanu', 'stackoverflow.com', 'informationtech', '2017-02-16 15:39:20'),
(6755, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:39:21'),
(6756, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 15:40:38'),
(6757, '4', 'http://localhost/index.html', 'localhost', 'uncategorized', '2017-02-16 15:40:39'),
(6758, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 15:40:48'),
(6759, '4', 'http://localhost/dashboard', 'localhost', 'uncategorized', '2017-02-16 15:41:22'),
(6760, '4', 'http://localhost/dashboard', 'localhost', 'uncategorized', '2017-02-16 15:41:26'),
(6761, '4', 'http://localhost/', 'localhost', 'uncategorized', '2017-02-16 15:41:30'),
(6762, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:41:55'),
(6763, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:43:01'),
(6764, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:43:02'),
(6765, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:43:02'),
(6766, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:43:26'),
(6767, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:44:17'),
(6768, '4', 'https://www.facebook.com/', 'www.facebook.com', 'socialnetworking', '2017-02-16 15:44:21'),
(6769, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:44:39'),
(6770, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:45:22'),
(6771, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:45:32'),
(6772, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', 'informationtech', '2017-02-16 15:45:34');
INSERT INTO `user_urls` (`id`, `uid`, `url`, `host`, `category`, `created_at`) VALUES
(6773, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:47:36'),
(6774, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', 'searchenginesandportals', '2017-02-16 15:47:36'),
(6775, '4', 'https://code.jquery.com/', 'code.jquery.com', 'informationtech', '2017-02-16 15:47:37'),
(6776, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=jquery+cdn', 'www.google.com', '', '2017-02-16 15:48:34'),
(6777, '4', 'https://jquery.com/download/', 'jquery.com', '', '2017-02-16 15:48:39'),
(6778, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 15:49:58'),
(6779, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 15:49:58'),
(6780, '4', 'http://www.highcharts.com/', 'www.highcharts.com', '', '2017-02-16 15:50:02'),
(6781, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 15:50:25'),
(6782, '4', 'http://www.highcharts.com/download', 'www.highcharts.com', '', '2017-02-16 15:50:28'),
(6783, '4', 'https://code.highcharts.com/', 'code.highcharts.com', '', '2017-02-16 15:50:47'),
(6784, '4', 'https://code.highcharts.com/4.2.2/highcharts.js', 'code.highcharts.com', '', '2017-02-16 15:50:52'),
(6785, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', '', '2017-02-16 15:52:26'),
(6786, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', '', '2017-02-16 15:55:04'),
(6787, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 15:55:11'),
(6788, '4', 'https://www.npmjs.com/package/react-chrome-extension-boilerplate', 'www.npmjs.com', '', '2017-02-16 15:55:23'),
(6789, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8#q=react+chrome+boilerplate', 'www.google.com', '', '2017-02-16 15:55:24'),
(6790, '4', 'https://www.npmjs.com/package/react-chrome-extension-boilerplate', 'www.npmjs.com', '', '2017-02-16 15:55:30'),
(6791, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 15:58:14'),
(6792, '4', 'http://localhost/phpmyadmin/', 'localhost', '', '2017-02-16 15:58:16'),
(6793, '4', 'http://localhost/phpmyadmin/index.php?token=18f6034264e7d6210830d78bf60a9121', 'localhost', '', '2017-02-16 15:58:20'),
(6794, '4', 'https://www.facebook.com/', 'www.facebook.com', '', '2017-02-16 16:00:01'),
(6795, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', '', '2017-02-16 16:00:10'),
(6796, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 16:00:43'),
(6797, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 16:00:51'),
(6798, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 16:00:53'),
(6799, '4', 'https://www.google.com/_/chrome/newtab?rlz=1C5CHFA_enUS690US690&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 16:01:27'),
(6800, '4', 'https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C5CHFA_enUS690US690&ion=1&espv=2&ie=UTF-8', 'www.google.com', '', '2017-02-16 16:01:28'),
(6801, '4', 'https://www.drinkfeasy.com/', 'www.drinkfeasy.com', '', '2017-02-16 16:01:34'),
(6802, '4', 'http://stackoverflow.com/questions/42284154/react-not-working-in-chrome-extension', 'stackoverflow.com', '', '2017-02-16 16:01:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cu_domain_category`
--
ALTER TABLE `cu_domain_category`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `domain_name_uk` (`domain_name`);

--
-- Indexes for table `cu_mode_url`
--
ALTER TABLE `cu_mode_url`
  ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `cu_user_browsing`
--
ALTER TABLE `cu_user_browsing`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `cu_user_browsing_uid_fk` (`uid`);

--
-- Indexes for table `cu_user_likes`
--
ALTER TABLE `cu_user_likes`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `cu_user_likes_mid_fk` (`mid`),
  ADD KEY `cu_user_likes_uid_fk` (`uid`);

--
-- Indexes for table `cu_user_modes`
--
ALTER TABLE `cu_user_modes`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `cu_user_modes_uid_fk` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_urls`
--
ALTER TABLE `user_urls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cu_domain_category`
--
ALTER TABLE `cu_domain_category`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cu_user_browsing`
--
ALTER TABLE `cu_user_browsing`
  MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cu_user_likes`
--
ALTER TABLE `cu_user_likes`
  MODIFY `lid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cu_user_modes`
--
ALTER TABLE `cu_user_modes`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_urls`
--
ALTER TABLE `user_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6803;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cu_user_browsing`
--
ALTER TABLE `cu_user_browsing`
  ADD CONSTRAINT `cu_user_browsing_uid_fk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `cu_user_likes`
--
ALTER TABLE `cu_user_likes`
  ADD CONSTRAINT `cu_user_likes_mid_fk` FOREIGN KEY (`mid`) REFERENCES `cu_user_modes` (`mid`),
  ADD CONSTRAINT `cu_user_likes_uid_fk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `cu_user_modes`
--
ALTER TABLE `cu_user_modes`
  ADD CONSTRAINT `cu_user_modes_uid_fk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

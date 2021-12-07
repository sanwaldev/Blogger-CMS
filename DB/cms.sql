-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 02:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Javascript'),
(3, 'PHP'),
(19, 'OOP'),
(23, 'Procedural PHP'),
(24, 'C++'),
(25, 'C#');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(6, 9, 'Bilal Shoaib', 'bilalshoaib5497@gmail.com', 'Very nice!', 'approved', '2021-08-13'),
(7, 8, 'Arshad Muneer', 'wpdevs100@gmail.com', 'asdasd', 'approved', '2021-08-13'),
(8, 8, 'Bilal Shoaib', 'bilalshoaib5497@gmail.com', 'vbnvbvmnbkb ', 'approved', '2021-08-13'),
(9, 8, 'Mark Hor', 'wpdevs100@gmail.com', 'asdasdasdasdasd', 'unapproved', '2021-08-13'),
(10, 9, 'Bilal Shoaib', 'bilalshoaib5497@gmail.com', 'asdasdasdasdasd', 'unapproved', '2021-08-13'),
(11, 16, 'Bilal Shoaib', 'bilalshoaib5497@gmail.com', 'asdasdasdas', 'unapproved', '2021-08-13'),
(12, 16, 'Zarah', 'wpdevs100@gmail.com', 'asdasdasdasdasd', 'unapproved', '2021-08-13'),
(13, 8, '', '', '', 'unapproved', '2021-08-31'),
(14, 8, '', '', '', 'unapproved', '2021-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(8, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-08-27', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 7, 'published', 2),
(9, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-08-27', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 5, 'published', 1),
(16, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-08-27', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 6, 'published', 1),
(19, 2, 'How Is This CMS Made 1', 'assad', '', '2021-08-27', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(40, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-06', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(41, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-06', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 1),
(42, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-06', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(44, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(45, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(46, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(47, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(48, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(49, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(50, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(51, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(52, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(53, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(54, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(55, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(56, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(57, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(58, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(59, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 1),
(60, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(61, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(62, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(63, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(64, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 1),
(65, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(66, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(67, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(68, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(69, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(70, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(71, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(72, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(73, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(74, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(75, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(76, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(77, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(78, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(79, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(80, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(81, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(82, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(83, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(84, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(85, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(86, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(87, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(88, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(89, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(90, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(91, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(92, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(93, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(94, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(95, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(96, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(97, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(98, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(99, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(100, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(101, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(102, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(103, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(104, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(105, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(106, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(107, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(108, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(109, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(110, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(111, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(112, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(113, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(114, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(115, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(116, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(117, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(118, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(119, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(120, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(121, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(122, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(123, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(124, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(125, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(126, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(127, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(128, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(129, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(130, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(131, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(132, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(133, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(134, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(135, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 0),
(136, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(137, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(138, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(139, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(140, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0);
INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(141, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(142, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(143, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(144, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(145, 2, 'How Is This CMS Made 1', 'assad', '', '2021-09-09', 'DSC00344.JPG', '<p>123 4</p>', 'java, java8, virtual machine, VM', 0, 'published', 0),
(146, 2, 'Coping With Latest Women Fashion Trends', 'Sanwal Manzoor', '', '2021-09-09', 'cbwallet.jpg', '    asdasd', 'php, bootstrap, javascripts', 0, 'published', 0),
(147, 2, 'Java Tutorials', 'Sanwal Manzoor', '', '2021-09-09', '745521.jpg', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"    ', 'java, java8, virtual machine', 0, 'published', 0),
(148, 2, 'How Is This CMS Made', 'Sanwal Manzoor', '', '2021-09-09', 'cms image.jpg', 'The feature list\r\nOur first job is to work out exactly what we want our CMS to do. The CMS will have the following features:\r\n\r\nFront end:\r\n\r\nThe homepage, listing the 5 most recent articles\r\nThe article listing page, listing all articles\r\nThe “view article” page, letting visitors see a single article\r\nBack end:\r\n\r\nAdmin login/logout\r\nList all articles\r\nAdd a new article\r\nEdit an existing article\r\nDelete an existing article\r\nEach article will have an associated headline, summary, and publication date.                                                                ', 'php, bootstrap, javascript', 0, 'published', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrzaystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(27, 'msaeed', '$1$IWBtDVxa$ADJJ6DsyNUNoy2Y6IHJuK0', 'Muhammad', 'Saeed', 'msaeed@gmail.com', '', 'admin', '$2y$10$iusesomecrzaystrings22'),
(28, 'demo', '$2y$10$iusesomecrzaystrings2uTL0iMxoWFEBXruLdVxaZx779DaIb/uq', 'demo', 'mockup', 'demo123@gmail.com', '', 'admin', '$2y$10$iusesomecrzaystrings22'),
(29, 'muneer', '$2y$10$iusesomecrzaystrings2uUxmKVFQFEE0GhxtyAkg9ehF3lb3piGi', 'Muneer', 'Warsi', 'muneer123@gmail.com', '', 'admin', '$2y$10$iusesomecrzaystrings22'),
(30, 'mahsan', '$2y$10$Gg41XppdvsSqjXj2BBQWteu7/9eOPsQAf6Xij0g0ZDQOUKW7h3QoG', 'Muhammad', 'Ahsan', 'mahsan123@gmail.com', '', 'admin', '$2y$10$iusesomecrzaystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'g64uoiaqdqt6aseko32ejvq7pv', 1631212329),
(2, 'sbkiao51cmlvp7vlg8mc6b7mqs', 1631214378),
(3, '8vke80uaj6vget5npjumgrokvm', 1631214390),
(4, '9q2cefbfu2scv5bhkr8a0bjusa', 1631276869),
(5, '2iv54fbnbhk2hr8cr46e7kj9ag', 1631274706);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

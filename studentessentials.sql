-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 07:31 PM
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
-- Database: `studentessentials`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `studentproduct_id` int(11) DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `classified` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `student_id`, `product_id`, `classified`, `text`, `created_at`, `updated_at`) VALUES
(15, 110, 69, 'Good', 'huohiohnh', '2022-04-01 13:46:28', '2022-04-01 13:46:28'),
(16, 105, 52, 'Very good', 'I love this product, I definitely recommend buying this.', '2022-04-02 22:47:50', '2022-04-02 22:47:50'),
(17, 105, 52, 'Very Bad', 'i hate this product so much, remove it please', '2022-04-09 00:29:33', '2022-04-09 00:29:33'),
(18, 105, 52, 'Average', 'It\'s alright, I have seen better. hahaha :)', '2022-04-09 16:33:16', '2022-04-09 16:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_04_163818_add_more_columns_to_user_table', 2),
(6, '2022_01_13_180133_create_products_table', 3),
(7, '2022_01_15_040514_add_category_to_product', 4),
(8, '2022_01_15_043612_add_category_to_products', 5),
(9, '2022_01_21_202735_create_student_products_table', 6),
(10, '2022_02_05_181536_create_add_to_cart_table', 7),
(11, '2022_02_05_182246_create_add_to_cart', 8),
(12, '2022_02_12_235441_create_orders_table', 9),
(13, '2022_02_13_000254_create_purchaseditems_table', 9),
(14, '2022_03_02_004756_create_feedback_table', 10),
(15, '2022_03_02_010230_create_feedbacks_table', 11),
(16, '2022_03_05_184229_create_wishlists_table', 12),
(17, '2022_03_08_235438_create_subscriptions_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `ordereditems`
--

CREATE TABLE `ordereditems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `delivery` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(395, 'App\\Models\\User', 95, '07599717908@gmail.com_Token', '5c3a02263f05028d86d4057b3d978b2b33e6946c2722b37f651943299d3c4436', '[\"*\"]', NULL, '2022-02-09 02:37:29', '2022-02-09 02:37:29'),
(396, 'App\\Models\\User', 96, '07599717908@gmail.com_Token', 'd41079537183a7e7ad838bcd67595c282cf43cdebf3aeaf413cb672236c30c42', '[\"*\"]', NULL, '2022-02-09 02:38:42', '2022-02-09 02:38:42'),
(397, 'App\\Models\\User', 97, '07599717908@gmail.com_Token', '78d3b231f1527b833729a12c763c92dbeab3f43feab895415401aa0eb89687fa', '[\"*\"]', NULL, '2022-02-09 02:39:57', '2022-02-09 02:39:57'),
(406, 'App\\Models\\User', 98, '075997179089@gmail.com_Token', '509823943cb7fb20b55921fe7fd094b7b571b321010af3d6f5843992b1e2aca5', '[\"*\"]', NULL, '2022-02-11 03:30:03', '2022-02-11 03:30:03'),
(408, 'App\\Models\\User', 99, '0759971790899@gmail.com_Token', 'fb112235e03f8ce1aef85b336749cc3c75faa706c8a28ca05d4a1b0fa2443152', '[\"*\"]', NULL, '2022-02-11 03:39:01', '2022-02-11 03:39:01'),
(719, 'App\\Models\\User', 110, 'zakar@gmail.com_Token', '112ea71f5955d564ba8038f406c23349840285e5dd13ce3f376e02219612c133', '[\"server:studentbuy\"]', '2022-04-02 13:39:50', '2022-04-01 13:50:08', '2022-04-02 13:39:50'),
(758, 'App\\Models\\User', 105, 'samirmiah123@gmail.com_Token', '51cab583f1c4d01d6349c478a12eef1d896fd2d2637b06ae918dc3435512a252', '[\"server:studentbuy\"]', '2022-04-15 16:26:52', '2022-04-15 13:47:42', '2022-04-15 16:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `saleprice` decimal(10,2) DEFAULT NULL,
  `stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchased` int(11) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT 0,
  `sale` tinyint(4) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = show 1 = hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `saleprice`, `stock`, `category`, `subcategory`, `type`, `delivery`, `image`, `description`, `purchased`, `featured`, `sale`, `status`, `created_at`, `updated_at`) VALUES
(52, 'Flexgrip Ballpoint Pens', '5.99', '0.00', '10', 'Stationary', 'Pens', 'Ballpoint', '2', 'uploads/product/1647908328.jpg', 'Features include a Smooth writing and bold vivid colour, a rubberised barrel for increased comfort and gripped rings for increased control.', 7, 0, 0, 0, '2022-03-22 00:18:30', '2022-04-14 22:38:40'),
(53, 'STABILO BOSS Highlighters', '4.99', '0.00', '10', 'Stationary', 'Pens', 'Highlighter', '3', 'uploads/product/1647908636.jpg', 'High-quality highlighters perfect for everyday use. The wallet of 4 refillable water based ink highlighters contains: 1 yellow, 1 pink, 1 green and 1 orange. Each pen has a chiselled tip for thick (5mm) and thin (2mm) highlighting.', 7, 0, 0, 0, '2022-03-22 00:23:56', '2022-04-14 22:38:57'),
(54, '10 piece Sketching Set', '12.99', '10.00', '10', 'Stationary', 'Pens', 'Pencil', '5', 'uploads/product/1647908933.jpg', 'Holds a selection of pencils and sticks to create a wide variety of sketching styles. Includes an eraser and a stump. See it, sketch it!', 3, 0, 0, 0, '2022-03-22 00:28:53', '2022-04-09 00:56:56'),
(55, 'uni-ball JETSTREAM', '7.99', '0.00', '10', 'Stationary', 'Pens', 'Rollerball', '4', 'uploads/product/1647909153.jpg', 'uni Jetstream RT pens are more than regular rollerball pens. As you\'d expect the writing pens give you smooth, fast flowing writing, but the pens also have the fast-drying properties of a simple ballpoint ensuring less smudging, making them an ideal left-handed pen. This pens are extremely comfortable to use for both left and right-handed writers, and they are retractable too. The handwriting pens also come with the added benefit of uni-ball\'s Super Ink, which is fade resistant, water resistant and tamper proof so the ink pens are great for important documents and journaling. Its 1.0mm rollerball pens offer a smooth writing experience.', 1, 1, 0, 0, '2022-03-22 00:32:33', '2022-04-14 22:39:13'),
(56, 'Parker IM Fountain Pen', '40.00', '35.99', '10', 'Stationary', 'Pens', 'Fountain', '5', 'uploads/product/1647909446.jpg', 'At once smart, polished and professional, the Parker IM Fountain Pen is an ideal partner with unlimited potential. The sleek tapered shape pairs seamlessly with innovative designs to make a striking statement. Crafted with a rich dark espresso body accented in striking chrome trim, this Parker pen makes a memorable gift. The nib is made from durable stainless steel and shaped to provide the optimal writing angle. For use with Quink ink cartridges or convertible to ink bottle filling. Every detail is refined to deliver a writing experience that is at once dependable and faithful to over 125 years of Parker brand heritage. Supplied in a premium Parker branded gift box.', 6, 0, 1, 0, '2022-03-22 00:37:26', '2022-03-29 13:24:19'),
(57, 'Spiral Revision Cards', '4.99', '3.99', '9', 'Stationary', 'Pads and Paper', 'Revision Cards', '2', 'uploads/product/1647957834.jpg', 'This spirobound book of 50 revision cards is the perfect way to prepare for exam season, each revision card is 6x4\" in size and perforated for easy removal. The ruled pages allow for neat notes, and the cards come in a range of colours (blue, pink, green and yellow) to ensure that your notes stand out!', 2, 1, 1, 0, '2022-03-22 14:03:54', '2022-04-07 14:30:53'),
(58, 'Moderno Notebook Journal', '6.99', '0.00', '10', 'Stationary', 'Pads and Paper', 'Notebook Journal', '4', 'uploads/product/1647958068.jpg', 'Moderno A5 notebook with 150 ivory pages and an inside back pocket. This stylish notebook is perfect for enthusiastic writers with 150 pages to makes notes or even keep as a journal. Inside contains ruled ivory 80 gsm pages with a ribbon page marker and a handy pocket to keep any loose clippings. The soft covers feature a sleek leather effect with subtle grain and are complimented with a neat elastic closure to finish.', 1, 0, 0, 0, '2022-03-22 14:07:48', '2022-03-24 01:38:51'),
(59, 'Ruled Project Notebook', '5.99', '0.00', '10', 'Stationary', 'Pads and Paper', 'Project Notebook', '2', 'uploads/product/1647958198.jpg', 'This A4 size project book will make a great addition to your work or study supplies and contains 250 pages of white 80GSM wide ruled paper. The book is wiro bound at the side and each page is also perforated to make removing sheets easier. Finished with opaque purple polypro covers, this project book also contains five tabbed dividers with pockets which can be labelled to make organising your notes even simpler.', 3, 0, 0, 0, '2022-03-22 14:09:58', '2022-03-30 22:37:57'),
(60, 'Printer Paper 500 Sheets', '9.99', '0.00', '10', 'Stationary', 'Pads and Paper', 'Printer Paper', '6', 'uploads/product/1647958317.jpg', 'Canon Red Label Presentation is a bright white paper ideal for full colour and black-and-white documents. Superior composition and bulk make it ideal for high quality copying and printing. The smooth paper surface provides sharp print quality and a superior look-and-feel to your applications.', NULL, 0, 0, 0, '2022-03-22 14:11:57', '2022-03-22 14:11:57'),
(61, 'Post-it Sticky Notes', '4.99', '3.99', '10', 'Stationary', 'Pads and Paper', 'Sticky Note', '3', 'uploads/product/1647958511.jpg', 'These handy Index Post-It note flags are perfect for keeping yourself organised. Pack contains 5x20 (100 total) removable Post-it Index Flags sticky tabs in bright blue, yellow, pink, purple and green. Can be written on for easy identification.', NULL, 0, 0, 0, '2022-03-22 14:15:11', '2022-03-22 14:15:11'),
(62, 'LED Desk Lamp', '21.99', '0.00', '10', 'Furniture', 'lamp', 'Desktop', '3', 'uploads/product/1648079796.jpg', '[Portable and Adjustable] Sleek and compact design for easy positioning in any environment. Multi-joint arm for ultimate experience to you.', 1, 0, 0, 0, '2022-03-23 23:56:36', '2022-04-14 22:39:37'),
(63, 'Desk Study Lamp', '14.99', '0.00', '10', 'Furniture', 'lamp', 'Desktop', '2', 'uploads/product/1648080275.jpg', '[Eye-Caring & Multi-function]: 24 pcs High density LED Lamp beads, the unique round desk lamp simulates the diffuse reflection of natural light, no flicker, no glare. Powerful base storage design, aiming at holding a variety of stationery such as pens and pencils, which can say goodbye to your mess desk. The phone stand and USB charging design offer more convenience for your phone.', 1, 0, 0, 0, '2022-03-24 00:04:35', '2022-04-14 22:40:36'),
(64, 'Tomons Wood lamp', '34.99', '0.00', '10', 'Furniture', 'lamp', 'Bedside', '5', 'uploads/product/1648080463.jpg', 'Nature Wood Frame - The body is made of solid wood, firm and chemical-free. The cable is covered with nylon, stronger and more flexible. Modern Style - Classic Solid wood meets iron, simple and classic style.', NULL, 0, 0, 0, '2022-03-24 00:07:43', '2022-03-25 02:16:07'),
(65, 'LLOYTRON Lamp', '12.99', '0.00', '10', 'Furniture', 'lamp', 'Bedside', '3', 'uploads/product/1648080747.jpg', 'CLASSIC DESIGN: Simple and easy to operate with the integral on/off switch, this classic design flexi lamp looks stylish and will fit in with any room décor. UK plug mains operated for your convenience.', NULL, 0, 0, 0, '2022-03-24 00:12:27', '2022-03-24 00:12:27'),
(66, 'LED Desk Lamp v2', '15.99', '0.00', '10', 'Furniture', 'lamp', 'Desktop', '4', 'uploads/product/1648080986.jpg', 'Versatile LED Desk Lamp: The pen holder design save your space to tidy pens, rulers, or makeup tools. ,and the phone holder design make you more convenient to place your phone when watching video.', NULL, 0, 0, 0, '2022-03-24 00:16:26', '2022-03-24 00:16:26'),
(68, 'Grey towels x2', '10.49', '0.00', '10', 'Toiletry', 'Towels', 'Hands', '2', 'uploads/product/1648176876.jpg', '2 LARGE HAND TOWELS - GREY BATHROOM TOWEL SET - Our natural cotton hand towels’ sizes are 50x90 cm', NULL, 0, 0, 0, '2022-03-25 02:54:36', '2022-03-25 02:54:36'),
(69, 'Christy yellow towels', '24.99', '0.00', '10', 'Toiletry', 'Towels', 'Body', '3', 'uploads/product/1648177007.jpg', 'Zero Twist - Woven from 100% cotton, with a zero twist pile in a luxurious 650gsm, providing a super soft feel and brilliant absorbency. Zero twist yarn is made from long staple cotton fibres which are more absorbent and retain fluffiness for longer.', NULL, 0, 0, 0, '2022-03-25 02:56:47', '2022-03-25 02:56:47'),
(70, 'Egyptian Cotton Towels', '20.00', '14.99', '10', 'Toiletry', 'Towels', 'Body', '2', 'uploads/product/1648177108.jpg', 'SOFT & LONG LASTING - Set of 6 hand towels for bathroom comes in 2 popular colours white and grey. Multipurpose can be used pretty much anywhere! Hang some in the bathroom, put some in your gym bag, leave some in the guest room for your visitors, this is also a perfect gift for your loved one.', NULL, 0, 1, 0, '2022-03-25 02:58:28', '2022-03-25 02:58:28'),
(71, 'Todd linens pink', '12.99', '0.00', '10', 'Toiletry', 'Towels', 'Hands', '2', 'uploads/product/1648177470.jpg', 'Our Pink bath towels are woven with 100% Pure Luxury Cotton, No Harmful chemicals. Todd Linens Luxurious cotton towels set utilises the latest fabric technology for a rich and pure sensational experience', NULL, 0, 0, 0, '2022-03-25 03:04:30', '2022-03-25 03:05:19'),
(72, 'Premium purple towels', '29.99', '19.99', '10', 'Toiletry', 'Towels', 'Body', '4', 'uploads/product/1648177628.jpg', 'SUPERLATIVE ABSORBENCY & FADE RESISTANT – The length, thickness and number of thread loops, cotton type and quality, fibre bounding all affect the absorbency and durability of towels. Luxeware Radiant collection towel range is crafted to a 600 GSM weight rating using 100% premium long staple ring spun cotton to maximise absorbency to enhance your post bath drying experience. Our towels are tested at higher quality standards of durability and colour fastness to ensure long lasting performance.', NULL, 0, 0, 0, '2022-03-25 03:07:08', '2022-03-25 03:07:08'),
(73, 'Agile Principles in C#', '42.99', '0.00', '10', 'Books', 'Academic', 'Computer Science', '3', 'uploads/product/1648480857.jpg', 'This book presents a series of case studies illustrating the fundamentals of Agile development and Agile design, and moves quickly from UML models to real C# code. The introductory chapters lay out the basics of the agile movement, while the later chapters show proven techniques in action. The book includes many source code examples that are also available for download from the authors’ Web site.  Readers will come away from this book understanding  Agile principles, and the fourteen practices of Extreme Programming Spiking, splitting, velocity, and planning iterations and releases Test-driven development, test-first design, and acceptance testing Refactoring with unit testing Pair programming Agile design and design smells The five types of UML diagrams and how to use them effectively Object-oriented package design and design patterns How to put all of it together for a real-world project Whether you are a C# programmer or a Visual Basic or Java programmer learning C#, a software development manager, or a business analyst, Agile Principles, Patterns, and Practices in C# is the first book you should read to understand agile software and how it applies to programming in the .NET Framework.', NULL, 1, 0, 0, '2022-03-28 14:20:57', '2022-03-28 14:21:30'),
(74, 'Data Structure & Algorithm', '49.99', '39.99', '10', 'Books', 'Academic', 'Computer Science', '2', 'uploads/product/1648481275.jpg', 'his textbook provides an in depth course on data structures in the context of object oriented development. Its main themes are abstraction, implementation, encapsulation, and measurement: that is, that the software process begins with abstraction of data types, which then lead to alternate representations and encapsulation, and finally to resource measurement. A clear object oriented approach, making use of Booch components, will provide readers with a useful library of data structure components and experience in software reuse. Students using this book are expected to have a reasonable understanding of the basic logical structures such as stacks and queues.', NULL, 0, 0, 0, '2022-03-28 14:27:55', '2022-03-28 14:27:55'),
(75, 'Javascript', '19.99', '0.00', '10', 'Books', 'Academic', 'Computer Science', '4', 'uploads/product/1648481375.jpg', 'JavaScript: 20 Lessons to Successful Web Development covers the basics, including variables, operators, arrays, objects, and values. Next, you\'ll learn how to use conditional statements, work with multidimensional arrays, manipulate objects, handle errors, manage cookies, use Ajax, and much more. Together, the book and almost five hours of video training make learning JavaScript easier than ever!', NULL, 0, 0, 0, '2022-03-28 14:29:35', '2022-03-28 14:29:35'),
(76, 'Core Python', '14.99', '0.00', '10', 'Books', 'Academic', 'Computer Science', '4', 'uploads/product/1648481743.jpg', 'The book offers to teach a novice programmer the fundamentals of Python programming from the ground up. The book provides a brief history of Python, followed by exploring Python\'s fundamental concepts, features, and applications in detail.', NULL, 0, 0, 0, '2022-03-28 14:35:43', '2022-03-28 14:36:05'),
(77, 'HTML and CSS', '25.99', '0.00', '10', 'Books', 'Academic', 'Computer Science', '3', 'uploads/product/1648482248.jpg', 'HTML and CSS can be a little daunting at first but fear not. This book, based on Shay Howe\'s popular workshop covers the basics and breaks down the barrier to entry, showing readers how they can start using HTML and CSS through practical techniques today. They\'ll find accompanying code examples online, while they explore topics such as the different structures of HTML and CSS, and common terms. After establishing a basic understanding of HTML and CSS a deeper dive is taken into the box model and how to work with floats. The book includes an exercise focused on cleaning up a web page by improving the user interface and design, solely using HTML and CSS. With a few quick changes the web page changes shape and comes to life. Interactive, technically up-to-the-minute and easy-to-understand, this book will advance a student\'s skills to a professional level.', NULL, 0, 0, 0, '2022-03-28 14:44:08', '2022-03-28 14:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `studentproducts`
--

CREATE TABLE `studentproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchased` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = show 1 = hidden',
  `admindeleted` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentproducts`
--

INSERT INTO `studentproducts` (`id`, `student_id`, `student_name`, `name`, `price`, `stock`, `category`, `subcategory`, `type`, `delivery`, `image`, `description`, `purchased`, `status`, `admindeleted`, `created_at`, `updated_at`) VALUES
(64, 105, 'TheSlayerSamir', 'SCIENTIFIC CALCULATOR', '5.99', '10', 'Stationary', 'Calculators', 'No type given', '2', 'uploads/product/1648562183.jpg', 'A product description is not given', 1, 0, NULL, '2022-03-29 12:56:23', '2022-04-14 22:39:54'),
(65, 105, 'TheSlayerSamir', 'Large Wicker Basket', '20.00', '10', 'Furniture', 'Basket', 'No type given', '2', 'uploads/product/1648566056.webp', 'Large Wicker Hamper in good condition with cane bar through loop locking system. 60cm wide / 45cm deep / 45cm high. Cash on collection only, thanks.', 1, 0, NULL, '2022-03-29 13:03:27', '2022-04-01 13:41:13'),
(66, 105, 'TheSlayerSamir', 'Fictional books', '12.00', '10', 'Books', 'Fiction', 'No type given', '2', 'uploads/product/1648566665.webp', 'Variety of fiction books for sale. Historical myth and fiction, Gone With The Wind and sequel Scarlett', 2, 0, NULL, '2022-03-29 14:11:05', '2022-04-09 22:34:16'),
(67, 105, 'TheSlayerSamir', 'Data mining notes', '10.00', '10', 'Notes', 'Computer Science', 'Data mining', '2', 'uploads/product/1648566988.jpg', 'range of different modules are covered within these notes such as data fundamentals, classification, regression models, ethical issues and etc', NULL, 0, NULL, '2022-03-29 14:16:28', '2022-03-29 14:35:25'),
(68, 106, 'FahadIsCool', 'TI-84 83 Plus Calculators', '35.00', '10', 'Stationary', 'Calculators', 'No type given', '2', 'uploads/product/1648593075.webp', '1 x TI-83 Plus graphing calculator (£45)  2 x TI-84 Plus graphing calculator The TI-84 Plus graphing calculator offers three times the memory, more than twice the speed and a higher contrast screen than the TI-83 Plus model. Though is still keystroke-for-keystroke compatible. (£75 each ) They\'re currently retailing at 120 new.  TI calculators approved for UK exam use. You can also use TI graphing calculator on the PSAT, SAT, and ACT college entrance exams and AP tests and the IB exam.', NULL, 0, NULL, '2022-03-29 21:31:15', '2022-03-29 21:51:00'),
(69, 106, 'FahadIsCool', 'Basket Storage Units', '15.00', '9', 'Furniture', 'Basket', 'No type given', '3', 'uploads/product/1648593301.webp', 'M&S Storage Units with rattan baskets - £15 each or £25 for both  34cm width x 39cm depth x 79cm high', 1, 0, NULL, '2022-03-29 21:35:01', '2022-04-01 13:45:53'),
(70, 106, 'FahadIsCool', 'HARDBACK FICTION BOOKS', '4.50', '10', 'Books', 'Fiction', 'No type given', '4', 'uploads/product/1648593459.webp', 'A selection of hardback books. All books are in very good condition', 1, 0, NULL, '2022-03-29 21:37:39', '2022-03-30 22:37:57'),
(71, 106, 'FahadIsCool', 'Information Security', '12.99', '10', 'Notes', 'Computer Science', 'No type given', '3', 'uploads/product/1648593998.jpg', 'some of the modules that these notes include are cryptography,  network security, authentication and access control', NULL, 0, NULL, '2022-03-29 21:46:38', '2022-03-29 21:51:00'),
(72, 107, 'zakahHaych', 'Vintage Casio Calculator', '20.00', '10', 'Stationary', 'Calculators', 'No type given', '5', 'uploads/product/1648594979.webp', 'Vintage Casio graphical calculator, perfect working order complete with original box and user manual.', 1, 0, NULL, '2022-03-29 22:02:59', '2022-03-30 22:37:57'),
(73, 107, 'zakahHaych', 'White wicker Basket', '25.00', '9', 'Furniture', 'Basket', 'No type given', '6', 'uploads/product/1648595236.webp', 'Beds. WARDROBES. Chest Of Drawers. NEST of COFFEE TABLES. Bedside Drawer Units. OFFICE CHAIRS.  Desks. OTTOMAN BOXES. Bathroom Storage. TV STANDS. Dining tables and Chairs. BARSTOOLS. Bookshelves. SHOE STANDS and CABINETS. And much Much MUCH MORE', 1, 0, NULL, '2022-03-29 22:07:16', '2022-04-14 22:40:21'),
(74, 107, 'zakahHaych', 'The fantasies of SF', '15.99', '10', 'Books', 'Fiction', 'No type given', '4', 'uploads/product/1648595366.webp', 'Science Fiction Art, the fantasies of SF (Large soft back book 38 x 27 cms) compiled and introduced by Brian Aldiss 1975', NULL, 0, NULL, '2022-03-29 22:09:26', '2022-03-30 21:31:51'),
(75, 107, 'zakahHaych', 'Front end web dev', '2.50', '10', 'Notes', 'Computer Science', 'No type given', '3', 'uploads/product/1648595759.jpg', 'a whole tonne of notes on web dev tools and technologies. learn a lot more in depth, easy to understand languages reading these notes. languages such as HTML, CSS and Javascript. Note that these notes are for beginners', NULL, 0, NULL, '2022-03-29 22:15:59', '2022-03-30 21:31:51'),
(76, 108, 'Riz-The-Biz', 'Texas TI 84 Plus', '70.00', '10', 'Stationary', 'Calculators', 'No type given', '3', 'uploads/product/1648680063.webp', 'Perfect condition Texas Instruments TI 84 Plus. Posted by MARTIN in Supplies, Equipment & Stationery', NULL, 0, NULL, '2022-03-30 21:41:03', '2022-03-30 21:59:49'),
(77, 108, 'Riz-The-Biz', 'Plastic storage boxes', '50.00', '10', 'Furniture', 'Basket', 'Plastic', '3', 'uploads/product/1648680275.webp', '£50 for all or name a price for individual styles. Only selling multiples of each type, no single box purchases apart from the laundry basket and the drawers. Call me if you want to negotiate.', NULL, 0, NULL, '2022-03-30 21:44:35', '2022-03-30 21:59:49'),
(78, 108, 'Riz-The-Biz', '8 X Fiction Books', '5.00', '10', 'Books', 'Fiction', 'No type given', '1', 'uploads/product/1648680605.webp', 'Used in Good Condition & Clean . One of the Bernard Cornwell Books is a Hardback Book All the other books are Paperback Books', NULL, 0, NULL, '2022-03-30 21:50:05', '2022-03-30 21:59:49'),
(79, 108, 'Riz-The-Biz', 'Software lifecycle', '3.00', '10', 'Notes', 'Computer Science', 'No type given', '2', 'uploads/product/1648681113.jpg', 'Notes will include examples and explanations of UML diagrams, software designs, testing, software architecture and many more', NULL, 0, NULL, '2022-03-30 21:58:33', '2022-03-30 21:59:49'),
(80, 109, 'Hassan0121', 'Vintage Calculator', '30.00', '10', 'Stationary', 'Calculators', 'No type given', '2', 'uploads/product/1648681780.webp', 'Vintage Calculator ROCKEWELL International Memory 18F, Retro House of Fraser.  With case.   This item is in excellent condition and working order.', NULL, 0, NULL, '2022-03-30 22:09:40', '2022-03-30 22:29:32'),
(81, 109, 'Hassan0121', 'Laundry basket', '10.00', '10', 'Furniture', 'Basket', 'No type given', '5', 'uploads/product/1648681950.webp', 'Brown wicker laundry basket, never used just been tucked away , can also be used to sit , very comfortable', 1, 0, NULL, '2022-03-30 22:12:30', '2022-03-30 22:37:57'),
(82, 109, 'Hassan0121', 'crime fiction books', '25.00', '10', 'Books', 'Fiction', 'No type given', '2', 'uploads/product/1648682076.webp', 'This is mix of crime fiction books. There are 11 in total including 3 hardbacks.', NULL, 0, NULL, '2022-03-30 22:14:36', '2022-03-30 22:29:32'),
(83, 109, 'Hassan0121', 'Protocols Notes', '2.50', '9', 'Notes', 'Computer Science', 'No type given', '2', 'uploads/product/1648682504.jpg', 'Every protocol you can think of is found in these notes. just a quick summary about each important protocol. If you have an important exam coming up about them this will be very helpful to you :)', 2, 0, NULL, '2022-03-30 22:21:44', '2022-04-01 13:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNo` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT 0 COMMENT '1=Admin and 0=StudentBuys',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `gender`, `email`, `password`, `university`, `phoneNo`, `address`, `city`, `postcode`, `image`, `email_verified_at`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'rafiul', NULL, NULL, 'male', 'rafiul.hassan66@gmail.com', '$2y$10$0flPtOVOUuB2u2TRxOuuDOysnvTk3rxlT7DXHOKl4TX49oC.XSG82', NULL, NULL, '16 larches street', NULL, NULL, 'noimage', NULL, NULL, 1, '2022-01-04 18:15:25', '2022-01-04 18:15:25'),
(105, 'TheSlayerSamir', 'Samir', 'Miah', 'male', 'samirmiah123@gmail.com', '$2y$10$4CDTzOt/sj4ZdZfaSPMCM.4n0sWpGkJ.6gumkStihGTiPL8XXiizi', 'Coventry university', '076165278', '12 avenue bay', 'Birmingham', 'B12 1XH', 'uploads/profile/1648561201.jpg', NULL, NULL, 0, '2022-03-29 12:38:47', '2022-03-29 14:35:25'),
(106, 'FahadIsCool', 'Fahad', 'Faiz', 'male', 'fahad246@outlook.com', '$2y$10$3qtiOqV.LhGW.fFJBty1/OCusASOJTH7FCPDUeE0CJoc.CnH0oVK6', 'Birmingham City University', '', '', '', '', 'uploads/profile/1648594260.jpg', NULL, NULL, 0, '2022-03-29 21:21:15', '2022-03-29 21:51:00'),
(107, 'zakahHaych', '', '', 'male', 'zak-07@hotmail.com', '$2y$10$V9RziATyVeHPTEjZl3ZOPOO.gIGWvdiYt57OVJZhUzbvV1jA5imzK', 'UOB', '', '', '', '', 'uploads/profile/1648679511.jpg', NULL, NULL, 0, '2022-03-29 21:58:58', '2022-03-30 21:31:51'),
(108, 'Riz-The-Biz', '', '', 'male', 'rizwan@gmail.com', '$2y$10$SsiIehS/WSu.JcpOi8DUQeXoj7UBkSKYpuUDD4NFm6ayknZu9wC2a', 'wolverhampton university', '0756483625', '', '', '', 'uploads/profile/1648681151.jpg', NULL, NULL, 0, '2022-03-30 21:35:53', '2022-03-30 21:59:49'),
(109, 'Hassan0121', 'Hassan', 'Raza', 'male', 'sobib0121@gmail.com', '$2y$10$AdD9GUBxz2IU.yMXyto8FeJdQ1eMJKBqafuuonpYgYvB3BlS.3RRC', 'Birmingham City University', '0873654279', '12 bashall heath', 'Birmingham', 'B12 1FG', 'uploads/profile/1648682531.jpg', NULL, NULL, 0, '2022-03-30 22:03:38', '2022-03-30 22:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordereditems`
--
ALTER TABLE `ordereditems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentproducts`
--
ALTER TABLE `studentproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ordereditems`
--
ALTER TABLE `ordereditems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `studentproducts`
--
ALTER TABLE `studentproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 01:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookbounty`
--
CREATE DATABASE IF NOT EXISTS `bookbounty` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookbounty`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Aname` varchar(50) DEFAULT NULL,
  `Aemail` varchar(50) DEFAULT NULL,
  `Apassword` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Aname`, `Aemail`, `Apassword`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `Aname` varchar(50) DEFAULT NULL,
  `Aemail` varchar(50) DEFAULT NULL,
  `Apassword` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `Aname`, `Aemail`, `Apassword`) VALUES
(1, 'Sam', 'sam@gmail.com', 'sam123'),
(2, 'Karan', 'karan@gmail.com', 'karan123'),
(4, 'Hideo', 'hideomanga@gmail.com', 'manga00'),
(5, 'Hailey', 'faiman@gmail.com', 'faiman'),
(6, 'ganji', 'chudail@gmail.com', 'ganji007');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `Aname` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `Aname`, `Name`, `Description`, `thumbnail`, `genre`, `pdf`) VALUES
(1, 'Hideo', 'Jujutsu Kaisen V1', 'For some strange reason, Yuji Itadori, despite his insane athleticism would rather just hang out with the Occult Club. However, her soon finds out that the occult is as real as it gets when his fellow club members are attacked! Meanwhile, the mysterious Megumi Fushiguro is tracking down a special-grade cursed object, and his search leads him to Itadori...', 'uploads/thumbnails/jjkv1.jpeg', 'Manga', 'uploads/pdfs/jjkv1.pdf'),
(2, 'Hideo', 'Demon Slayer V1', 'Tanjiro sets out on the path of the Demon Slayer to save his sister and avenge his family! In Taisho-era Japan, kindhearted Tanjiro Kamado makes a living selling charcoal. But his peaceful life is shattered when a demon slaughters his entire family.', 'uploads/thumbnails/DemonSlayerv1.jpg', 'Manga', 'uploads/pdfs/Demon Slayer v1.pdf'),
(3, 'Sam', 'Short Fiction', 'This collection consists of short stories and novellas published in Worlds of If, Galaxy SF, Fantastic Universe, and other periodicals. Presented in order of publication, they include Innocent at Large, a 1958 story coauthored with his wife and noted author Karen Anderson.', 'uploads/thumbnails/short_fiction.jpg', 'Fiction', 'uploads/pdfs/Short_Fiction.pdf'),
(4, 'Hailey', 'Rough & Real', 'Ivy Gaines has loved one man in her lifetime. After fifteen years of marriage and three kids, reality hasn’t changed that—but sometimes love isn’t enough.\r\n\r\nWest “Camo” Gaines has never wanted anyone the way he wants his wife, but the Notorious Devils’ club life has opened his eyes and awakened a desire he knows he can’t explore with the mother of his children.', 'uploads/thumbnails/Rough&Real.jpg', 'Non-Fiction', 'uploads/pdfs/Rough&Real.pdf'),
(5, 'karan', 'Sherlock Holmes', 'Sherlock Holmes Mystery Magazine\" returns with issue #17, presenting the best in modern and classic mystery fiction!', 'uploads/thumbnails/SherlockHolmes.jpg', 'Mystery', 'uploads/pdfs/SherlockHolmes.pdf'),
(6, 'ganji', 'Mother Goose', 'Mother Goose', 'uploads/thumbnails/MotherGooseComic.jpg', 'Horror', 'uploads/pdfs/MotherGooseComic.pdf'),
(7, 'Hideo', 'One Piece V77', 'The colored cover has a black background with a vertical red section in the middle. The title logo colorscheme uses yellow-orange fading to white, solid yellow-orange, and solid white. The author\'s name is printed in white.', 'uploads/thumbnails/OnePiece77.jpg', 'Manga', 'uploads/pdfs/OnePieceV77.pdf'),
(8, 'Hideo', 'Attack on Titan : Lost Girls', 'The stories are about two female characters in the series: Mikasa Ackerman and Annie Leonhart. \"Lost in the cruel world\" is about Mikasa and her relationship with Eren, featuring a vision in an alternative universe where her parents weren\'t murdered.', 'uploads/thumbnails/attackontitan_lostgirls.jpg', 'Manga', 'uploads/pdfs/AttackonTitan_ Lost Girls.pdf'),
(9, 'Hideo', 'Chainsaw Man', 'Following a betrayal, a young man left for dead is reborn as a powerful devil-human hybrid after merging with his pet devil and is soon enlisted into an organization dedicated to hunting devils. When his father died, Denji was stuck with a huge debt and no way to pay it back.', 'uploads/thumbnails/Chainsawman.jpg', 'Manga', 'uploads/pdfs/ChainsawManV1.pdf'),
(10, 'Hideo', 'Jujutsu Kaisen V11', 'The Shibuya subway station is teeming with civilians and transfigured humans. Despite this dire circumstance, Satoru Gojo defeats the cursed spirits there. However, the cursed spirits possess a special item that can even seal the all-powerful Gojo! Meanwhile, an unlikely ally suddenly contacts Yuji Itadori, who is on his way to the station!', 'uploads/thumbnails/jjkV11.jpg', 'Manga', 'uploads/pdfs/JujutsuKaisenV11.pdf'),
(11, 'Hideo', 'Naruto V1', 'A nine-tailed fox spirit claimed the life of the village leader, the Hokage, and many others. Today, the village is at peace and a troublemaking kid named Naruto is struggling to graduate from Ninja Academy. His goal may be to become the next Hokage, but his true destiny will be much more complicated.', 'uploads/thumbnails/NarutoV1.jpg', 'Manga', 'uploads/pdfs/NarutoV1.pdf'),
(12, 'Hideo', 'Death Note V1', 'Any human whose name is written in the notebook dies, and now Light has vowed to use the power of the Death Note to rid the world of evil. But when criminals begin dropping dead, the authorities send the legendary detective L to track down the killer.', 'uploads/thumbnails/DeathNoteV1.jpg', 'Manga', 'uploads/pdfs/DeathNoteV1.pdf'),
(13, 'Hideo', 'Tokyo Ghoul V1', 'Ken Kaneki is an ordinary college student until a vio-lent encounter turns him into the first half-human half-ghoul hybrid. Trapped between two worlds, he must survive Ghoul turf wars, learn more about Ghoul society and master his new powers.', 'uploads/thumbnails/TokyoGhoulV1.jpg', 'Manga', 'uploads/pdfs/TokyoGhoulV1.pdf'),
(14, 'Hideo', 'Bleach V1', 'The season adapts the first eight volumes (chapters 1–70) of Tite Kubo\'s Bleach manga series, spanning twenty episodes. The episodes\' plot covers the adventures of Ichigo Kurosaki after becoming a Soul Reaper and assuming the duties of Soul Reaper Rukia Kuchiki.', 'uploads/thumbnails/BleachV1.jpg', 'Manga', 'uploads/pdfs/BleachV1.pdf'),
(15, 'Sam', 'The Great Gatsby', 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway\'s interactions with mysterious millionaire Jay Gatsby and Gatsby\'s obsession to reunite with his former lover, Daisy Buchanan.', 'uploads/thumbnails/TheGreatGatsby.jpg', 'Fiction', 'uploads/pdfs/TheGreatGatsby.pdf'),
(16, 'Sam', 'Nineteen Eighty-Four', 'Nineteen Eighty-Four is a dystopian novel and cautionary tale by English writer George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell\'s ninth and final book completed in his lifetime.', 'uploads/thumbnails/NineteenEightyFour.jpg', 'Fiction', 'uploads/pdfs/NineteenEightyFour.pdf'),
(17, 'Sam', 'A Stroke of the Pen: The Lost Stories', 'A Stroke of the Pen\" is a lovely collection of previously undiscovered Terry Pratchett short stories. Originally published in the 1970s and 80s under a handful of pseudonyms, these stories show off some of Pratchett\'s earliest fiction writing. And you can immediately see some of the hallmarks of his later writing.', 'uploads/thumbnails/AStrokeofthePen.jpg', 'Fiction', 'uploads/pdfs/AStrokeofthePen.pdf'),
(18, 'Sam', 'The Future', 'In \'The Future\' a group of friends plot a daring heist to save the world from the tech giants whose greed threatens life as we know it. What could possibly go wrong?', 'uploads/thumbnails/TheFuture.jpg', 'Fiction', 'uploads/pdfs/TheFuture.pdf'),
(19, 'Sam', 'Flowers for Algernon', 'Flowers for Algernon by Daniel Keyes is the story of a 32-year-old intellectually disabled man named Charlie Gordon, who undergoes a surgery to improve his intelligence. The story is told through a series of Charlie\'s first-person progress reports that indicate his improvement in grammar, spelling, and word choices.', 'uploads/thumbnails/FlowersforAlgernon.jpg', 'Fiction', 'uploads/pdfs/FlowersforAlgernon.pdf'),
(20, 'Sam', 'Time Machine', 'In the book The Time Machine, a Victorian scientist builds a machine that can travel through time. In the distant future he finds that, rather than advancing, human civilization has totally collapsed.', 'uploads/thumbnails/TimeMachine.jpg', 'Fiction', 'uploads/pdfs/TheTimeMachine.pdf'),
(21, 'Sam', 'Harry Potter ve Felsefe Taşı', 'Harry had a thin face, knobbly knees, black hair and bright-green eyes. He wore round glasses held together with a lot of Sellotape because of all the times Dudley had punched him on the nose.', 'uploads/thumbnails/Harrypotter.jpg', 'Fiction', 'uploads/pdfs/HarryPotter.pdf'),
(22, 'Sam', 'A Soul of Ash and Blood ', 'A Soul of Ash and Blood is the fifth book in the Blood and Ash series. It picks up where The War of Two Queens left off, with Poppy and Casteel still reeling from the events of the previous book. The Queen of Flesh and Fire has become the Primal of Blood and Bone, and the battle for Iliseeum is just beginning.', 'uploads/thumbnails/ASoulofAshandBlood.jpg', 'Fiction', 'uploads/pdfs/ASoulofAshandBlood.pdf'),
(23, 'Sam', 'The Crown of Gilded Bones', 'Poppy never dreamed she would find the love she\'s found with Prince Casteel. She wants to revel in her happiness but first they must free his brother and find hers. It\'s a dangerous mission and one with far-reaching consequences neither dreamed of.', 'uploads/thumbnails/TheCrownofGildedBones.jpg', 'Fiction', 'uploads/pdfs/TheCrownofGildedBones.pdf'),
(24, 'Hailey', 'King: A Life', 'In this landmark biography, Eig gives us an MLK for our times: a deep thinker, a brilliant strategist, and a committed radical who led one of history\'s greatest movements, and whose demands for racial and economic justice remain as urgent today as they were in his lifetime.', 'uploads/thumbnails/E1d4p0nZdOb.jpg', 'Non-Fiction', 'uploads/pdfs/KingAlife.pdf'),
(25, 'Hailey', 'Relentless', 'In 16 years of service, Dean rose to the top of Britain\'s fighting force, taking part of some of the most daring and dangerous operations in the war on terror. But then, following a horrific parachuting accident, Dean\'s dream career was cut short, and his ethos was put to its toughest test.', 'uploads/thumbnails/Relentless.jpg', 'Non-Fiction', 'uploads/pdfs/Relentless.pdf'),
(26, 'Hailey', 'The Diary of a Young Girl', 'Discovered in the attic in which she spent the last years of her life, Anne Frank’s remarkable diary has become a world classic—a powerful reminder of the horrors of war and an eloquent testament to the human spirit.', 'uploads/thumbnails/TheDiaryofaYoungGirl.jpg', 'Non-Fiction', 'uploads/pdfs/TheDiaryofaYoungGirl.pdf'),
(27, 'Hailey', 'I Know Why the Caged Bird Sings', 'Captures the longing of lonely children, the brute insult of bigotry, and the wonder of words that can make the world right.', 'uploads/thumbnails/IKnowWhytheCagedBirdSings.webp', 'Non-Fiction', 'uploads/pdfs/IKnowWhytheCagedBirdSings.pdf'),
(28, 'Hailey', 'Bury My Heart at Wounded Knee', 'Generated shockwaves with its frank and heartbreaking depiction of the systematic annihilation of American Indian tribes across the western frontier.', 'uploads/thumbnails/BuryMyHeartatWoundedKnee.webp', 'Non-Fiction', 'uploads/pdfs/BuryMyHeartatWoundedKnee.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `carousel_slides`
--

CREATE TABLE `carousel_slides` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `spotlight_title` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel_slides`
--

INSERT INTO `carousel_slides` (`id`, `image_path`, `spotlight_title`, `heading`, `description`) VALUES
(1, 'uploads/carousel/1747578289_bg3.jpg', '#1 Spotlight', 'WELCOME !', 'Step into BookBounty, your digital sanctuary where the magic of storytelling awaits. With an extensive array of books spanning genres and authors, embark on a journey through worlds both familiar and fantastical. Engage with fellow book enthusiasts, share your literary discoveries, and immerse yourself in the boundless adventures that await within the pages of our collection. Whether you seek thrilling escapades, profound insights, or heartwarming tales, BookBounty is your trusted companion in your quest for literary exploration and enlightenment. Welcome aboard this literary voyage. let your imagination soar and your love for reading thrive.'),
(2, 'uploads/carousel/1747578441_bg.jpeg', '#2 Spotlight', 'COLLABORATIONS', 'BookBounty aims to collaborate with authors, publishing houses, literary event organizers, educational institutions, nonprofit organizations, content creators, technology companies, and media outlets to enhance its offerings and reach. These collaborations could include hosting virtual author events, promoting new book releases, supporting literacy initiatives, creating user-generated content, integrating innovative features, and increasing brand visibility through media partnerships. By leveraging these collaborations, BookBounty seeks to enrich the reading experience for its users and foster a vibrant literary community.'),
(3, 'uploads/carousel/1747578521_bg2.png', '#3 Spotlight', 'PAID PROMOTIONS !', 'BookBounty can enhance its visibility and user acquisition through strategic paid promotions across various channels, including targeted social media advertising campaigns, influencer partnerships with prominent figures in the literary community, sponsored content syndication on relevant platforms, email marketing to book-related newsletters, affiliate marketing programs, sponsored event participation, and native advertising placements. By investing in these paid promotion strategies, BookBounty can effectively reach its target audience, drive website traffic, and bolster user engagement, ultimately fostering growth and establishing itself as a leading destination for book enthusiasts.'),
(4, 'uploads/carousel/1747578618_bg.jpg', '#4 Spotlight', 'EASE OF READING ONLINE', 'BookBounty aims to collaborate with authors, publishing houses, literary event,organizers, educational institutions, nonprofit organizations, content creators, technology companies, and media outlets to enhance its offerings and reach. These collaborations could include hosting virtual author events, promoting new book releases, supporting literacy initiatives, creating user-generated content, integrating innovative features, and increasing brand visibility through media partnerships. By leveraging these collaborations, BookBounty seeks to enrich the reading experience for its users and foster a vibrant literary community.'),
(5, 'uploads/carousel/1747578704_bg1.jpeg', '#5 Spotlight', 'HUGE DATABASES', 'Managing a big database is crucial for BookBounty to ensure seamless access to its extensive collection of books and user data. Implementing robust database management systems and employing efficient data storage solutions, such as cloud-based databases or distributed databases, can accommodate the scalability and performance requirements of a large volume of data. Utilizing indexing and caching techniques, as well as optimizing database queries, can enhance the speed and efficiency of data retrieval, ensuring a smooth user experience. Regular database maintenance tasks, including data backup, data cleaning, and performance tuning, are essential to prevent data loss, ensure data integrity, and optimize database performance over time. By effectively managing its big database, BookBounty can provide users with reliable access to its vast library of books and support the platform\'s growth and scalability in the long term.');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Name`, `Email`, `Password`) VALUES
(1, 'sachin', 'sachinkumar056212@gmail.com', 'sachin12'),
(2, 'sahil', 'sahil@gmail.com', '123456'),
(3, 'rem', 'rem@gmail.com', 'rem00'),
(4, 'shubham', 'shubham@gmail.com', 'shub0009'),
(5, 'shubham sinha', 'shubhamsinha269@gmail.com', '123456789'),
(6, 'rishi', 'rishi@gmail.com', 'rishi'),
(8, 'neeraj', 'neerajgawar@gmail.com', 'Nr200000'),
(9, 'Raj Sekhar', 'rajsekhar8504@gmail.com', '887776'),
(10, 'Ayush', 'ayush@gmail,com', 'narula'),
(11, 'sachin111', 'sachinjjjj@gmail.com', 'sachin123'),
(12, 'kaaa', 'kaaa@gmail.com', 'kaaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Aname` (`Aname`),
  ADD UNIQUE KEY `Aemail` (`Aemail`);

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Aname` (`Aname`),
  ADD UNIQUE KEY `Aemail` (`Aemail`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Aname` (`Aname`);

--
-- Indexes for table `carousel_slides`
--
ALTER TABLE `carousel_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `carousel_slides`
--
ALTER TABLE `carousel_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Aname`) REFERENCES `alogin` (`Aname`);
--
-- Database: `form`
--
CREATE DATABASE IF NOT EXISTS `form` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `form`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `sno` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`sno`, `name`, `email`, `password`) VALUES
(1, 'SACHIN', 'sachinkumar056212@gmail.com', 'dawdawd'),
(3, 'SACHIN', 'sachinkumar05621e@gmail.com', 'dwadwafgaw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bookbounty\",\"table\":\"carousel_slides\"},{\"db\":\"bookbounty\",\"table\":\"books\"},{\"db\":\"bookbounty\",\"table\":\"registration\"},{\"db\":\"bookbounty\",\"table\":\"alogin\"},{\"db\":\"bookbounty\",\"table\":\"admin\"},{\"db\":\"form\",\"table\":\"data\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-05-19 10:53:11', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

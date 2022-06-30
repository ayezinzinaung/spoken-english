-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 12:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `se`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverbs`
--

CREATE TABLE `adverbs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adverbs`
--

INSERT INTO `adverbs` (`id`, `question`, `answer`) VALUES
(1, '1.The mother sat vigilantly beside the sick baby. Here \'vigilantly\' is ____<br><br>\r\na) a noun<br>\r\nb) an adverb<br>\r\nc) an adjective<br>\r\nd) none of the three<br><br>', 'b) an adverb<br>'),
(2, '2. Honey is ____ sweet.<br><br>\r\na) very<br>\r\nb) too much<br>\r\nc) much too<br>\r\nd) excessive<br><br>', 'a) very<br>');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `question`, `answer`) VALUES
(1, '1. Use the appropriate article - I saw ____ one-eyed man when I was walking on the road.<br><br>\r\na) a<br>\r\nb) an<br>\r\nc) the<br>\r\nd) no article is needed<br><br>', 'a) a<br>'),
(2, '2. Which word is the determiner in the sentence \'Will it take much time?\'<br><br>\r\na) will<br>\r\nb) take<br>\r\nc) much<br>\r\nd) time<br><br>', 'c) much<br>');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `contex` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `category`, `contex`) VALUES
(1, 'With the class-teacher', 'Guardian: I\'m AI-Amin. You had asked my son to ask me to see you.<br><br>\r\nClass-teacher: Your Son...?<br><br>\r\nGuardian: Vinod.<br><br>\r\nClass-teacher: Yes, I remember. I had asked him to do so.<br><br>\r\nGuardian: I\'m here.<br><br>\r\nClass-teacher: Thanks. I want to tell you that he\'s not been able to cope with studies.<br><br>\r\nGuardian: In which subjects?<br><br>\r\nClass-teacher: Particularly in English.<br><br>\r\nGuardian: Very strange! But he did well in the half yearly examination, didn\'t he?<br><br>\r\nClass-teacher: No doubt. But I\'m telling you after inquiring about it.<br><br>\r\nGuardian: What are you findings?<br><br>\r\nClass-teacher: In fact, he had copied. Now he admits that he had brought notes along.<br><br>\r\nGuardian: It\'s a shame/what a shame! How is his general conduct?<br><br>\r\nClass-teacher: He is very well-behaved. No need to worry about that.<br><br>\r\nGuardian: Then what do you suggest for improving his English?<br><br>\r\nClass-teacher: An English Conversation Course\' should be useful for him to learn it well.<br><br>\r\nGuardian: From where can one get it?<br><br>\r\nClass-teacher: From the only app for standard apps in playstore, spoken English.<br><br>\r\nGuardian: Thanks for your kind guidance.<br><br>');

-- --------------------------------------------------------

--
-- Table structure for table `degree_of_comparsion`
--

CREATE TABLE `degree_of_comparsion` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `degree_of_comparsion`
--

INSERT INTO `degree_of_comparsion` (`id`, `question`, `answer`) VALUES
(1, '1. \"We were no more surprised than Rahman.\"<br><br>\r\na) We were less surprised than Rahman<br>\r\nb) We were all surprised<br>\r\nc) Rahman was less surprised<br>\r\nd) We were as surprised as Rahman<br><br>', 'd) We were as surprised as Rahman<br>'),
(2, '2. Dhaka is becoming one of the ____ cities in Asia.<br><br>\r\na) more busy<br>\r\nb) busy<br>\r\nc) busiest<br>\r\nd) most busiest<br><br>', 'c) busiest<br>');

-- --------------------------------------------------------

--
-- Table structure for table `dialogues`
--

CREATE TABLE `dialogues` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `contex` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dialogues`
--

INSERT INTO `dialogues` (`id`, `category`, `contex`) VALUES
(1, 'Present Tense\r\n(Does/ Do)', 'Alex: Do you read English?<br><br>\r\nLinda: Yes, I do.<br><br>\r\nAlex: Does Lucy come to your house?<br><br>\r\nLinda: Yes, she comes sometimes.<br><br>\r\nAlex: Do other friends come to you?<br><br>\r\nLinda: Yes, others also come.<br><br>\r\nAlex: Do you stay in California?<br><br>\r\nLinda: No. I stay in New York.<br><br>'),
(2, 'Is / Are / Am', 'Farhana: Is this book you are looking for.<br><br>\r\nSumya: Yes, this is it.<br><br>\r\nFarhana: Is Shema reading the same book?<br><br>\r\nSumya: No, that is different one.<br><br>\r\nFarhana: Are you not going to the market?<br><br>\r\nSumya: No, I am not.<br><br>\r\nFarhana: Is your father in government service?<br><br>\r\nSumya: No, he is a businessman.<br><br>\r\nFarhana: Is your brother preparing for some examination?<br><br>\r\nSumya: Yes, he is preparing for the I.A.S examination.<br><br>'),
(3, 'Has / Have', 'Sabbir: Have you written any letter to Rima?<br><br>\r\nNahid: Yes, I have written to her.<br><br>\r\nSabbir: Has Rima replied to your letter.<br><br>\r\nNahid: No. she hasn\'t.<br><br>\r\nSabbir: Have you taken your meals?<br><br>\r\nNahid: No, I had a heavy breakfast in the morning.<br><br>\r\nSabbir: Did you go to his house?<br><br>\r\nNahid: No, I have yet to go.<br><br>'),
(4, 'Has been / Have been', 'Riaz: What have you been doing since morning?<br><br>\r\nGolap: I have been reading this book since morning.<br><br>\r\nRiaz: Has it been raining here also since yesterday?<br><br>\r\nGolap: Yes, it has been raining, but intermittently.<br><br>\r\nRiaz: Has the water been boiling for long?<br><br>\r\nGolap: No, it has been boiling only for a little time.<br><br>'),
(5, 'Past tense <br>\r\nDid', NULL),
(6, 'Was / Were', NULL),
(7, 'Had', NULL),
(8, 'Had been', NULL),
(9, 'Future tense <br>\r\nWill / shall', NULL),
(10, 'Will be / Shall be', NULL),
(11, 'Will have / Shall have', NULL),
(12, 'Will have been / Shall have been', NULL),
(13, 'Some important Helping Verbs<br>\r\nCan', NULL),
(14, 'May', NULL),
(15, 'Could', NULL),
(16, 'Might / Must / ought(to) / would/ should', NULL),
(17, 'What', NULL),
(18, 'Who', NULL),
(19, 'Use of why, which, when, where', NULL),
(20, 'Miscellaneous', NULL),
(21, 'Negative sentences', NULL),
(22, 'Practice yourself', NULL),
(23, 'Use of This, I, He-she-it, that, you, each, none', NULL),
(24, 'Use of preposition<br>\r\n(on, in, into, at, with, by, to, of, beside, between, among, over)', NULL),
(25, 'Use of correlatives', NULL),
(26, 'Use of temporal<br>\r\n(in, within, on, at, before, after, from, to, till, for, how, long, yet, about, by, when, while, until)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gender_of_noun`
--

CREATE TABLE `gender_of_noun` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gender_of_noun`
--

INSERT INTO `gender_of_noun` (`id`, `question`, `answer`) VALUES
(1, '1. What is the masculine gender of \"mare\"?<br><br>\r\na) Mermaid<br>\r\nb) Bear<br>\r\nc) Stallion<br>\r\nd) Dog<br><br>', 'c) Stallion<br>'),
(2, '2. Which one is opposite gender of \'doctor\'?<br><br>\r\na) lady doctor<br>\r\nb) doctress<br>\r\nc) nurse<br>\r\nd) doctorex<br><br>', 'a) lady doctor<br>');

-- --------------------------------------------------------

--
-- Table structure for table `grammatical_test`
--

CREATE TABLE `grammatical_test` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `connect` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grammatical_test`
--

INSERT INTO `grammatical_test` (`id`, `category`, `connect`) VALUES
(1, 'Degree of Comparison', 'degree_of_comparsion'),
(2, 'Adverbs', 'adverbs'),
(3, 'Articles', 'articles'),
(4, 'Parts of Speech', 'parts_of_speech'),
(5, 'Gender of Noun', 'gender_of_noun'),
(6, 'Number of Noun', 'number_of_noun'),
(7, 'Preposition', 'preposition'),
(8, 'Uncountable Problems', 'uncountable_problems');

-- --------------------------------------------------------

--
-- Table structure for table `number_of_noun`
--

CREATE TABLE `number_of_noun` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `number_of_noun`
--

INSERT INTO `number_of_noun` (`id`, `question`, `answer`) VALUES
(1, '1. Which of the following words is in singular form?<br><br>\r\na) formulae<br>\r\nb) agenda<br>\r\nc) oases<br>\r\nd) radius<br><br>', 'd) radius<br>'),
(2, '2. All of the people at the AAME conference are ____ <br><br>\r\na) Mathematic teachers<br>\r\nb) Mathematics teachers<br>\r\nc) Mathematics teacher<br>\r\nd) Mathematic\'s teachers<br><br>', 'b) Mathematics teachers<br>');

-- --------------------------------------------------------

--
-- Table structure for table `parts_of_speech`
--

CREATE TABLE `parts_of_speech` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parts_of_speech`
--

INSERT INTO `parts_of_speech` (`id`, `question`, `answer`) VALUES
(1, '1. Frailty the name is women. Here \'Frailty\' is: <br><br>\r\na) A noun<br>\r\nb) An adjective<br>\r\nc) An adverb<br>\r\nd) A verb<br><br>', 'a) A noun<br>'),
(2, '2. Which of the following words can be used as a verb?<br><br>\r\na) Mister<br>\r\nb) Master<br>\r\nc) Mistress<br>\r\nd) Mastery<br><br>', 'b) Master<br>');

-- --------------------------------------------------------

--
-- Table structure for table `preposition`
--

CREATE TABLE `preposition` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preposition`
--

INSERT INTO `preposition` (`id`, `question`, `answer`) VALUES
(1, '1. The family doesn\'t feel ____ going outing this season.<br><br>\r\na) in<br>\r\nb) on<br>\r\nc) like<br>\r\nd) of<br><br>', 'c) like<br>'),
(2, '2. Professor Razzak was a scholar ____ repute.<br><br>\r\na) in<br>\r\nb) of<br>\r\nc) after<br>\r\nd) by<br><br>', 'b) of<br>');

-- --------------------------------------------------------

--
-- Table structure for table `salutation_words`
--

CREATE TABLE `salutation_words` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `contex` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salutation_words`
--

INSERT INTO `salutation_words` (`id`, `category`, `contex`) VALUES
(1, 'During meeting', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uncountable_problems`
--

CREATE TABLE `uncountable_problems` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uncountable_problems`
--

INSERT INTO `uncountable_problems` (`id`, `question`, `answer`) VALUES
(1, '1. ____ is not the only thing that tourists want to see.<br><br>\r\na) A scenery<br>\r\nb) Sceneries<br>\r\nc) The sceneries<br>\r\nd) Scenery<br><br>', 'd) Scenery<br>'),
(2, '2. The jacket costs ____<br><br>\r\na) too much<br>\r\nb) too many Officer<br>\r\nc) expensive<br>\r\nd) none of these<br><br>', 'a) too much<br>'),
(3, '3. The ____ of the office will be sold.<br><br>\r\na) furniture<br>\r\nb) furnitures<br>\r\nc) furnish<br>\r\nd) furnishing<br><br>', 'a) furniture<br>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Bob', 'bob@gmail.com', '9f9d51bc70ef21ca5c14f307980a29d8', '2022-06-29 15:46:42'),
(2, 'John Doe', 'john.doe@gmail.com', '87fd57b0da462b230680a01cad68a4cc', '2022-06-29 15:53:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adverbs`
--
ALTER TABLE `adverbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_of_comparsion`
--
ALTER TABLE `degree_of_comparsion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dialogues`
--
ALTER TABLE `dialogues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_of_noun`
--
ALTER TABLE `gender_of_noun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grammatical_test`
--
ALTER TABLE `grammatical_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_of_noun`
--
ALTER TABLE `number_of_noun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts_of_speech`
--
ALTER TABLE `parts_of_speech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preposition`
--
ALTER TABLE `preposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salutation_words`
--
ALTER TABLE `salutation_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uncountable_problems`
--
ALTER TABLE `uncountable_problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adverbs`
--
ALTER TABLE `adverbs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `degree_of_comparsion`
--
ALTER TABLE `degree_of_comparsion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dialogues`
--
ALTER TABLE `dialogues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gender_of_noun`
--
ALTER TABLE `gender_of_noun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grammatical_test`
--
ALTER TABLE `grammatical_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `number_of_noun`
--
ALTER TABLE `number_of_noun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parts_of_speech`
--
ALTER TABLE `parts_of_speech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `preposition`
--
ALTER TABLE `preposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salutation_words`
--
ALTER TABLE `salutation_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uncountable_problems`
--
ALTER TABLE `uncountable_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 10:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learningplatform`
--

-- --------------------------------------------------------

--
-- Table structure for table `amcqresultrev`
--

CREATE TABLE `amcqresultrev` (
  `actualanswer` varchar(255) NOT NULL,
  `studentsanswer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `mcqquesid` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amcqresultrev`
--

INSERT INTO `amcqresultrev` (`actualanswer`, `studentsanswer`, `status`, `question`, `sid`, `mcqquesid`, `lecturetopic`) VALUES
('Beijing', 'Beijing', 'Correct', 'What is the capital of China', 1, 1, 'Midterm Exam'),
('2', '2', 'Correct', 'What is the base of Binary numbers', 1, 2, 'Midterm Exam'),
('helsinki', 'helsinki', 'Correct', 'What is the capital of Finland', 1, 3, 'Midterm Exam'),
('Beijing', 'Beijing', 'Correct', 'What is the capital of China', 1, 1, 'Final Exam'),
('2', '2', 'Correct', 'What is the base of Binary numbers', 1, 2, 'Final Exam'),
('16', '16', 'Correct', 'What is the base of Hex numbers', 1, 4, 'Final Exam'),
('Beijing', 'Beijing', 'Correct', 'What is the capital of China', 1, 1, 'Midtermal Exam'),
('helsinki', 'helsinki', 'Correct', 'What is the capital of Finland', 1, 3, 'Midtermal Exam');

-- --------------------------------------------------------

--
-- Table structure for table `amcqrevstat`
--

CREATE TABLE `amcqrevstat` (
  `datetaken` date NOT NULL,
  `totalpoints` int(11) NOT NULL,
  `mcqquesid` int(11) NOT NULL,
  `daytaken` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `totalquesno` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amcqrevstat`
--

INSERT INTO `amcqrevstat` (`datetaken`, `totalpoints`, `mcqquesid`, `daytaken`, `sid`, `totalquesno`, `lecturetopic`) VALUES
('2020-05-09', 3, 3, 'Saturday', 1, 3, 'Midterm Exam'),
('2020-05-10', 3, 4, 'Sunday', 1, 3, 'Final Exam'),
('2020-05-10', 0, 4, 'Sunday', 1, 0, 'Final Exam'),
('2020-05-13', 2, 3, 'Wednesday', 1, 2, 'Midtermal Exam');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_mcq_choices`
--

CREATE TABLE `assignment_mcq_choices` (
  `AnsID` int(11) NOT NULL,
  `QuestionNumber` int(11) DEFAULT NULL,
  `Is_Correct` int(11) DEFAULT NULL,
  `Textt` varchar(255) DEFAULT NULL,
  `LectureTopic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment_mcq_choices`
--

INSERT INTO `assignment_mcq_choices` (`AnsID`, `QuestionNumber`, `Is_Correct`, `Textt`, `LectureTopic`) VALUES
(1, 1, 1, 'Beijing', NULL),
(2, 1, 0, 'Donald Trump', NULL),
(3, 1, 0, 'London', NULL),
(4, 1, 0, 'Bm', NULL),
(5, 2, 1, '2', NULL),
(6, 2, 0, '0', NULL),
(7, 2, 0, '1', NULL),
(8, 2, 0, '4', NULL),
(9, 3, 0, 'j', NULL),
(10, 3, 0, 'd', NULL),
(11, 3, 0, 'a', NULL),
(12, 3, 1, 'helsinki', NULL),
(13, 4, 0, '18', NULL),
(14, 4, 1, '16', NULL),
(15, 4, 0, '10', NULL),
(16, 4, 0, '2', NULL),
(17, 5, 0, 'Donald Trump', NULL),
(18, 5, 0, 'Donald Trump', NULL),
(19, 5, 1, 'Helsinki', NULL),
(20, 5, 0, 'c', NULL),
(21, 6, 1, 'Beijing', NULL),
(22, 6, 0, 'c', NULL),
(23, 6, 0, 'x', NULL),
(24, 6, 0, 'z', NULL),
(25, 7, 1, '2', NULL),
(26, 7, 0, '0', NULL),
(27, 7, 0, '3', NULL),
(28, 7, 0, '16', NULL),
(29, 7, 0, '8', NULL),
(30, 7, 0, '4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignment_mcq_questions`
--

CREATE TABLE `assignment_mcq_questions` (
  `QuestionID` int(11) NOT NULL,
  `QuestionNumber` int(11) NOT NULL,
  `Textt` varchar(255) NOT NULL,
  `LectureTopic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment_mcq_questions`
--

INSERT INTO `assignment_mcq_questions` (`QuestionID`, `QuestionNumber`, `Textt`, `LectureTopic`) VALUES
(1, 1, 'What is the capital of China', NULL),
(2, 2, 'What is the base of Binary numbers', NULL),
(3, 3, 'What is the capital of Finland', NULL),
(4, 4, 'What is the base of Hex numbers', NULL),
(5, 1, 'What is the capital of Finland', NULL),
(6, 2, 'What is the capital of China', NULL),
(7, 1, 'What is the base of Binary numbers', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignment_one_word_questions`
--

CREATE TABLE `assignment_one_word_questions` (
  `Qid` int(11) NOT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `ActualAnswer` varchar(255) DEFAULT NULL,
  `LectureTopic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment_one_word_questions`
--

INSERT INTO `assignment_one_word_questions` (`Qid`, `Question`, `ActualAnswer`, `LectureTopic`) VALUES
(1, 'What is the base of Binary numbers', '2', NULL),
(2, 'What is the capital of Australia', 'Can', NULL),
(3, 'What is the capital of Australia', 'Canberra', NULL),
(4, 'What is the base of Binary numbers', '2', NULL),
(5, 'What is the capital of Finland', 'Helsinki', NULL),
(6, 'What is the base of Hex numbers', '16', NULL),
(7, 'What is the capital of Finland', 'Helsinki', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `awaresultrev`
--

CREATE TABLE `awaresultrev` (
  `actualanswer` varchar(255) NOT NULL,
  `studentsanswer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `waquesid` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awaresultrev`
--

INSERT INTO `awaresultrev` (`actualanswer`, `studentsanswer`, `status`, `question`, `sid`, `waquesid`, `lecturetopic`) VALUES
('2 ', '2', 'Correct', 'What is the base of Binary numbers ', 1, 1, 'Midterm Exam'),
('Can ', 'Canberra', 'Wrong', 'What is the capital of Australia ', 1, 2, 'Midterm Exam'),
('2 ', '4', 'Wrong', 'What is the base of Binary numbers ', 1, 4, 'Midterm Exam'),
('Canberra ', 'Canberra', 'Correct', 'What is the capital of Australia ', 1, 3, 'Final Exam'),
('2 ', '2', 'Correct', 'What is the base of Binary numbers ', 1, 4, 'Final Exam'),
('Canberra ', 'Canberra', 'Correct', 'What is the capital of Australia ', 1, 3, 'Final Exam'),
('2 ', 'Canberra', 'Wrong', 'What is the base of Binary numbers ', 1, 4, 'Final Exam'),
('2 ', '4', 'Wrong', 'What is the base of Binary numbers ', 1, 1, 'Midtermal Exam'),
('Canberra ', 'canberra', 'Correct', 'What is the capital of Australia ', 1, 3, 'Midtermal Exam');

-- --------------------------------------------------------

--
-- Table structure for table `awarevstat`
--

CREATE TABLE `awarevstat` (
  `datetaken` date NOT NULL,
  `totalpoints` int(11) NOT NULL,
  `waquesid` int(11) NOT NULL,
  `daytaken` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `totalquesno` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awarevstat`
--

INSERT INTO `awarevstat` (`datetaken`, `totalpoints`, `waquesid`, `daytaken`, `sid`, `totalquesno`, `lecturetopic`) VALUES
('2020-05-09', 1, 4, 'Saturday', 1, 3, 'Midterm Exam'),
('2020-05-10', 2, 4, 'Sunday', 1, 2, 'Final Exam'),
('2020-05-10', 1, 4, 'Sunday', 1, 2, 'Final Exam'),
('2020-05-13', 1, 3, 'Wednesday', 1, 2, 'Midtermal Exam');

-- --------------------------------------------------------

--
-- Table structure for table `mcqresultrev`
--

CREATE TABLE `mcqresultrev` (
  `actualanswer` varchar(255) NOT NULL,
  `studentsanswer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `mcqquesid` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcqresultrev`
--

INSERT INTO `mcqresultrev` (`actualanswer`, `studentsanswer`, `status`, `question`, `sid`, `mcqquesid`, `lecturetopic`) VALUES
('Tokyo', 'Tokyo', 'Correct', 'What is the capital of Japan', 1, 1, 'Capitals'),
('1', 'Tokyo', 'Wrong', 'What is the capital of Finland', 1, 2, 'Capitals'),
('2', '2', 'Correct', 'What is the base of Binary numbers', 1, 3, 'Numericals');

-- --------------------------------------------------------

--
-- Table structure for table `mcqrevstat`
--

CREATE TABLE `mcqrevstat` (
  `datetaken` date NOT NULL,
  `totalpoints` int(11) NOT NULL,
  `mcqquesid` int(11) NOT NULL,
  `daytaken` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `totalquesno` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcqrevstat`
--

INSERT INTO `mcqrevstat` (`datetaken`, `totalpoints`, `mcqquesid`, `daytaken`, `sid`, `totalquesno`, `lecturetopic`) VALUES
('2020-05-09', 1, 2, 'Saturday', 1, 2, 'Capitals'),
('2020-05-09', 1, 3, 'Saturday', 1, 1, 'Numericals');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_choices`
--

CREATE TABLE `mcq_choices` (
  `AnsID` int(11) NOT NULL,
  `QuestionNumber` int(11) DEFAULT NULL,
  `Is_Correct` int(11) DEFAULT NULL,
  `Textt` varchar(255) DEFAULT NULL,
  `LectureTopic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcq_choices`
--

INSERT INTO `mcq_choices` (`AnsID`, `QuestionNumber`, `Is_Correct`, `Textt`, `LectureTopic`) VALUES
(1, 1, 1, 'Tokyo', 'Capitals'),
(2, 1, 0, 'Japan', 'Capitals'),
(3, 1, 0, 'as', 'Capitals'),
(4, 1, 0, 'a', 'Capitals'),
(5, 2, 1, '1', 'Capitals'),
(6, 2, 0, '2', 'Capitals'),
(7, 2, 0, 'Tokyo', 'Capitals'),
(8, 2, 0, 'Washington DC', 'Capitals'),
(9, 3, 0, '21', 'Numericals'),
(10, 3, 0, '3', 'Numericals'),
(11, 3, 1, '2', 'Numericals'),
(12, 3, 0, '1', 'Numericals'),
(13, 4, 1, 'v', 'vvv'),
(14, 4, 0, 'v', 'vvv'),
(15, 4, 0, 's', 'vvv'),
(16, 4, 0, 'a', 'vvv'),
(17, 5, 1, 'v', 'vvv'),
(18, 5, 0, 'v', 'vvv'),
(19, 5, 0, 'v', 'vvv'),
(20, 5, 0, 'v', 'vvv'),
(21, 6, 1, 'v', 'vvv'),
(22, 6, 0, 'v', 'vvv'),
(23, 6, 0, 'v', 'vvv'),
(24, 6, 0, 'v', 'vvv'),
(25, 7, 1, 'c', 'vvv'),
(26, 7, 0, 'a', 'vvv'),
(27, 7, 0, 'Sheikh Hasinaa', 'vvv'),
(28, 7, 0, 'a', 'vvv'),
(29, 8, 1, 'x', 'vvv'),
(30, 8, 0, 'f', 'vvv'),
(31, 8, 0, 's', 'vvv'),
(32, 8, 0, 'q', 'vvv'),
(33, 9, 0, 'z', 'vvv'),
(34, 9, 1, 'Donald Trueps', 'vvv'),
(35, 9, 0, 'd', 'vvv'),
(36, 9, 0, 's', 'vvv');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_questions`
--

CREATE TABLE `mcq_questions` (
  `QuestionID` int(11) NOT NULL,
  `QuestionNumber` int(11) NOT NULL,
  `Textt` varchar(255) NOT NULL,
  `LectureTopic` varchar(255) DEFAULT NULL,
  `submissiondate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcq_questions`
--

INSERT INTO `mcq_questions` (`QuestionID`, `QuestionNumber`, `Textt`, `LectureTopic`, `submissiondate`) VALUES
(1, 1, 'What is the capital of Japan', 'Capitals', ''),
(2, 2, 'What is the capital of Finland', 'Capitals', ''),
(3, 1, 'What is the base of Binary numbers', 'Numericals', ''),
(4, 1, 'vvv', 'vvv', ''),
(5, 2, 'What is the capital of Finland', 'vvv', ''),
(6, 2, 'What is the capital of Finland', 'vvv', '2020-05-13'),
(7, 4, 'n', 'vvv', '2020-04-28'),
(8, 5, 'What is the base of Binary numbers', 'vvv', '2020-05-06'),
(9, 6, 'What is the capital of Finland', 'vvv', '2020-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `one_word_questions`
--

CREATE TABLE `one_word_questions` (
  `Qid` int(11) NOT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `ActualAnswer` varchar(255) DEFAULT NULL,
  `LectureTopic` varchar(255) DEFAULT NULL,
  `submissiondate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `one_word_questions`
--

INSERT INTO `one_word_questions` (`Qid`, `Question`, `ActualAnswer`, `LectureTopic`, `submissiondate`) VALUES
(1, 'What is the base of Binary numbers', '2', 'GRREAT EXA', '2020-05-25'),
(2, 'vvv', 'vvv', 'GRREAT EXA', '2020-05-25'),
(3, 'What is the base of Binary numbers', '2', 'GRREAT EXA', '2020-05-25'),
(4, 'What is the capital of Finland', 'Helsinki', 'GRREAT EXA', '2020-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `professorregistration`
--

CREATE TABLE `professorregistration` (
  `pID` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professorregistration`
--

INSERT INTO `professorregistration` (`pID`, `Email`, `Username`, `Password`) VALUES
(1, 'v@gmail.com', 'v', '$2y$10$SZk06T7rxqY3FG6aUCVz4.P5eKiJPtviTtHjd1ve5V5Gv4kqJ075m'),
(2, 'n@gmail.com', 'n', '$2y$10$sjMrT4bGA7Io1jCejVkHVOjGZOkrGRPTsgagOLFfNqOw6cMOgCSo2'),
(3, 'p@gmail.com', 'p', '$2y$10$j8klIEtGYQnAHcQalSZS/ui7aPJts7360YZl3DzBPePIlXGthz0Cy');

-- --------------------------------------------------------

--
-- Table structure for table `questiongroupmcq`
--

CREATE TABLE `questiongroupmcq` (
  `QuesGroupID` int(11) NOT NULL,
  `QuesGroupName` varchar(255) DEFAULT NULL,
  `MCQQuesID` int(11) DEFAULT NULL,
  `QuestionNumber` int(11) DEFAULT NULL,
  `submissiondate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questiongroupmcq`
--

INSERT INTO `questiongroupmcq` (`QuesGroupID`, `QuesGroupName`, `MCQQuesID`, `QuestionNumber`, `submissiondate`) VALUES
(1, 'Midterm Exam', 1, 1, '2020-05-26'),
(2, 'Midterm Exam', 2, 2, '2020-05-26'),
(3, 'Midterm Exam', 3, 3, '2020-05-26'),
(4, 'Final Exam', 1, 1, '2020-05-31'),
(5, 'Final Exam', 2, 2, '2020-05-31'),
(6, 'Final Exam', 4, 3, '2020-05-31'),
(7, 'IQ test', 2, 1, '2020-05-30'),
(8, 'IQ test', 3, 2, '2020-05-30'),
(9, 'IQ test', 4, 3, '2020-05-30'),
(10, 'Midterm Exam', 1, 1, '2020-05-20'),
(11, 'Midterm Exam', 3, 2, '2020-05-20'),
(12, 'Midtermal Exam', 1, 1, '2020-05-20'),
(13, 'Midtermal Exam', 3, 2, '2020-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `questiongroupword`
--

CREATE TABLE `questiongroupword` (
  `QuesGroupID` int(11) NOT NULL,
  `QuesGroupName` varchar(255) DEFAULT NULL,
  `WordAnswerQuesID` int(11) DEFAULT NULL,
  `submissiondate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questiongroupword`
--

INSERT INTO `questiongroupword` (`QuesGroupID`, `QuesGroupName`, `WordAnswerQuesID`, `submissiondate`) VALUES
(1, 'Midterm Exam', 1, '2020-05-26'),
(2, 'Midterm Exam', 2, '2020-05-26'),
(3, 'Midterm Exam', 4, '2020-05-26'),
(4, 'Final Exam', 3, '2020-05-31'),
(5, 'Final Exam', 4, '2020-05-31'),
(6, 'IQ test', 1, '2020-05-30'),
(7, 'IQ test', 3, '2020-05-30'),
(8, 'Midterm Exam', 1, '2020-05-20'),
(9, 'Midterm Exam', 3, '2020-05-20'),
(10, 'Midtermal Exam', 1, '2020-05-20'),
(11, 'Midtermal Exam', 3, '2020-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `studentregistration`
--

CREATE TABLE `studentregistration` (
  `sID` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentregistration`
--

INSERT INTO `studentregistration` (`sID`, `Email`, `Username`, `Password`) VALUES
(1, 'de@gmail.com', 'de', '$2y$10$EA9I.inOaD49bT97HrarTOWmZVAuf2XdH0.UvIPnlVe/119ZoDAoC');

-- --------------------------------------------------------

--
-- Table structure for table `waresultrev`
--

CREATE TABLE `waresultrev` (
  `actualanswer` varchar(255) NOT NULL,
  `studentsanswer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `waquesid` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waresultrev`
--

INSERT INTO `waresultrev` (`actualanswer`, `studentsanswer`, `status`, `question`, `sid`, `waquesid`, `lecturetopic`) VALUES
('2 ', 'd', 'Wrong', 'What is the base of Binary numbers ', 1, 1, 'GRREAT EXA'),
('vvv ', 'f', 'Wrong', 'vvv ', 1, 2, 'GRREAT EXA'),
('2 ', 'f', 'Wrong', 'What is the base of Binary numbers ', 1, 3, 'GRREAT EXA'),
('Helsinki ', 'f', 'Wrong', 'What is the capital of Finland ', 1, 4, 'GRREAT EXA');

-- --------------------------------------------------------

--
-- Table structure for table `warevstat`
--

CREATE TABLE `warevstat` (
  `datetaken` date NOT NULL,
  `totalpoints` int(11) NOT NULL,
  `waquesid` int(11) NOT NULL,
  `daytaken` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `totalquesno` int(11) NOT NULL,
  `lecturetopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warevstat`
--

INSERT INTO `warevstat` (`datetaken`, `totalpoints`, `waquesid`, `daytaken`, `sid`, `totalquesno`, `lecturetopic`) VALUES
('2020-05-09', 0, 4, 'Saturday', 1, 4, 'GRREAT EXA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment_mcq_choices`
--
ALTER TABLE `assignment_mcq_choices`
  ADD PRIMARY KEY (`AnsID`);

--
-- Indexes for table `assignment_mcq_questions`
--
ALTER TABLE `assignment_mcq_questions`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `assignment_one_word_questions`
--
ALTER TABLE `assignment_one_word_questions`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `mcq_choices`
--
ALTER TABLE `mcq_choices`
  ADD PRIMARY KEY (`AnsID`);

--
-- Indexes for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `one_word_questions`
--
ALTER TABLE `one_word_questions`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `professorregistration`
--
ALTER TABLE `professorregistration`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `questiongroupmcq`
--
ALTER TABLE `questiongroupmcq`
  ADD PRIMARY KEY (`QuesGroupID`);

--
-- Indexes for table `questiongroupword`
--
ALTER TABLE `questiongroupword`
  ADD PRIMARY KEY (`QuesGroupID`);

--
-- Indexes for table `studentregistration`
--
ALTER TABLE `studentregistration`
  ADD PRIMARY KEY (`sID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment_mcq_choices`
--
ALTER TABLE `assignment_mcq_choices`
  MODIFY `AnsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `assignment_mcq_questions`
--
ALTER TABLE `assignment_mcq_questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assignment_one_word_questions`
--
ALTER TABLE `assignment_one_word_questions`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mcq_choices`
--
ALTER TABLE `mcq_choices`
  MODIFY `AnsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `one_word_questions`
--
ALTER TABLE `one_word_questions`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `professorregistration`
--
ALTER TABLE `professorregistration`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questiongroupmcq`
--
ALTER TABLE `questiongroupmcq`
  MODIFY `QuesGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questiongroupword`
--
ALTER TABLE `questiongroupword`
  MODIFY `QuesGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studentregistration`
--
ALTER TABLE `studentregistration`
  MODIFY `sID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2018 at 07:21 PM
-- Server version: 10.1.31-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmaas_ushin_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Inputs`
--

CREATE TABLE `Inputs` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NodeLinks`
--

CREATE TABLE `NodeLinks` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_node_id` int(11) NOT NULL,
  `to_node_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NodeLinkTypes`
--

CREATE TABLE `NodeLinkTypes` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Nodes`
--

CREATE TABLE `Nodes` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author_name` text NOT NULL,
  `type_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `root` tinyint(1) NOT NULL,
  `vetted` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NodeSourceLinks`
--

CREATE TABLE `NodeSourceLinks` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_id` int(11) NOT NULL,
  `source_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NodeSourceLinkTypes`
--

CREATE TABLE `NodeSourceLinkTypes` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NodeTypes`
--

CREATE TABLE `NodeTypes` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `People`
--

CREATE TABLE `People` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SourceLinks`
--

CREATE TABLE `SourceLinks` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `from_source_id` int(11) NOT NULL,
  `to_source_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SourceLinkTypes`
--

CREATE TABLE `SourceLinkTypes` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Sources`
--

CREATE TABLE `Sources` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type_id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SourceTypes`
--

CREATE TABLE `SourceTypes` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ushers`
--

CREATE TABLE `Ushers` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` text NOT NULL COMMENT 'eMail address',
  `salt` text NOT NULL COMMENT 'salt for the password hash',
  `password` text NOT NULL COMMENT 'SHA Hash'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Inputs`
--
ALTER TABLE `Inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NodeLinks`
--
ALTER TABLE `NodeLinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `NodeLinkTypes`
--
ALTER TABLE `NodeLinkTypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `Nodes`
--
ALTER TABLE `Nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_index` (`created`);

--
-- Indexes for table `NodeSourceLinks`
--
ALTER TABLE `NodeSourceLinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `NodeSourceLinkTypes`
--
ALTER TABLE `NodeSourceLinkTypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `NodeTypes`
--
ALTER TABLE `NodeTypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `SourceLinks`
--
ALTER TABLE `SourceLinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `SourceLinkTypes`
--
ALTER TABLE `SourceLinkTypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `Sources`
--
ALTER TABLE `Sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `SourceTypes`
--
ALTER TABLE `SourceTypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `Ushers`
--
ALTER TABLE `Ushers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `NodeLinks`
--
ALTER TABLE `NodeLinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NodeLinkTypes`
--
ALTER TABLE `NodeLinkTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Nodes`
--
ALTER TABLE `Nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NodeSourceLinks`
--
ALTER TABLE `NodeSourceLinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NodeSourceLinkTypes`
--
ALTER TABLE `NodeSourceLinkTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NodeTypes`
--
ALTER TABLE `NodeTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `People`
--
ALTER TABLE `People`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SourceLinks`
--
ALTER TABLE `SourceLinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SourceLinkTypes`
--
ALTER TABLE `SourceLinkTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Sources`
--
ALTER TABLE `Sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SourceTypes`
--
ALTER TABLE `SourceTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Ushers`
--
ALTER TABLE `Ushers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

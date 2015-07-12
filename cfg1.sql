-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2015 at 07:37 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cfg`
--

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE IF NOT EXISTS `donor` (
  `did` int(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `fundgroup` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `uid` int(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `fname` varchar(120) NOT NULL,
  `lname` varchar(120) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`uid`, `username`, `password`, `fname`, `lname`, `gender`, `email`) VALUES
(0, 'ShariwaM', 'qwwerty', 'shariwa', 'malankar', '2', 'shariwa.malankar@ves.ac.in'),
(0, 'KMadhwani', '123456', 'Kirti', 'madhwani', '2', 'kirti.madhwani@ves.ac.in'),
(0, 'KiranL', 'qwerty', 'Kiran', 'L', '2', 'Kiran.l@ves.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE IF NOT EXISTS `story` (
`sid` int(120) NOT NULL,
  `storyname` varchar(120) NOT NULL,
  `storyimg` varchar(500) NOT NULL,
  `storydes` varchar(1000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`sid`, `storyname`, `storyimg`, `storydes`) VALUES
(1, 'Nepal Story', 'nepal-earthquake.jpg', 'The earthquake killed more than 8,600 in Nepal and injured more than twice as many. The rural death toll may have been lower than it would have been as the villagers were outdoors, working when the quake hit. As of 15 May, 6,271 people, including 1,700 from the 12 May aftershock, were still receiving treatment for their injuries. More than 450,000 people were displaced.'),
(2, 'Tsunami story', 'japan.jpg', 'The unexpected disaster was neither the largest nor the deadliest earthquake and tsunami to strike this century. That record goes to the 2004 Banda Aceh earthquake and tsunami in Sumatra, a magnitude-9.1, which killed more than 230,000 people. But Japan''s one-two punch proved especially devastating for the earthquake-savvy country, because few scientists had predicted the country would experience such a large earthquake and tsunami.'),
(3, 'Tornado', 'tornado.jpg', 'The Midwestern states are very prone to tornado activity, as it is part of "Tornado Alley."[21] States included in the area that are hit by tornadoes the most are Kansas, Missouri, Nebraska, Iowa, and South Dakota.[21] The Midwestern States are often hit by tornadoes during the late spring and early summer months, especially the months of May and June.[11] This is due to the aforementioned air mass moving northward into the Midwest and combining with another air mass that move southward from Canada.[11] This creates unstable air, creating the potential for storms to strike the most during these months.[11] The frequency begins to decrease in the middle of the summer, as the air mass moves no');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE IF NOT EXISTS `temp` (
`id` int(11) NOT NULL,
  `storyname` varchar(200) NOT NULL,
  `imgname` varchar(200) NOT NULL,
  `storydes` varchar(1000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `storyname`, `imgname`, `storydes`) VALUES
(1, 'Nepal Earthquake', 'Urabnities40.jpg', 'The April 2015 Nepal earthquake (also known as the Gorkha earthquake)[6][9] killed more than 9,000 people and injured more than 23,000. It occurred at 11:56 NST on 25 April, with a magnitude of 7.8Mw[1] or 8.1Ms[2] and a maximum Mercalli Intensity of IX (Violent). Its epicenter was east of the district of Lamjung, and its hypocenter was at a depth of approximately 15 km (9.3 mi).[1] It was the worst natural disaster to strike Nepal since the 1934 Nepal–Bihar earthquake.[10][11][12]\r\n\r\nThe earthquake triggered an avalanche on Mount Everest, killing at least 19,[13] making April 25, 2015 the deadliest day on the mountain in history.[14] The earthquake triggered another huge avalanche in the Langtang valley, where 250 people were reported missing.[15][16]'),
(2, 'Indonesia', 'download.jpg', 'There is a large number of smaller natural disasters in Indonesia each year which often lead to deaths of 10 or 20 people or more. For example, landslides (tanah longsor) are very common in upland areas, especially during the rainy season, and cause much local damage and deaths.[3]\r\n\r\nFlooding is also a regular problem across many parts of Indonesia. The capital city Jakarta is subject to severe floods from time to time which usually cause some loss of life and significant damage to public and commercial infrastructure. In January 2014, for example, over 20 people lost their lives during widespread flooding and at one stage over 60,000 citizens were temporarily housed in nearly 250 evaluation shelters across the city.'),
(3, 'India', 'india.jpg', 'Natural disasters in India, many of them related to the climate of India, cause massive losses of Indian life and property. Droughts, flash floods, cyclones, avalanches, landslides brought on by torrential rains, and snowstorms pose the greatest threats. Other dangers include frequent summer dust storms, which usually track from north to south; they cause extensive property damage in North India[1] and deposit large amounts of dust from arid regions. Hail is also common in parts of India, causing severe damage to standing crops such as rice and wheat.'),
(5, 'America', 'usa.jpg', 'Within the northwestern Pacific there are no official typhoon seasons as tropical cyclones form throughout the year. Like any tropical cyclone, there are six main requirements for typhoon formation and development');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `story`
--
ALTER TABLE `story`
 ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
MODIFY `sid` int(120) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

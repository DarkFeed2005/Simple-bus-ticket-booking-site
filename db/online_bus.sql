--2025 @ KpolitX


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_bus`
--

-- --------------------------------------------------------

CREATE TABLE `bus_details` (
  `bus_name` text NOT NULL,
  `source` text NOT NULL,
  `destination` text NOT NULL,
  `fare` int(50) NOT NULL,
  `seats_available` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bus_name`, `source`, `destination`, `fare`, `seats_available`) VALUES
('Ambalangoda - Elpitiya 8:00am Volvo Non-AC', 'Ambalangoda', 'Elpitiya', 150, 10),
('Ambalangoda - Katharagama 6:30am Volvo Non-AC', 'Ambalangoda', 'Katharagama', 150, 97),
('Ambalangoda - Galle 6:45am Volvo Non-AC', 'Ambalangoda', 'Galle', 500, 98),
('Ambalangoda - Colombo 7:00am volvo AC ', 'Colombo', 'Ambalangoda', 600, 70),
('Ambalangoda - Kadawatha 7:00am volvo non AC ', 'Ambalangoda', 'Kadawatha', 800, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user__details`
--

CREATE TABLE `user__details` (
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(6) NOT NULL,
  `cont_num` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user__details`
--

INSERT INTO `user__details` (`name`, `email`, `password`, `cont_num`) VALUES
('', 'hi123@gmail.com', '12345', '9658741230'),
('', 'test123@gmail.com', '12345', '7896541230'),
('Kalana', 'kalana123@gmail.com', '12345', '9474882315'),
('Rahul', '1@gmail.com', '12345', '9856321478');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user__details`
--
ALTER TABLE `user__details`
  ADD PRIMARY KEY (`email`);



COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

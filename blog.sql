-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03-Fev-2018 às 03:18
-- Versão do servidor: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_cidade`
--

CREATE TABLE IF NOT EXISTS `tab_cidade` (
`id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `id_uf` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `tab_cidade`
--

INSERT INTO `tab_cidade` (`id`, `descricao`, `id_uf`) VALUES
(1, 'Osasco', 1),
(2, 'Sorocaba', 1),
(3, 'Campinas', 1),
(4, 'Volta Redonda', 2),
(5, 'Duque de Caxias', 2),
(6, 'Macaé', 2),
(7, 'Belo Horizonte', 3),
(8, 'Juiz de Fora', 3),
(9, 'Poços de Caldas', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_cliente`
--

CREATE TABLE IF NOT EXISTS `tab_cliente` (
`id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(16) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tab_cliente`
--

INSERT INTO `tab_cliente` (`id`, `nome`, `email`, `telefone`) VALUES
(1, 'Roberto Pinheiro', 'betopinheiro1005@yahoo.com.br', '(011) 95041-3021');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_uf`
--

CREATE TABLE IF NOT EXISTS `tab_uf` (
`id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tab_uf`
--

INSERT INTO `tab_uf` (`id`, `descricao`) VALUES
(1, 'São Paulo'),
(2, 'Rio de Janeiro'),
(3, 'Minas Gerais');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_cidade`
--
ALTER TABLE `tab_cidade`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_cliente`
--
ALTER TABLE `tab_cliente`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_uf`
--
ALTER TABLE `tab_uf`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_cidade`
--
ALTER TABLE `tab_cidade`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tab_cliente`
--
ALTER TABLE `tab_cliente`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tab_uf`
--
ALTER TABLE `tab_uf`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

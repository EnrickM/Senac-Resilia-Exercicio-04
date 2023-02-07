-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Fev-2023 às 01:09
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cursoresilia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `matricula` varchar(30) DEFAULT NULL,
  `nome` varchar(99) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `rendimento` int(11) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `pagamento` varchar(30) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`matricula`, `nome`, `cpf`, `rendimento`, `periodo`, `pagamento`, `idade`, `id`) VALUES
('1', 'Marcelo Ramiro', '12031197732', 9, 5, '990201926453', NULL, NULL),
('2', 'Ruan Dantas', '28420956382', 7, 2, '348162839482', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` varchar(30) NOT NULL,
  `nome` varchar(99) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `creditos` int(11) DEFAULT NULL,
  `carga` int(11) DEFAULT NULL,
  `mensalidade` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`, `area`, `creditos`, `carga`, `mensalidade`) VALUES
('1', 'manutencao de computadores', 'informatica', 4, 80, 360.8),
('2', 'identidade visual', 'design', 6, 100, 580.4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id` varchar(30) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `professor` varchar(99) DEFAULT NULL,
  `sala` varchar(4) DEFAULT NULL,
  `entrada` int(11) DEFAULT NULL,
  `saida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id`, `numero`, `professor`, `sala`, `entrada`, `saida`) VALUES
('1', 202201, 'Alberto Costa', '102', 13, 16),
('2', 202202, 'Jessica Menezes', '104', 18, 22);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

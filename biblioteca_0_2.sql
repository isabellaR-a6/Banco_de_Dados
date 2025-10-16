-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16/10/2025 às 19:19
-- Versão do servidor: 8.0.40
-- Versão do PHP: 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca_0.2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `Id_Emprestimo` int NOT NULL,
  `Id_Usuario` int DEFAULT NULL,
  `Id_Livro` int DEFAULT NULL,
  `DataEmprestimo` date DEFAULT NULL,
  `DataDevolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`Id_Emprestimo`, `Id_Usuario`, `Id_Livro`, `DataEmprestimo`, `DataDevolucao`) VALUES(928, 987, 627, '2025-10-03', '2025-10-03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `Id_Livro` int NOT NULL,
  `Título` varchar(30) DEFAULT NULL,
  `Autor` varchar(20) DEFAULT NULL,
  `Genero` varchar(40) DEFAULT NULL,
  `AnoPublicacao` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `livro`
--

INSERT INTO `livro` (`Id_Livro`, `Título`, `Autor`, `Genero`, `AnoPublicacao`) VALUES(143, 'A volta ao mundo', 'Jhon Valer', 'Ficção', '1999');
INSERT INTO `livro` (`Id_Livro`, `Título`, `Autor`, `Genero`, `AnoPublicacao`) VALUES(263, 'A alegria do Banco de Dados', 'Radaelita', 'Tecnologia', '2015');
INSERT INTO `livro` (`Id_Livro`, `Título`, `Autor`, `Genero`, `AnoPublicacao`) VALUES(627, 'A História do MongoDB', 'Fulaninha de tal', 'Tecnologia', '2012');
INSERT INTO `livro` (`Id_Livro`, `Título`, `Autor`, `Genero`, `AnoPublicacao`) VALUES(937, 'O Príncipe do bem', 'Rover White', 'Fantasia', '2025');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int NOT NULL,
  `Nome` varchar(20) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `TipoUsuario` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nome`, `Email`, `TipoUsuario`) VALUES(95, 'Paolla', 'PallomaVeraver@gmail.com', 'Professor');
INSERT INTO `usuario` (`Id_Usuario`, `Nome`, `Email`, `TipoUsuario`) VALUES(754, 'Diadema', 'Diademadias@gmail.com', 'Funcionario');
INSERT INTO `usuario` (`Id_Usuario`, `Nome`, `Email`, `TipoUsuario`) VALUES(987, 'Rafaelinda', 'Rafaelindalele@gmail.com', 'Aluno');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`Id_Emprestimo`);

--
-- Índices de tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`Id_Livro`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `Id_Emprestimo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=929;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `Id_Livro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=938;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

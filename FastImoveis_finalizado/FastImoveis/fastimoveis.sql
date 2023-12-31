-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/11/2023 às 20:17
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fastimoveis`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int(20) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `nome_vendedor` varchar(255) NOT NULL,
  `telefone_vendedor` varchar(20) NOT NULL,
  `email_vendedor` varchar(255) NOT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `endereco`, `categoria`, `preco`, `nome_vendedor`, `telefone_vendedor`, `email_vendedor`, `status`) VALUES
(1, 'avenida presidente wilson, 178, São Vicente', 'apartamento', 150000.00, 'Lucas Santos', '3490-8375', 'santos@gmail.com', 'à venda'),
(2, 'avenida presidente kennedy, 390, Praia Grande', 'apartamento', 200000.00, 'Maria Alves', '3380-9084', 'maria123@gmail.com', 'à venda'),
(3, 'rua domingos costa, 400, Cubatão', 'Casa', 100000.50, 'Iago Teixeira', '3267-9327', 'teixeira@gmail.com', 'à venda'),
(4, 'rua padre gastão, 1340, Praia Grande', 'Casa', 300000.80, 'Joaquim Maia', '98250-3798', 'joaquim980@gmail.com', 'à venda'),
(5, 'avenida paulista, 5708, São Paulo', 'apartamento', 980000.00, 'Alfred Silva', '98720-8054', 'alfredsilva@gmail.com', 'à venda'),
(6, 'rua saldanha da gama, 370, São Vicente', 'apartamento', 300000.00, 'João Simões', '3289-2157', 'johnsimoes@gmail.com', 'à venda'),
(7, 'rua doutor jaime oliveira, 250, Guarujá', 'Casa', 350000.00, 'Sophia Alves', '96703-0548', 'alves2802@gmail.com', 'à venda');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(20) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'admin', 'adminbr@gmail.com', '1234'),
(2, 'usuario', 'userbr@gmail.com', '1234');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 19-Jan-2021 às 15:42
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `control_est`
--

DROP TABLE IF EXISTS `control_est`;
CREATE TABLE IF NOT EXISTS `control_est` (
  `id` int(11) NOT NULL,
  `estoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `control_est`
--

INSERT INTO `control_est` (`id`, `estoque`) VALUES
(1, 4),
(2, 3),
(3, 4),
(4, 4),
(5, 4),
(6, 3),
(7, 2),
(8, 3),
(9, 2),
(10, 5),
(11, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `endereco` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `municipio` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `telefone` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `quantidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `nome`, `endereco`, `numero`, `municipio`, `estado`, `telefone`, `email`, `codigo`, `quantidade`) VALUES
(1, 'Davi', 'Est itauna', '35', 'sao goncalo', 'rio de janeiro', '9999999999', 'ds@ds.com', '1', '2'),
(2, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(150) CHARACTER SET latin1 NOT NULL,
  `imagem` varchar(300) CHARACTER SET latin1 NOT NULL,
  `descricao` varchar(200) CHARACTER SET latin1 NOT NULL,
  `preco` varchar(100) CHARACTER SET latin1 NOT NULL,
  `preco_venda` varchar(100) CHARACTER SET latin1 NOT NULL,
  `codigo_produto` int(11) NOT NULL,
  PRIMARY KEY (`id_produto`,`codigo_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `categoria`, `imagem`, `descricao`, `preco`, `preco_venda`, `codigo_produto`) VALUES
(1, 'Geladeira', './img/geladeira1.jpg', ' Geladeira Brastemp Frost Free Inverse 573 litros cor Inox com Smart Bar ', ' 4514,90 ', ' 3869,\r10 ', 1),
(2, ' Geladeira ', './img/geladeira2.jpg', ' Geladeira Electrolux TF56 Frost Free Duplex 474 Litrosr ', ' 3398,00 ', ' 2659,05 ', 2),
(3, ' Geladeira ', './img/geladeira3.jpg', ' Geladeira Consul CRM43HK Frost Free Duplex 386 Litros Inox ', ' 2968,90 ', ' 2849,\r 90 ', 3),
(4, ' Fogao ', './img/fogao1.jpg', ' Fogao Consul Glass 4 Bocas CFO4VARUNA Acendimento Automatico Inox ', ' 1359,00 ', ' 1199,90 ', 4),
(5, ' Fogao ', './img/fogao2.jpg', ' Fogao de Piso Atlas Monaco Glass 4 Bocas Acendimento Automatico ', ' 522,00 ', ' 419,90 ', 5),
(6, ' Microondas ', './img/microondas1.jpg', ' Microondas Consul 32 Litros cor Inox Espelhado com Funcao Descongelar ', ' 839,00 ', ' 689,00 ', 6),
(7, ' Microondas ', './img/microondas2.jpg', ' Microondas 25 L Espelhado Pme25 Philco ', ' 847,00 ', ' 579,99 ', 7),
(8, ' Microondas ', './img/microondas3.jpg', ' Micro - ondas Electrolux 20 Litros MTO30 ', ' 529,00 ', ' 426,99 ', 8),
(9, 'Lava-loucas', './img/lava_loucas1.jpg', 'Lava-Loucas Electrolux, 10 Servicos, Painel Blue Touch, Inox - LV10X', ' 4529,00', ' 3649,00', 9),
(10, 'Lava-loucas', './img/lava_loucas2.jpg', 'Lava-Loucas Brastemp Ative 8 Servicos Branca - BLF08', ' 1929,00', ' 1749,00', 10),
(11, 'Lavadora de Roupas', './img/lava_roupas1.jpg', 'Lavadora de Roupas Brastemp 9kg Branca com 08 Programas de Lavagem', ' 1929,00', ' 1549,00', 11),
(12, 'Lavadora de Roupas', './img/lava_roupas2.jpg', ' Lavadora de Roupas Philco Inverter 12KG PLR12B', ' 3229,00 ', ' 2899,90', 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

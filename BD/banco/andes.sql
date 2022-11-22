-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 21-Nov-2022 às 12:45
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `andes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `categoriaID` int NOT NULL AUTO_INCREMENT,
  `nomecategoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`categoriaID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`categoriaID`, `nomecategoria`) VALUES
(5, 'gabinetes'),
(6, 'mouses'),
(8, 'monitores'),
(9, 'placas mãe'),
(10, 'servidores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `clienteID` int NOT NULL AUTO_INCREMENT,
  `nomecompleto` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `numero` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estadoID` tinyint DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `ddd` varchar(3) DEFAULT NULL,
  `telefone` varchar(18) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `senha` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nivel` varchar(10) DEFAULT NULL,
  `tempo_inativo` int NOT NULL,
  PRIMARY KEY (`clienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`clienteID`, `nomecompleto`, `endereco`, `complemento`, `numero`, `cidade`, `estadoID`, `cep`, `ddd`, `telefone`, `email`, `usuario`, `senha`, `nivel`, `tempo_inativo`) VALUES
(7, 'Bob', 'Kobe Dr', 'Suite 31', '2929 ', 'São Paulo', 27, '92123', '11', '99999-0001', 'bobrob@dru', 'bobrob', 'cheese', 'admin', 2),
(8, 'Lee', 'Priestly Dr', 'Suite 30', '5927 ', 'Rio de Janeiro', 22, '92008', '21', '9999-0101', 'ldkim@drum', 'ldkim', 'drums', 'admin', 5),
(9, 'Jane', 'Priestly Dr', 'Suite 01', '5924 ', 'Recife', 17, '92008', '81', '9999-0202', 'jstev@fili', 'zac', 'zac', 'admin', 5),
(33, 'Mary', 'Mill Lane', 'House', '22', 'Rio de Janeiro', 22, 'P0987GH', '21', '9999-0303', 'mary@sheep.com', 'mary', 'baa', 'user', 5),
(34, 'Adriaan', 'Main St.', 'House', '31', 'Porto Alegre', 21, '90876', '51', '9999-0001', 'joe@blow.net', 'joe', 'blow', 'user', 5),
(35, 'Yeshe', 'Place des Vosges', 'House', '26 ', 'Recife', 17, '75003', '81', '9999-0404', 'kako@alibert.org', 'kako', 'crow', 'user', 5),
(36, 'Jean-Claude', 'Rue des Archives', 'Suite 31', '26 ', 'Salvador', 5, '75003', '71', '9999-0500', 'bouquet@paris.com', 'bouquet', 'archives', 'foreign', 5),
(37, 'Charmian', 'Biscane Boulevard', 'Suite 55', '21', 'Fortaleza', 6, '87543', '85', '9999-0001', 'thepet@cows.com', 'petty', 'officer', 'admin', 5),
(38, 'Rodrigo Lima', 'Rua Amazonas', 'altos', '1567', 'Fortaleza', 6, '60441685', '85', '9794-6214', 'rlsoft@mail.com', 'rlsoft', '1234', 'user', 5),
(39, 'James', 'Lotus St', 'Suite 533', '33', 'Belo Horizonte', 13, '92107', '31', '9999-0001', 'jjones@thing.com', 'jj', 'magenta', 'user', 5),
(40, 'Scott', 'Harley St.', 'Suite 31', '1312 ', 'Curitiba', 16, '41414', '41', '9999-4001', 'scottie@theworks.camvria.com', 'scooby', 'doo', 'user', 5),
(41, 'Mavis', 'The Lane', 'Suite 01', '774', 'Florianopolis', 28, '99999', '48', '9999-0001', 'mave@formerly.sisters.org', 'mkirk', 'jesus', 'user', 5),
(42, 'Morton', 'Kwai', 'Suite 02', '101', 'João Pessoa', 15, '71717', '83', '9999-0001', 'mgold@brockyard.herrr.org', 'gold', 'rng665', 'user', 5),
(43, 'Monica', 'Arbor Drive', 'Suite 01', '21 ', 'Belém', 14, '91111', '91', '9999-0001', 'birch@nobodys.fool.com', 'birch', 'bsgr%', 'admin', 5),
(44, 'Amos', 'Framingham Ave', 'Suite 10', '4545 ', 'Manaus', 4, '31311', '92', '9999-0001', 'add@barnham.peoples.com', 'adur', 'adur', 'user', 5),
(45, 'Pietro', 'Vagam', 'Suite 01', '4010', 'Goiania', 9, 'dfsf', '63', '9999-0001', 'pcard@utica.gegli.it', 'cardinal', 'oojj&t', 'foreign', 5),
(46, 'Amosa', 'Conselheiro Av', 'Suite 15', '187', 'Brasília', 7, 'gfg', '61', '9999-9991', 'bosun@navarro.edu', 'partner', 'fairies', 'user', 5),
(47, 'Marvin', 'Domingos Dr', 'House', '2400', 'São Luis', 10, '30303', '98', '9999-0001', 'mdekal@megaprod.com', 'mdekal', 'uu6654', 'user', 5),
(48, 'Duncan', 'Aguamenon Av', 'Suite 21', '3010', 'Vitória', 8, '221', '27', '9999-0001', 'biggie@brabazon.co.il', 'brab', 'plane', 'foreign', 5),
(49, 'Brandon', 'Penny Lane', 'Suite 22', '1212 ', 'Macapá', 3, '21177', '96', '9999-0001', 'bshaft@thegroup.net', 'shaft', '3344510', 'user', 5),
(50, 'Raul', 'Farley Ave', 'Suite 10', '444 ', 'Maceió', 2, '92117', '82', '9999-0001', 'rost@aero.mx.com', 'pilot', 'brebby', 'user', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `departamentoID` int NOT NULL AUTO_INCREMENT,
  `nomedepartamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`departamentoID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`departamentoID`, `nomedepartamento`) VALUES
(1, 'financeiro'),
(2, 'comercial'),
(3, 'atendimento'),
(4, 'direção'),
(6, 'gerência financeira'),
(7, 'presidencia'),
(8, 'CPD');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE IF NOT EXISTS `estados` (
  `estadoID` tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigoUF` int DEFAULT NULL,
  `nome` char(20) DEFAULT '0',
  `sigla` char(2) DEFAULT NULL,
  PRIMARY KEY (`estadoID`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`estadoID`, `codigoUF`, `nome`, `sigla`) VALUES
(1, 12, 'Acre', 'AC'),
(2, 27, 'Alagoas', 'AL'),
(3, 16, 'Amapá', 'AP'),
(4, 13, 'Amazonas', 'AM'),
(5, 29, 'Bahia', 'BA'),
(6, 23, 'Ceará', 'CE'),
(7, 53, 'Distrito Federal', 'DF'),
(8, 32, 'Espírito Santo', 'ES'),
(9, 52, 'Goiás', 'GO'),
(10, 21, 'Maranhão', 'MA'),
(11, 51, 'Mato Grosso', 'MT'),
(12, 50, 'Mato Grosso do Sul', 'MS'),
(13, 31, 'Minas Gerais', 'MG'),
(14, 15, 'Pará', 'PA'),
(15, 25, 'Paraíba', 'PB'),
(16, 41, 'Paraná', 'PR'),
(17, 26, 'Pernambuco', 'PE'),
(18, 22, 'Piauí', 'PI'),
(19, 24, 'RG do Norte', 'RN'),
(20, 43, 'RG do Sul', 'RS'),
(21, 33, 'Rio de Janeiro', 'RJ'),
(22, 11, 'Rondônia', 'RO'),
(23, 14, 'Roraima', 'RR'),
(24, 42, 'Santa Catarina', 'SC'),
(25, 35, 'São Paulo', 'SP'),
(27, 17, 'Tocantins', 'TO'),
(26, 28, 'Sergipe', 'SE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `fornecedorID` int NOT NULL AUTO_INCREMENT,
  `nomefornecedor` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estadoID` tinyint DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fornecedorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`fornecedorID`, `nomefornecedor`, `endereco`, `cidade`, `estadoID`, `telefone`) VALUES
(1, 'Joe Mugger', 'Rua Ernesto de Paula Santos, 187', 'Recife', 17, '949 568 7852'),
(2, 'Dining Suppliers', '5 Hometown Dr.', 'São Paulo', 27, '565 123 1223'),
(3, 'Pacific Merchandise', '56 Parkway Plaza', 'Rio de Janeiro', 22, '310 345 4565'),
(4, 'Quick Clothing', '4598 Main St', 'Porto Alegre', 21, '858 555 1654'),
(5, 'Ibyte', 'Av. Bezerra de Menezes, 2450 - Pres. Kennedy, Fort', 'Fortaleza', 6, '(85) 99149-727');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores_contatos`
--

DROP TABLE IF EXISTS `fornecedores_contatos`;
CREATE TABLE IF NOT EXISTS `fornecedores_contatos` (
  `contatoID` int NOT NULL AUTO_INCREMENT,
  `fornecedorID` int DEFAULT NULL,
  `departamentoID` int DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contatoID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores_contatos`
--

INSERT INTO `fornecedores_contatos` (`contatoID`, `fornecedorID`, `departamentoID`, `nome`, `telefone`, `email`) VALUES
(1, 1, 1, 'Joana Piauí', '33262836', 'joana@joemugger.com'),
(2, 1, 2, 'Ricardo Prata', '33262836', 'ricardo@joemugger.com'),
(3, 2, 3, 'Gustavo Bege', '33262836', 'gustavo@dining.com'),
(4, 2, 2, 'Marta Borges', '33262836', 'marta@dining.com'),
(5, 3, 4, 'Fernando Maranhão', '33262836', 'fernando@pacific.com'),
(6, 3, 1, 'Ronaldo Catarinense', '33262836', 'ronaldo@pacific.com'),
(7, 4, 2, 'Alexandre Cisne', '33262836', 'alexandre@quickclothing.com'),
(8, 4, 1, 'Paulo José', '33262836', 'paulo@quickclothing.com'),
(9, 4, 4, 'Victor Nazário', '33262836', 'victor@quickclothing.com'),
(10, 4, 4, 'evellyn sales', '3326.2836', 'aneevellyn@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `franquias`
--

DROP TABLE IF EXISTS `franquias`;
CREATE TABLE IF NOT EXISTS `franquias` (
  `franquiaID` int NOT NULL AUTO_INCREMENT,
  `nomegerente` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estadoID` tinyint(1) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `dataabertura` date NOT NULL,
  `faturamento` decimal(10,2) NOT NULL,
  PRIMARY KEY (`franquiaID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `franquias`
--

INSERT INTO `franquias` (`franquiaID`, `nomegerente`, `endereco`, `cidade`, `estadoID`, `telefone`, `dataabertura`, `faturamento`) VALUES
(1, 'Fabiana Albuquerque', 'Rua Jose Lourenço, 870 Sala 210', 'Fortaleza', 6, '085-2615554', '2006-05-18', '200000.00'),
(2, 'Neto Leal', 'Rua Ernesto de Paula Santos, 187 Sala 505', 'Recife', 17, '081.3326.2836', '2006-11-01', '300000.00'),
(3, 'Roberto Rabelo', 'Av. Antonio Carlos Magalhaes, 188', 'Salvador', 5, '071.3580705', '2006-12-16', '450000.00'),
(4, 'Victor Alves', 'Av. Barão de Studart, 101', 'Fortaleza', 6, '085.2480500', '2007-01-02', '150000.00'),
(5, 'Anne Sampaio', 'Av. Senhor do Bonfim', 'Salvador', 5, '417 625 6005', '2007-03-08', '280000.00'),
(6, 'Vinicius Samico', 'Av. Agamenon Magalhaes', 'Recife', 17, '081.33222233', '2007-05-01', '120000.00'),
(7, 'Paula Sanguinetti', 'Av. Presidente Prudente', 'Recife', 1, '081.3326.2938', '2007-10-11', '150000.00'),
(8, 'Michelle Alves', 'Av. Getúlio Vargas', 'Porto Alegre', 21, '051.3030302', '2007-11-20', '320000.00'),
(9, 'Saulo Brito', 'Av. São João, 10', 'São Paulo', 27, '011.3223-2232', '2008-04-02', '323221.00'),
(10, 'Davi Sampaio', 'Av. Copacabana, 101', 'Rio de Janeiro', 22, '021.3223-1010', '2008-05-01', '223421.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `pedidoID` int NOT NULL AUTO_INCREMENT,
  `clienteID` int NOT NULL,
  `transportadoraID` int DEFAULT NULL,
  `data_pedido` date NOT NULL,
  `data_saida` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `status_pedido` tinyint NOT NULL,
  `valor_pedido` decimal(10,2) NOT NULL,
  `conhecimento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pedidoID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`pedidoID`, `clienteID`, `transportadoraID`, `data_pedido`, `data_saida`, `data_entrega`, `status_pedido`, `valor_pedido`, `conhecimento`) VALUES
(1, 7, 2, '2006-11-19', '2006-11-19', '2006-11-24', 1, '480.00', '2324324'),
(2, 8, 2, '2006-11-19', '2006-11-24', '2006-11-29', 1, '295.00', '2342342'),
(3, 8, 3, '2006-12-20', '2006-12-20', '2006-12-25', 2, '650.00', '2342341'),
(4, 22, 1, '2007-12-22', '2007-12-23', '2007-12-29', 1, '240.00', '2323424'),
(5, 33, 1, '2007-01-21', '2007-01-22', '2007-01-28', 1, '600.00', '4634633'),
(6, 33, 2, '2007-01-21', '2007-01-22', '2007-01-27', 1, '2720.00', '5453343'),
(7, 35, 1, '2007-01-24', '2007-01-25', '2007-01-28', 3, '260.00', '5646442'),
(8, 40, 3, '2007-01-27', '2007-01-29', '2007-01-31', 4, '1840.00', '4657574'),
(9, 43, 1, '2007-02-01', '2007-02-01', '2007-02-01', 1, '780.00', '9837958'),
(10, 48, 2, '2007-02-01', '2007-02-01', '2007-02-01', 2, '2240.00', '4345646'),
(11, 48, 3, '2007-02-03', '2007-02-03', '2007-02-08', 2, '1500.00', '7628364'),
(12, 22, 2, '2007-02-03', '2007-02-03', '2007-02-09', 1, '450.00', '6284882'),
(13, 35, 3, '2007-03-18', '2007-03-26', '2007-03-30', 1, '800.00', '7687688'),
(14, 40, 2, '2007-03-25', '2007-03-25', '2007-03-26', 2, '380.00', '8787999'),
(15, 7, 1, '2007-04-02', '2007-04-05', '2007-04-09', 2, '475.00', '2348729'),
(16, 22, 3, '2007-04-05', '2007-04-05', '2007-04-11', 1, '290.00', '3253221'),
(17, 50, 2, '2007-04-19', '2007-04-19', '2007-04-19', 2, '810.00', '3234221'),
(18, 8, 1, '2007-05-01', '2007-02-12', '2007-02-17', 2, '445.00', '2352329'),
(19, 7, 3, '2007-05-04', '2007-05-05', '2007-05-07', 1, '295.00', '7638888'),
(20, 50, 1, '2007-06-10', '2007-06-10', '2007-06-11', 2, '475.00', '7987989');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_item`
--

DROP TABLE IF EXISTS `pedidos_item`;
CREATE TABLE IF NOT EXISTS `pedidos_item` (
  `pedidoID` int DEFAULT NULL,
  `produtoID` int DEFAULT NULL,
  `precounitario` decimal(10,2) DEFAULT NULL,
  `quantidade` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos_item`
--

INSERT INTO `pedidos_item` (`pedidoID`, `produtoID`, `precounitario`, `quantidade`) VALUES
(1, 1, '20.00', 10),
(1, 2, '9.00', 20),
(1, 5, '20.00', 5),
(2, 10, '5.00', 50),
(2, 11, '9.00', 5),
(3, 13, '14.00', 20),
(3, 15, '14.00', 10),
(3, 20, '12.00', 5),
(3, 19, '12.00', 10),
(3, 21, '5.00', 10),
(4, 20, '12.00', 20),
(5, 18, '12.00', 20),
(5, 19, '12.00', 10),
(5, 20, '12.00', 15),
(5, 17, '12.00', 5),
(6, 1, '20.00', 5),
(6, 2, '9.00', 100),
(6, 3, '3.00', 20),
(6, 4, '3.00', 200),
(6, 7, '14.00', 70),
(6, 19, '12.00', 10),
(7, 13, '14.00', 10),
(7, 14, '9.00', 5),
(7, 21, '5.00', 15),
(8, 16, '12.00', 5),
(8, 17, '12.00', 5),
(8, 10, '12.00', 60),
(8, 1, '20.00', 50),
(9, 11, '12.00', 30),
(9, 12, '21.00', 20),
(10, 18, '12.00', 35),
(10, 9, '5.00', 100),
(10, 7, '7.00', 90),
(10, 14, '9.00', 50),
(10, 6, '14.00', 10),
(10, 22, '2.00', 50),
(11, 21, '5.00', 300),
(12, 11, '12.00', 10),
(12, 5, '21.00', 15),
(12, 3, '3.00', 5),
(13, 2, '14.00', 20),
(13, 19, '12.00', 10),
(13, 22, '2.00', 50),
(13, 3, '3.00', 100),
(14, 7, '7.00', 50),
(14, 8, '3.00', 10),
(15, 1, '20.00', 8),
(15, 2, '9.00', 15),
(15, 17, '12.00', 15),
(16, 18, '12.00', 10),
(16, 19, '12.00', 5),
(16, 21, '5.00', 10),
(16, 10, '12.00', 5),
(17, 6, '14.00', 5),
(17, 8, '3.00', 100),
(17, 2, '9.00', 15),
(17, 12, '21.00', 5),
(17, 13, '14.00', 5),
(17, 15, '14.00', 5),
(17, 17, '12.00', 5),
(18, 1, '20.00', 20),
(18, 3, '3.00', 15),
(19, 21, '5.00', 20),
(19, 7, '7.00', 15),
(19, 14, '9.00', 10),
(20, 18, '12.00', 20),
(20, 19, '12.00', 10),
(20, 22, '2.00', 15),
(20, 8, '3.00', 5),
(20, 15, '14.00', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_status`
--

DROP TABLE IF EXISTS `pedidos_status`;
CREATE TABLE IF NOT EXISTS `pedidos_status` (
  `statusID` int NOT NULL AUTO_INCREMENT,
  `nomestatus` varchar(50) NOT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos_status`
--

INSERT INTO `pedidos_status` (`statusID`, `nomestatus`) VALUES
(1, 'Pagamento Confirmado'),
(2, 'Pagamento Pendente'),
(3, 'Cancelado pelo cliente'),
(4, 'Cancelado pela empresa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `produtoID` int NOT NULL AUTO_INCREMENT,
  `nomeproduto` varchar(50) DEFAULT NULL,
  `descricao` longtext,
  `codigobarra` varchar(15) DEFAULT NULL,
  `tempoentrega` tinyint DEFAULT NULL,
  `precorevenda` decimal(10,2) DEFAULT NULL,
  `precounitario` decimal(10,2) DEFAULT NULL,
  `estoque` mediumint DEFAULT NULL,
  `imagemgrande` varchar(100) DEFAULT NULL,
  `imagempequena` varchar(100) DEFAULT NULL,
  `descontinuado` tinyint(1) DEFAULT '0',
  `fornecedorID` tinyint DEFAULT NULL,
  `categoriaID` tinyint DEFAULT NULL,
  PRIMARY KEY (`produtoID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`produtoID`, `nomeproduto`, `descricao`, `codigobarra`, `tempoentrega`, `precorevenda`, `precounitario`, `estoque`, `imagemgrande`, `imagempequena`, `descontinuado`, `fornecedorID`, `categoriaID`) VALUES
(23, 'Gabinete C3Tech', 'O gabinete MT-G400BK e o produto ideal para publico gamer e entusiastas. Com seu painel lateral em full acrilico e iluminacao em led multicores traz um design arrojado e personalizado para o produto. Suporta placa-mae ITX/Micro ATX/ATX e suporte para Water Cooler.\r\nCaracterísticas MT-G400BK\r\n- Gabinete Gamer\r\n- Mid tower\r\n- Suporta placas mãe: ITX / MicroATX / ATX\r\n- Suporte a 2 SSDs 2,5\r\n- Suporte a 2 HDD 3,5\r\n- 2 portas USB 2.0\r\n- 1 portas USB 3.0\r\n- Entrada para microfone e saída para fone de ouvido (Padrão P2 3,5mm)\r\n- HD Áudio\r\n- Organizador de cabos\r\n- Suporte a Water Cooler\r\n- Iluminação no painel frontal em led multicores\r\n- Filtro Anti-Poeira com fixação magnética\r\n- Fonte de Alimentação não inclusa\r\n- Lateral em full Acrílico', 'MT-G400BK', 1, '862.00', '870.00', 25, 'images/produtos_imagem/gabinetes/Gabinete_C3Tech.png', 'images/produtos_imagem/gabinetes/Gabinete_C3Tech.png', 0, NULL, 5),
(25, 'Gabinete BPC-C5827', '-Marca:Brazil PC\r\n-Modelo:C5827 \r\n-Tipo: MATX\r\n-Painel Frontal: Plástico em acabamento Black Piano\r\n-Painel Traseiro: Aço com aberturas de ventilação\r\n-Chassi: Interior prata de SPCC 0.40mm\r\n-Conexões: 2xUSB + AUDIO\r\n-Tipo/Posição da Fonte: ATX parte superior\r\n-Tipo De Placa Mãe: MATX -Baias: 2.5\"X1 3.5“x4 5.25“X2\r\n-Slots: 4 slots PCI\r\n-Limite de comprimento VGA: 230 mm\r\n-Limite de altura da CPU: 170 mm\r\n-Tamanho (Comprimentox Largura xAltura): 380X175X365 mm\r\n-Peso: 2.8kg', 'BPC-C5827', 1, '221.00', '230.00', 30, 'images/produtos_imagem/gabinetes/Gabinete_BPC-C5827.png', 'images/produtos_imagem/gabinetes/Gabinete_BPC-C5827.png', 0, NULL, 5),
(26, 'Gabinete ATX T-Dagger Cube - Branco', 'GABINETE ATX T-DAGGER CUBE BRANCO S/FONTE T-TGC305W\r\n\r\nCaracterísticas:\r\n- Marca: T-DAGGER\r\n- Modelo: T-TGC305W\r\n\r\nEspecificações:\r\n- Espesso Painel: de Vidro Temperado na parte lateral\r\n- Sistema avançado: de entrada de Fluxo de Ar na parte Frontal\r\n- Slots para 3 FANS: de 120mm na parte frontal\r\n- Tipo: Mid Tower\r\n- Placa Mãe Suportada: ATX\r\n- Baias: 1 x 3.5\" / 1 x 2.5\"\r\n\r\nSuporte para Radiador/Watercoolers:\r\n- 1 x 240mm (Topo)\r\n- 1 x 120 mm (Atrás)\r\n- 1 x 240mm (Frente)\r\n\r\nSuporte para Fans:\r\n- 2 x 120/140mm (Topo)\r\n- 1 x 120mm (Atrás)\r\n- 3 x 120mm (Frente)\r\n\r\nConexões Frontais:\r\n- 1 x USB 3.0\r\n- 2 x USB 2.0\r\n- P2 (Áudio + Mic), Power, Reset\r\n\r\nDimensões:\r\n- 37 x 20 x 43,5 cm', 'T-TGC305W', 1, '289.00', '300.00', 20, 'images/produtos_imagem/gabinetes/Gabinete_ATX.png', 'images/produtos_imagem/gabinetes/Gabinete_ATX.png', 0, NULL, 5),
(27, 'Gabinete KWG M1', 'Características:\r\n- Marca: KWG\r\n- Modelo: Vela M1 RGB Preto\r\n\r\nEspecificações:\r\n- Iluminação Rainbow\r\n- Suporte para placas-mãe até o padrão ATX\r\n- Painel de janela transparente ampliado\r\n- Um toque para alternar facilmente o estilo de iluminação de fluxo RGB\r\n- Portas Input/Output facilmente acessíveis\r\n- Tipo de gabinete: Mid Tower\r\n- Suporte para placa-mãe: ATX, Micro-ATX\r\n- Slots de expansão: 7\r\n- Material: SPCC e ABS e vidro acrílico\r\n- Janela: Esquerda\r\n- Suporte do Radiador: N/A\r\n- Suporte para Ventoinha: 2 x 120mm\r\n- Traseira: 1 x 80mm\r\n- Fans pré-instaladas: N/A\r\n- Baias de unidade: 2 x 3,5 / 2 x 2,5\r\n- Porta Input/ Output: USB x2, USB 3.0 x1, Áudio HD x1, controle de LED x1\r\n- Fonte: Padrão ATX\r\n- Limitação da altura do cooler da CPU: 160mm\r\n- Limitação de comprimento VGA: 340mm\r\n- Limitação de comprimento da fonte de alimentação: 170mm\r\n\r\nPeso c/ Embalagem:\r\n- 3.960 kg\r\n\r\nDimensões: 365 x 175 x 410 mm', 'KWG-M1', 1, '274.00', '280.00', 20, 'images/produtos_imagem/gabinetes/Gabinete_kwgM1.png', 'images/produtos_imagem/gabinetes/Gabinete_kwgM1.png', 0, NULL, 5),
(28, 'Gabinete Gamer TGC305B', 'A T-dagger é uma marca focada em trazer produtos de qualidade com um bom custo-benefício, para surpreender o mercado ela trouxe a linha de gabinetes Cube por um preço bem acessível para os gamers e entusiastas.\r\n\r\nMarca: T-Dagger\r\n\r\nModelo: T-TGC305B\r\n\r\nEspesso Painel de Vidro Temperado na parte lateral\r\n\r\nSistema avançado de entrada de Fluxo de Ar na parte Frontal\r\n\r\nSlots para 3 FANS de 120mm na parte frontal\r\n\r\nTipo Mid Tower\r\n\r\nPlaca Mãe Suportada: ATX\r\n\r\nSlots para Drives: 4x SSD de 2.5\" 2x HDD de 3.5\'\r\n\r\nSuporte para Radiador/Watercoolers\r\n\r\n1 x 240mm (Topo)\r\n\r\n1 x 120 mm (Atrás)\r\n\r\n1 x 240mm (Frente)\r\n\r\nSuporte para Fans\r\n\r\n2 x 120/140mm (Topo)\r\n\r\n1 x 120mm (Atrás)\r\n\r\n3 x 120mm (Frente)\r\n\r\nConexões Frontais\r\n\r\n1 x USB 3.0\r\n\r\n2 x USB 2.0\r\n\r\nP2 (Áudio + Mic), Power, Reset\r\n\r\nDimensões\r\n\r\n37 x 20 x 43,5 cm\r\n\r\nGarantia\r\n\r\n06 meses de garantia\r\n\r\n(3 meses de garantia contratual junto ao fabricante + 3 meses referentes à garantia legal, nos termos do artigo 26, II, do Código de Defesa do Consumidor).\r\n\r\n', 'T-TGC305B', 1, '210.00', '215.00', 20, 'images/produtos_imagem/gabinetes/gabinete_gamer-tgc305b.jpg', 'images/produtos_imagem/gabinetes/gabinete_gamer-tgc305b.jpg', 0, NULL, 5),
(29, 'Monitor LG IPS Full HD 23,8\"', 'Tamanho da tela	24 Polegadas\r\nResolução máxima do visor	1920 x 1080 Pixels\r\nMarca	LG\r\nCaracterísticas especiais	Ajuste de Inclinação, Sem moldura\r\nTaxa de atualização	60 Hz\r\n\r\nA consistência de características do Monitor LG IPS e a diminuição nas mudanças de temperatura da cor, traz uma impressão de cor idêntica a imagem real.\r\nEquipado com Flicker Safe, função que elimina o efeito Flicker (rápidas variações de brilho). Tenha mais tempo de uso sem nenhum tipo de incômodo ou cansaço visual.\r\nMaior conforto visual com o monitor LG IPS, que proporciona imagens nítidas com alterações de cores suaves e livres do efeito fantasma. Ele permite que você desfrute de qualquer conteúdo, como filmes de ação, navegar na web e jogos de RPG por um longo tempo com conforto.\r\nO OnScreen Control permite alterar as configurações do monitor, customizar a tela em até 14 modos.\r\nCom o FreeSync, os jogadores podem experimentar movimentos perfeitos e fluidos durante suas funções de altas configurações visuais.', '?24MP400-B.AWZ', 1, '879.00', '881.00', 20, 'images/produtos_imagem/Monitores/monitor_LG_IPS_Full_HD.jpg', 'images/produtos_imagem/Monitores/monitor_LG_IPS_Full_HD.jpg', 0, NULL, 8),
(30, 'Monitor Samsung Odyssey G3', 'Monitor Gamer Samsung Odyssey 24\", FHD, 144Hz, 1ms, com ajuste de altura, HDMI, DP, VGA, Freesync, Preto, Série G3', 'LF24G35TFWLXZD', 1, '986.00', '993.00', 10, 'images/produtos_imagem/Monitores/Monitor_Samsung_Odyssey_G3.jpg', 'images/produtos_imagem/Monitores/Monitor_Samsung_Odyssey_G3.jpg', 0, NULL, 8),
(31, 'Monitor Samsung T350', 'Design minimalista, concentração máxima. Monitor Gamer Samsung 22” Série T350, possui tela com 3 lados sem borda traz uma estética limpa e moderna para qualquer ambiente de trabalho. Em um setup com vários monitores, se alinham perfeitamente para uma visualização praticamente sem espaços e sem distrações. Experiência de entretenimento superfluida. AMD Radeon FreeSync™ mantém a taxa de atualização do monitor e da placa gráfica em sincronia para reduzir a quebra de imagem. Assista a filmes e jogue sem interrupções. Até mesmo as cenas rápidas são perfeitas e suaves. Conta com o painel IPS preserva a nitidez e a vivacidade das cores em cada centímetro da tela e com as portas HDMI e D-sub.', 'LF22T350FHLMZD', 1, '810.00', '820.00', 15, 'images/produtos_imagem/Monitores/Monitor_Samsung_T350.jpg', 'images/produtos_imagem/Monitores/Monitor_Samsung_T350.jpg', 0, NULL, 8),
(32, 'Monitor Samsung UHD 28\"', 'Características:\r\n\r\n- Marca: Samsung\r\n\r\n- Modelo: LU28R550UQLMZD\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n- Tamanho da tela (cm): 70.8\r\n\r\n- Plano / Curvo: Plano\r\n\r\n- Área de Display Ativo (HxV) (mm): 620.928(H) * 341.28(V)\r\n\r\n- Proporção de Tela: 16:9\r\n\r\n- Tipo de painel: IPS\r\n\r\n- Brilho (Típico): 300cd/m2\r\n\r\n- Brilho (mínimo): 250cd/m2\r\n\r\n- Contraste Estático: 1,000:1(Padrão)\r\n\r\n- Tipo de Contraste: Mega ? DCR\r\n\r\n- HDR(High Dynamic Range): HDR10\r\n\r\n- Resolução: 3,840 x 2,160\r\n\r\n- Tempo de resposta: 4(GTG)\r\n\r\n- Ângulo de visão (horizontal / vertical): 178°/178°\r\n\r\n- Suporte de Cor: Máx. 1B\r\n\r\n- Color Gamut (DCI Coverage): 0.9\r\n\r\n- Taxa de atualização: Máx. 60 Hz\r\n\r\n \r\n\r\nRecursos gerais:\r\n\r\n- Samsung MagicBright: Sim\r\n\r\n- Samsung Magic Upscale: Sim\r\n\r\n- Eco Saving Plus: Sim\r\n\r\n- Eye Saver Mode: Sim\r\n\r\n- Flicker Free: Sim\r\n\r\n- Picture-In-Picture: Sim\r\n\r\n- Picture-By-Picture: Sim\r\n\r\n- Modo Game: Sim\r\n\r\n- Tamanho da Imagem: Sim\r\n\r\n- Caixa de configuração fácil: Sim\r\n\r\n- Certificação Windows: Windows 10\r\n\r\n- FreeSync: Sim\r\n\r\n- Off Timer Plus: Sim\r\n\r\n \r\n\r\nInterface:\r\n\r\n- Display sem fio: Não\r\n\r\n- D-Sub: Não\r\n\r\n- DVI: Não\r\n\r\n- Dual Link DVI: Não\r\n\r\n- Display Port: 1 EA\r\n\r\n- Versão do Display Port: 1.2\r\n\r\n- Display Port Out: Não\r\n\r\n- Versão da saída do Display Port: Não\r\n\r\n- Mini-Display Port: Não\r\n\r\n- HDMI: 2 EA\r\n\r\n- Versão HDMI: 2\r\n\r\n- Entrada de áudio: Não\r\n\r\n- Fones de ouvido: Sim\r\n\r\n- Portas USB: Não\r\n\r\n- Versão hub USB: Não\r\n\r\n- USB-C: Não\r\n\r\n \r\n\r\nÁudio:\r\n\r\n- Alto-falante: Não\r\n\r\n- Soundbar USB (pronto): Não\r\n\r\n\r\n\r\nCondições operacionais:\r\n\r\n- Temperatura: 10~40 ?\r\n\r\n- Umidade: 10~80, sem condensação\r\n\r\n \r\n\r\nCalibração:\r\n\r\n- Ajuste de fábrica: Sim\r\n\r\n \r\n\r\nDesign:\r\n\r\n-Tipo de Suporte: SIMPLES\r\n\r\n- Inclinação Ajustável: -2.0?(±2.0?) ~ 15.0?(±2.0?)\r\n\r\n- Montagem de parede: 75.0 x 75.0\r\n\r\n \r\n\r\nAlimentação:\r\n\r\n- Alimentação de Energia: AC 100~240V\r\n\r\n- Consumo de Energia (DPMS): ?0.5 W\r\n\r\n- Consumo de energia (modo desligado): ?0.3 W\r\n\r\n- Tipo: Adaptador externo\r\n\r\n \r\n\r\nConteúdo da Embalagem:\r\n\r\n- Monitor Samsung LED\r\n\r\n- Comprimento do cabo de força: 1.5 m\r\n\r\n\r\nGarantia:\r\n12 meses de garantia\r\n\r\nPeso:\r\n10651 gramas (bruto com embalagem)', 'LU28R550UQLMZD', 1, '1089.00', '1100.00', 12, 'images/produtos_imagem/Monitores/Monitor_UHD_Samsung_28.jpg', 'images/produtos_imagem/Monitores/Monitor_UHD_Samsung_28.jpg', 0, NULL, 8),
(33, 'Mouse Dell WM126', 'Mouse Dell Conexão Wireless - WM126 | O mouse óptico wireless WM126 da Dell oferece performance livre de fios para seu uso diário com excelente duração da bateria. Ele foi projetado para criar um espaço de trabalho organizado com uma conexão RF wireless e plug-and-play confiável.\r\n\r\nMarca	?Dell\r\nFabricante	?Dell Computers\r\nCor	?Preto\r\nAltura do produto	?3.56 centímetros\r\nLargura do produto	?5.73 centímetros\r\nInterface de comunicação	?RF\r\nTecnologia de conexão	?Sem fio\r\nPadrão de conexão sem fio	?Frequência de rádio de 2.4 GHz, 802.11a/b/g/n\r\nQuantidade de botões	?3\r\nPilhas ou baterias inclusas	?Sim\r\nConteúdo de energia da bateria de lítio	?4.9 Watt-hora\r\nPacote da bateria de lítio	?Pilhas contidas no equipamento\r\nPeso da bateria ou pilha de lítio	?0.88 Grams\r\nNúmero de células ou pilhas de íon de lítio	?1\r\nPeso do produto	?58 g\r\nDimensões do produto	?9.48 x 5.73 x 3.56 cm; 58 g\r\nPilha(s) ou bateria(s):	?1 CR5 baterias ou pilhas necessárias (inclusas).\r\nNúmero do modelo	?NNP0G\r\nDescontinuado pelo fabricante	?Não\r\nFunciona a bateria ou pilha?	?Sim', 'NNP0G', 1, '96.00', '98.00', 20, 'images/produtos_imagem/mouses/Mouse_Dell_WM126.avif', 'images/produtos_imagem/mouses/Mouse_Dell_WM126.avif', 0, NULL, 6),
(34, 'Mouse Gamer Logitech G403 Hero', 'Mouse Gamer Logitech G403 Hero \r\n \r\n\r\nO G403 entra no ringue com a nova geração do sensor HERO 25K. Prepare-se para um mouse com rastreamento 1:1 no próximo nível, suavização, filtragem ou aceleração zero.\r\n\r\n \r\n\r\nSensor Hero 25K\r\n \r\n\r\nConheça a nova geração do sensor HERO 25K – Nosso sensor para jogos mais avançado com rastreamento 1:1, IPS de 400, além de suavização, filtragem e aceleração nulas. \r\n\r\n \r\n\r\nLightSync RGB \r\n \r\n\r\nIluminação inteligente específica para jogos, com espectro RGB completo, que responde às ações, ao áudio e às cores da tela no jogo, sincronizada nos equipamentos Logitech. Personalize animações de iluminação e efeitos de 16,8 milhões de cores usando o software de jogos G HUB, e personalize para combinar com seu equipamento. \r\n\r\n \r\n\r\nConforto e Qualidade Extremos \r\n \r\n\r\nO G403 é leve e confortavelmente projetado para se moldar à sua mão com alças de borracha para controle adicional. Um peso removível opcional de 10 g permite ajustar o peso às suas preferências. \r\n\r\n \r\n\r\nDesempenho de Jogo Avançado \r\n \r\n\r\nCom um tempo de resposta de 1 ms, o G403 é até 8x mais rápido do que os mouses padrão não projetados especificamente para jogos, oferecendo movimentos e cliques quase instantâneos. O G403 oferece tensionamento do botão de mola de metal avançado que mantém os botões primários esquerdo e direito do mouse posicionados para disparar com menos força. Isso significa uma sensação de botão, resposta e consistência excepcionais a cada clique. ', '910-005631', 1, '205.00', '210.00', 15, 'images/produtos_imagem/mouses/Mouse_G403.jpg', 'images/produtos_imagem/mouses/Mouse_G403.jpg', 0, NULL, 6),
(35, 'Mouse HP M160', 'Características:\r\n\r\n- Marca: HP\r\n\r\n- Modelo: 7ZZ79AA#ABM\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n- Conexão: USB\r\n\r\n- 1000DPI\r\n\r\n- Número de botões: 3\r\n\r\n- Iluminação: LED\r\n\r\n- Comprimento do cabo: 1.3m\r\n\r\n- 2 milhões de cliques\r\n\r\n- Ergonômico \r\n\r\n \r\n\r\nConteúdo da Embalagem:\r\n\r\n- 1x Mouse Gamer HP M160, LED\r\n\r\n- Guia do Usuário\r\n\r\n\r\nGarantia:\r\n12 meses de garantia\r\n\r\nPeso:\r\n150 gramas (bruto com embalagem)', '7ZZ79AA#ABM', 1, '46.00', '50.00', 15, 'images/produtos_imagem/mouses/Mouse_HP_M160.jpg', 'images/produtos_imagem/mouses/Mouse_HP_M160.jpg', 0, NULL, 6),
(36, 'Mouse Logitech Pro Wireless', 'Projetado em colaboração direta de muitos jogadores profissionais de e-sports, o mouse gamer PRO Wireless foi desenvolvido de acordo com os exigentes padrões de alguns dos maiores profissionais de e-sports do mundo. O PRO Wireless gaming mouse foi concebido para oferecer um desempenho de ponta e inclui as mais recentes e avançadas tecnologias disponíveis. Com a tecnologia sem fio LIGHTSPEED, o PRO Wireless supera as limitações de latência, conectividade e energia para oferecer uma conexão de taxa de transmissão de 1 ms, sólida e super-rápida. O PRO Wireless gaming mouse também está equipado com a versão mais recente do sensor HERO 25K, nosso sensor óptico de última geração que é o sensor para jogos de melhor desempenho e eficiência do mercado com sensibilidade ajustável. Play to win.\r\n\r\nCaracterísticas:\r\n- Marca: Logitech G\r\n- Modelo: 910-005271\r\n\r\n\r\nEspecificações:\r\n- Memória integrada.\r\n- Sistema tensor de clique.\r\n- Iluminação RGB com aproximadamente 16,8 milhões de cores.\r\n- Ambidestro\r\n\r\n \r\n\r\nRastreamento:\r\n- Sensor: HEROTM.\r\n- Resolução:100 –16.000 DPI.\r\n- Aceleração máx.: > 40 G*.\r\n- Velocidade máx.: > 400 ips*.\r\n- Suavização/aceleração/filtragem nulas.\r\n\r\n \r\n\r\nSensibilidade:\r\n- Taxa de transmissão USB:1000 Hz (1 ms).\r\n- Microprocessador: 32 bits ARM.\r\n\r\n \r\n\r\nDurabilidade:\r\n- Base de PTFE:Alcance de 250 km*.\r\n\r\n \r\n\r\nDurabilidade da Bateria **:\r\n- Com iluminação padrão: 48 h.\r\n- Sem iluminação: 60 h.\r\n\r\n\r\nFisico:\r\n- Altura: 125,0 mm\r\n- Largura: 63,5 mm\r\n- Profundidade: 40,0 mm\r\n\r\n\r\nRecursos:\r\n- Sensor HERO com 16.000 DPI, até 400 IPS e zero suavização/filtragem/ aceleração.\r\n- LIGHTSPEEDTM sem fio, com rápida taxa de transmissão de 1 ms.\r\n- Design ultraleve (80 g) para controle e consistência sem distrações.\r\n- Formato ergonômico e ambidestro com botões laterais removíveis.\r\n\r\n \r\n\r\nConteúdo da embalagem:\r\n- Receptor sem fio LIGHTSPEEDTM.\r\n- Cabo de dados/carregamento.\r\n- Extensão de receptor USB.\r\n- Botões laterais (2 lado esquerdo, 2 lado direito).\r\n- Capas para botões laterais (2 lado esquerdo, 2 lado direito).\r\n- Documentação do usuário.\r\n\r\n \r\n\r\n* Avaliado no Logitech G240 Gaming Mouse Pad.\r\n\r\n** A vida útil da bateria varia, dependendo do usuário e das condições de computação.\r\n\r\n\r\nGarantia:\r\n24 meses de garantia\r\n\r\nPeso:\r\n350 gramas (bruto com embalagem)', '910-005271', 1, '602.00', '610.00', 15, 'images/produtos_imagem/mouses/Mouse_Logitech_Pro_Wireless.jpg', 'images/produtos_imagem/mouses/Mouse_Logitech_Pro_Wireless.jpg', 0, NULL, 6),
(37, 'Placa Mãe Asus B450M', '- Marca: Asus\r\n- Modelo: Prime Gaming/BR (90MB10H0-C1BAY0)\r\n\r\nEspecificações:\r\nProcessador(es)\r\n- Processadores AMD Socket AM4 AMD Ryzen? 2ª Geração/Ryzen? com Radeon? Vega Graphics/Ryzen? 1ª Geração\r\n\r\nChipset\r\n- Processadores AMD B450\r\n\r\nMemória\r\n- Processadores AMD Ryzen? 2ª Geração/ Ryzen? com Radeon? Vega Graphics/ Athlon? com Radeon? Vega Graphics/ Ryzen? 1ª Geração\r\n- Memória 4 x DIMM, máximo de 64GB, DDR4 3466(O.C.)/3200(O.C.)/3000(O.C.)/2800(O.C.)/2666/2400/2133 MHz Un-buffered\r\n- Arquitetura de memória: Dual Channel\r\nO Suporte a ECC Memory (modo ECC) varia de acordo com a CPU.\r\n* Consulte www.asus.com.br ou o manual do usuário para a lista de vendedores qualificados de memória.\r\n\r\nGráfico\r\n- Gráficos Integrados nos Processadores AMD Ryzen? com Radeon? Vega Graphics/ Athlon? com Radeon? Vega Graphics\r\n- Múltiplas saídas de vídeo: portas HDMI/DVI-D/D-Sub (VGA)\r\n- Suporta DVI-D com resolução máxima de 1920  x 1200  @ 60 Hz\r\n- Suporta HDMI 2.0b com resolução máxima de 4096  x 2160  @ 60  Hz\r\n- Suporta D-sub com resolução máxima de 1920  x 1200  @ 60  Hz\r\n\r\nSlots de expansão\r\nProcessadores AMD Ryzen? 2ª Geração/ Processadores Ryzen? 1ª Geração\r\n- 1 x PCIe 3.0/2.0 x16 (modo x16)\r\nProcessador AMD Ryzen? com Radeon? Vega Graphics\r\n- 1 x PCIe 3.0 x16 (modo x8) *1\r\nProcessadores AMD Athlon? com Radeon? Vega Graphics\r\n- 1 x PCIe 3.0/2.0 x16 (max at x4 mode)\r\nChipset AMD B450\r\n- 2 x PCIe 2.0 x1\r\n\r\nArmazenamento\r\nChipset AMD B450 :\r\n- 4 x Porta(s) SATA 6Gb/s,\r\nSuporta Raid 0, 1, 10\r\nProcessadores AMD Ryzen? 2ª Geração/ Ryzen? com Radeon? Vega Graphics/ Athlon? com Radeon? Vega Graphics/ Ryzen? 1ª Geração :\r\n- 2 x Porta(s) SATA 6Gb/s,\r\n- Suporta Raid 0, 1, 10\r\nProcessadores AMD Ryzen? 2ª Geração/ Ryzen? com Radeon? Vega Graphics/ Processadores Ryzen? 1ª Geração :\r\n- 1 x M.2 Socket 3, com M key, suporte a dispositivo de armazenamento tipo 2242/2260/2280/22110 (modo SATA & PCIE 3.0 x 4)*2\r\nProcessadores AMD Athlon? com Radeon? Vega Graphics :\r\n- 1 x M.2 Socket 3, com M key, suporte a dispositivo de armazenamento tipo 2242/2260/2280/22110 (modo SATA)*2\r\n\r\nLAN\r\n1 x Gigabit LAN Realtek® RTL8111H, 1 x Gigabit LAN\r\nASUS LAN Guard\r\n\r\nÁudio\r\nRealtek® ALC887 com 8 canais - CODEC de alta definição\r\nRecursos de áudio:\r\n- Proteção de Áudio: Garante precisão na separação analógica/digital e reduz a maioria das interferências multi-laterais.\r\n- Camadas de áudio PCB dedicadas: Camadas separadas para o canal direito e esquerdo para proteger a qualidade dos sinais sensíveis de áudio.\r\n- Design iluminado por LED - Ilumine a sua construção com caminhos de áudio iluminados.\r\n- Capacitores de áudio premium japoneses: fornecem som natural e imersivo com clareza e fidelidade excepcionais\r\n* Escolha o chassi com o módulo de áudio HD no painel frontal para suportar a saída de áudio de 8 canais.\r\n\r\nPortas USB\r\nProcessadores AMD Ryzen? 2ª Geração/ Ryzen? com Radeon? Vega Graphics/ Athlon? com Radeon? Vega Graphics/ Ryzen? 1ª Geração:\r\n- 4 porta(s) USB 3.1 Gen 1 (4 no painel traseiro, azul)\r\nAMD B450 chipset:\r\n- 2 porta(s) USB 3.1 Gen 2 (2 no painel traseiro, )\r\nAMD B450 chipset :\r\n- 2 porta(s) USB 3.1 Gen 1 (conectores internos para mais 2 porta(s))\r\nAMD B450 chipset :\r\n- 4 porta(s) USB 2.0/1.1 (conectores internos para mais 4 porta(s))\r\n\r\nRecursos especiais\r\nASUS 5X Protection III :\r\n- ASUS SafeSlot Core: Slot PCIe reforçado para evitar danos\r\n- ASUS LANGuard: Protege contra picos, raios e descargas de eletricidade estática!\r\n- Proteção contra sobretensão: Melhor proteção do circuito de energia\r\n- Painel I/O Traseiro de Aço Inoxidável: 3X mais resistente à corrosão para maior durabilidade!\r\n- ASUS DIGI+ VRM: Componentes premium que oferecem mais eficiência energética\r\nRecursos exclusivos ASUS:\r\n- AI Suite 3\r\n- Ai Charger\r\nSolução ASUS Quiet Thermal:\r\n- Stylish Fanless Design Heat-sink solution\r\n- ASUS Fan Xpert 2+\r\nASUS EZ DIY :\r\n- ASUS CrashFree BIOS 3 \r\n- ASUS EZ Flash 3 \r\n- ASUS UEFI BIOS EZ Mode\r\n- Multi-language BIOS\r\nASUS Q-Design :\r\n- ASUS Q-Slot\r\n- ASUS Q-DIMM\r\n\r\nPortas no painel Traseiro\r\n- 1 x PS/2 teclado (roxo)\r\n- 1 x PS/2 mouse (verde)\r\n- 1 x saída(s) DVI-D\r\n- 1 x saída(s) D-Sub\r\n- 1 x HDMI\r\n- 1 x porta(s) LAN (RJ45)\r\n- 3 x conector(es) de áudio\r\n- 4 x porta(s) USB 3.0\r\n- 2 x USB 3.1 Gen 2 ()\r\n\r\nPainel Interno\r\n- 1 x porta(s) USB 3.1 Gen 1 (até 5Gbps) com suporte a 2 portas USB 3.1 Gen 1 adicionais(19-pin)\r\n- 2 x porta(s) USB 2.0, com suporte a 4 porta(s) USB 2.0 adicionais\r\n- 1 x conectores(s) para porta COM\r\n- 1 x Conector(es) para porta TPM\r\n- 1 x conector(es) de ventoinha do processador (1 x  -pin)\r\n- 6 x conector(es) SATA 6Gb/s\r\n- 2 x conector(es) de ventoinha do chassi (2 x 4 -pin)\r\n- 1 x Header(s) Aura para fita RGB\r\n- 1 x leitor(es) externo(s) S/PDIF\r\n- 1 x conector(es) de força EATX de 24 pinos\r\n- 1 x M.2 Socket 3 with M key, type 2242/2260/2280/22110 storage devices support (SATA & PCIE 3.0 x 4 mode)\r\n- 1 x conector(es) de áudio para o painel frontal (AAFP)\r\n- 1 x painel(s) do sistema\r\n- 1 x Conector de energia de 8 pinos ATX 12V\r\n- 1 x jumper Clear CMOS\r\n- 1 x conector de Speaker\r\n\r\nAcessórios\r\n- Espelho I/O traseiro\r\n- 2 x cabo(s) SATA de 6Gb/s\r\n- 1 x pacote de parafusos para M.2\r\n- 1 x DVD de suporte\r\n\r\nBIOS\r\n- 128 Mb Flash ROM, UEFI AMI BIOS, PnP, SM BIOS 3.1, ACPI 6.1, Multi-language BIOS, ASUS EZ Flash 3, ASUS CrashFree BIOS 3, F3 My Favorite, Last Modified log, F12 PrintScreen, ASUS DRAM SPD (Serial Presence Detect) memory information, F6 Qfan\r\nontrol\r\n\r\nSistema Operacional\r\n- Windows® 10 64-bit\r\n- Windows® 7 64-bit *3\r\n\r\nFormato\r\n- Modelo mATX\r\n- 24.4 cm por 24 cm (9.6 polegadas por 9.5 polegadas)\r\n\r\nConteúdo da embalagem:\r\n01 - Placa-Mãe Asus Prime B450M\r\n01 - Espelho\r\n01 - Cabos e acessórios', '90MB10H0-C1BAY0', 1, '968.00', '973.00', 14, 'images/produtos_imagem/placas mãe/placa_mae_Asus_B450M.jpg', 'images/produtos_imagem/placas mãe/placa_mae_Asus_B450M.jpg', 0, NULL, 9),
(38, 'Placa Mãe Asus H410M-E', 'Características:\r\n\r\n- Marca: Asus\r\n\r\n- Modelo: 90MB13H0-C1BAY0\r\n\r\n \r\n\r\nEspecificações:\r\n\r\n \r\n\r\nProcessadores:\r\n\r\n- Processadores Intel Socket 1200 para 10ª Gen Intel Core, Pentium Gold e Celeron Processadores*\r\n\r\n- Suporta processadores Intel de 14 nm\r\n\r\n- Suporta Tecnologia Intel Turbo Boost 2.0 e Tecnologia Intel Turbo Boost Max 3.0**\r\n\r\n\r\n\r\n* Visite www.asus.com.br para a lista de processadores suportados.\r\n\r\n** O suporte a Tecnologia Intel Turbo Boost Max 3.0 depende dos tipos de CPU.\r\n\r\n \r\n\r\nChipset:\r\n\r\n- Processadores Intel H410\r\n\r\n \r\n\r\nMemória:\r\n\r\n- Memória 2 x DIMM, máximo de 64GB, DDR4 2933/2800/2666/2400/2133 MHz Non-ECC, Sem-buffered\r\n\r\n- Arquitetura de memória: Dual Channel\r\n\r\n- Suporta Intel Extreme Memory Profile (XMP)\r\n\r\n- OptiMem\r\n\r\n \r\n\r\n*10ª Gen Intel Core i9/i7 CPUs suporta 2933/2800/2666/2400/2133 nativamente.\r\n\r\n \r\n\r\nGráfico:\r\n\r\n- Processador Gráfico Integrado*\r\n\r\n- 1 x D-Sub (VGA)\r\n\r\n- 1 x HDMI 1.4b\r\n\r\n\r\n\r\n*As especificações grafícas talvez possam variar entre os tipos de CPU.\r\n\r\n \r\n\r\nSlots de expansão:\r\n\r\n- Intel 10ªGen de processadores\r\n\r\n- 1 x PCIe 3.0 x16 (modo x16)\r\n\r\n- Intel H410 Chipset\r\n\r\n- 2 x PCIe 3.0 x1\r\n\r\n \r\n\r\nArmazenamento:\r\n\r\n- Total suporta 1 x M.2 slots and 4 x SATA 6Gb/s portas\r\n\r\n\r\n\r\nIntel H410 Chipset :\r\n\r\n- 1 x M.2 Socket 3, com M Key, suporte a dispositivo de armazenamento tipo 2242/2260/2280 (modo SATA & PCIE 3.0 X2)1\r\n\r\n- 4 x Porta(s) SATA 6Gb/s\r\n\r\n\r\n\r\nLAN:\r\n\r\n- 1 x Gigabit LAN Realtek RTL8111H\r\n\r\n \r\n\r\nÁudio:\r\n\r\n- Realtek ALC887 com 7.1-Channel - CODEC de alta definição 2\r\n\r\n- Suporta: Jack-detection, Detecção de conexão, Multi-streaming, Painel frontal com possiblidade de redefinir a conexão\r\n\r\n \r\n\r\nRecursos de áudio:\r\n\r\n- Proteção de Áudio: Garante precisão na separação analógica/digital e reduz a maioria das interferências multi-laterais.\r\n\r\n- Camadas de áudio PCB dedicadas: Camadas separadas para o canal direito e esquerdo para proteger a qualidade dos sinais sensíveis de áudio.\r\n\r\n- Design iluminado por LED - Ilumine a sua construção com caminhos de áudio iluminados.\r\n\r\n- Capacitores de áudio premium japoneses: fornecem som natural e imersivo com clareza e fidelidade excepcionais.\r\n\r\n \r\n\r\nPortas USB:\r\n\r\n- Rear Porta USB ( Total 4 )\r\n\r\n- 2 x USB 3.2 Gen 1 porta(s)(2 x Tipo-A)\r\n\r\n- 2 x USB 2.0 porta(s)(2 x Tipo-A)\r\n\r\n- Front USB Porta ( Total 6 )\r\n\r\n- 2 x USB 3.2 Gen 1 porta(s)\r\n\r\n- 4 x USB 2.0 porta(s)\r\n\r\n \r\n\r\nRecurso do software:\r\n\r\n- ASUS Exclusive Software\r\n\r\n- Armoury Crate\r\n\r\n- AI Suite 3\r\n\r\n- Performance And Power Saving Utility\r\n\r\n- TurboV EVO\r\n\r\n- EPU\r\n\r\n- Digi+ VRM\r\n\r\n- Fan Xpert\r\n\r\n- EZ update\r\n\r\n- ASUS CPU-Z\r\n\r\n- AI Charger\r\n\r\n- DAEMON Tools\r\n\r\n- Norton Anti-virus software (Free Trial for 60 days)\r\n\r\n- WinRAR\r\n\r\n- UEFI BIOS\r\n\r\n- ASUS EZ DIY\r\n\r\n- ASUS CrashFree BIOS 3\r\n\r\n- ASUS EZ Flash 3\r\n\r\n- ASUS UEFI BIOS EZ Mode\r\n\r\n \r\n\r\nRecursos especiais ASUS:\r\n\r\n \r\n\r\nASUS 5X PROTECTION III:\r\n\r\n- ASUS DIGI+ VRM\r\n\r\n- ASUS LANGuard\r\n\r\n- ASUS Overvoltage Protection\r\n\r\n- ASUS SafeSlot Core\r\n\r\n- ASUS Stainless-Steel Back I/O\r\n\r\n \r\n\r\nASUS Q-Design:\r\n\r\n- ASUS Q-DIMM\r\n\r\n- ASUS Q-Slot\r\n\r\n \r\n\r\nASUS Thermal Solution:\r\n\r\n- Aluminum heatsink design\r\n\r\n \r\n\r\nPortas no painel traseiro:\r\n\r\n- 1 x PS/2 teclado (roxo)\r\n\r\n- 1 x PS/2 mouse (verde)\r\n\r\n- 1 x saída(s) D-Sub\r\n\r\n- 1 x porta(s) LAN (RJ45)\r\n\r\n- 1 x HDMI\r\n\r\n- 2 x porta(s) USB 2.0\r\n\r\n- 3 x conector(es) de áudio\r\n\r\n- 2 x porta(s) USB 3.0 Tipo-A\r\n\r\n\r\n\r\nPainel interno:\r\n\r\n- 2 x porta(s) USB 2.0, com suporte a 4 porta(s) USB 2.0 adicionais\r\n\r\n- 1 x conectores(s) para porta COM\r\n\r\n- 1 x conector(es) de ventoinha do processador\r\n\r\n- 4 x conector(es) SATA 6Gb/s\r\n\r\n- 1 x conector(es) de ventoinha do chassi\r\n\r\n- 1 x leitor(es) externo(s) S/PDIF\r\n\r\n- 1 x conector(es) de força EATX de 24 pinos\r\n\r\n- 1 x M.2 Socket 3 com M Key, tipo 2242/2260/2280 armazenamento que suporta dispositivos (SATA & PCIE 3.0 X2 mode)\r\n\r\n- 1 x conector(es) de áudio para o painel frontal (AAFP)\r\n\r\n- 1 x USB 3.2 Gen 1(até 5Gbps) conector(s) suporte(s) adicional 2 USB 3.2 Gen 1 porta(s)\r\n\r\n- 1 x 8-pin EATX 12V Power conectores\r\n\r\n- 1 x jumper Clear CMOS\r\n\r\n- 1 x System panel conector\r\n\r\n- 1 x conector de Speaker\r\n\r\n \r\n\r\nBIOS:\r\n\r\n- 128 Mb Flash ROM, UEFI AMI BIOS\r\n\r\n \r\n\r\nGerenciamento:\r\n\r\n- WOL by PME, PXE\r\n\r\n \r\n\r\nSistema operacional:\r\n\r\n- Windows 10 64-bit\r\n\r\n \r\n\r\nFormato:\r\n\r\n- Modelo mATX\r\n\r\n- 22.6 cm por 20.3 cm (8.9 polegadas por 8.0 polegadas)\r\n\r\n \r\n\r\nConteúdo da Embalagem:\r\n\r\n- Placa-Mãe Asus Prime H410M-E\r\n\r\n- I/O escudo\r\n\r\n- 2 x SATA 6Gb/s cable(s)\r\n\r\n- 1 x M.2 Anchor\r\n\r\n- 1 x Supporting DVD\r\n\r\n- Manual do usuário\r\n\r\n \r\n\r\nNOTA:\r\n\r\n1 Quando um dispositivo SATA está em modo instalado no M.2 socket, a porta SATA6G_2 pode não funcionar.\r\n\r\n2 Um chassi com um módulo de áudio HD no painel frontal é necessário para suportar a saída de áudio de 7.1 canais.\r\n\r\n\r\nGarantia:\r\n12 meses de garantia\r\n\r\nPeso:\r\n770 gramas (bruto com embalagem)', '90MB13H0-C1BAY0', 1, '972.00', '978.00', 14, 'images/produtos_imagem/placas mãe/placa_mae_Asus_B450M.jpg', 'images/produtos_imagem/placas mãe/placa_mae_Asus_B450M.jpg', 0, NULL, 9),
(39, 'Placa Mãe Asus H510M', 'Marca	Asus\r\nModelo	H510M H\r\nCPU	- Pacote LGA1200\r\n- Processadores Intel Core i9 de 11ª geração / i7 / i5\r\n- Processadores Intel Core i9 de 10ª geração / i7 / i5 / i3 / Intel Pentium / Intel Celeron\r\n* Limitado a processadores com Intel de 4 MB Smart Cache, família Intel Celeron G5xx5.\r\n- o Cache L3 Varia com a CPU\r\nChipset	Chipset Intel H510 Express\r\nMemória	- Processadores Intel Core i9 / i7 / i5 de 11ª geração : Suporte para Módulos de Memória DDR4 3200/3000/2933/2666/2400/2133 MHz\r\n- Processadores Intel Core i9 / i7 de 10ª geração : Suporte para Módulos de Memória DDR4 2933/2666/2400/2133 MHz\r\n- 10ª Geração Intel Núcleo i5 / i3 / Pentium / Celeron Processadores: Suporte para DDR4 Módulos de Memória 2666/2400/2133 MHz\r\n- 2x Soquetes DDR4 DIMM com Suporte para até 64 GB (Capacidade de DIMM único de 32 GB) de Memória do Sistema\r\n- Arquitetura de Memória Dual Channel\r\n- Suporte para Módulos de Memória DIMM 1Rx8 / 2Rx8 ECC sem Buffer (Operar em Modo não ECC)\r\n- Suporte para Módulos de Memória DIMM 1Rx8 / 2Rx8 / 1Rx16 não-ECC sem Buffer\r\n- Suporte para Módulos de Memória Extreme Memory Profile (XMP)\r\nGráfico Integrado	- Processador Gráfico Integrado - Suporte para Gráficos HD Intel: 1 Porta D-Sub, Suportando uma Resolução Máxima de 1920x1200, 60Hz\r\n- 1 porta HDMI, com Suporte para Resolução Máxima de 4096x2160 a 30Hz\r\n* Suporte para versão HDMI 1.4 e HDCP 2.3.\r\nÁudio	- CODEC de Áudio Realtek\r\n- Áudio de Alta Definição\r\n- 2/4 / 5.1 / 7.1 Canais\r\n* para configurar o áudio de 7.1 canais, você precisa abrir o software de áudio e selecionar Configurações avançadas do dispositivo> Dispositivo de reprodução para alterar a configuração padrão primeiro. Visite o site da GIGABYTE para obter detalhes sobre a configuração do software de áudio.\r\nLAN	Chip Realtek GBE LAN (1 GBit / 100 MBit)\r\nSlots de Expansão	- 1x Slot PCI Express x16, Executando a x16 (PCIEX16)\r\n*Para Desempenho ideal, se apenas uma placa gráfica PCI Express for Instalada, Certifique-se de Instalá-la no Slot PCIEX16.\r\n(O slot PCIEX16 está em conformidade com o padrão PCI Express 4.0.) *\r\n*Suportado apenas por Processadores de 11ª Geração.\r\n- 1x Slot PCI Express x1 (PCIEX1_1)\r\n(O slot PCIEX1 está em conformidade com o padrão PCI Express 3.0.)\r\nInterface de Armazenamento	- 1x conector M.2 (soquete 3, chave M, tipo 2260/2280/22110 SATA e suporte a PCIe 3.0 x4 / x2 SSD)\r\n- 4x conectores SATA de 6 GB/s\r\n* Consulte \"1-7 Conectores internos\" para ver os avisos de instalação dos conectores M.2 e SATA.\r\nUSB	- 4 Portas USB 3.2 Gen 1 (2 Portas no Painel Traseiro, 2 Portas Disponíveis Através do Conector USB Interno)\r\n- 6 Portas USB 2.0 / 1.1 (4 Portas no Painel Traseiro, 2 Portas Disponíveis Através do Conector USB Interno)\r\nConectores de Entrada e Saída Internos	- 1x Conector de Alimentação Principal ATX de 24 Pinos\r\n- 1x Conector de Alimentação ATX 12V de 8 Pinos\r\n- 1x Cabeçalho do Ventilador da CPU\r\n- 1x Cabeçalho do Ventilador do Sistema\r\n- 1x Cabeçalho de Tira LED RGB\r\n- 1x Conector M.2 Soquete 3\r\n- 4x Conectores SATA 6 GB/s\r\n- 1x Cabeçalho do Painel Frontal\r\n- 1x Conector de Áudio do Painel Frontal\r\n- 1x Conector USB 3.2 Gen 1\r\n- 1x Conector USB 2.0 / 1.1\r\n- 1x Cabeçalho do Módulo de Plataforma Confiável (Apenas para o Módulo GC-TPM2.0 SPI / GC-TPM2.0 SPI 2.0)\r\n- 1x Cabeçalho de Porta Serial\r\n- 1x Jumper Claro CMOS\r\n? Todos os conectores de ventilador estão sujeitos a suporte AIO_Pump, Pump e ventilador de alto desempenho com capacidade de fornecer até 2A / 12V, 24W.\r\nConectores do Painel Traseiro	- 1x Porta de Teclado / Mouse PS / 2\r\n- 1x Porta D-Sub\r\n- 1x Porta HDMI\r\n- 2x Portas USB 3.2 Gen 1\r\n- 4x Portas USB 2.0 / 1.1\r\n- 1x Porta RJ-45\r\n- 3x Conectores de Áudio\r\nI/O Controller	Chip Controlador de I/O iTE\r\nBIOS	- Flash de 1 x 256 MBit\r\n- Uso de AMI UEFI BIOS Licenciado\r\n- PnP 1.0a, DMI 2.7, WfM 2.0, SM BIOS 2.7, ACPI 5.0\r\nRecursos	- Suporte para APP Center\r\n* os aplicativos disponíveis no APP Center podem variar de acordo com o modelo da placa-mãe. As funções com suporte de cada aplicativo também podem variar dependendo das especificações da placa-mãe.\r\n- BIOS\r\n- Ambient LED\r\n- EasyTune\r\n- Fast Boot\r\n- Game Boost\r\n- ON / OFF Carregar\r\n- Smart Backup\r\n- System Information Viewer\r\n- Suporte para Q-Flash\r\n- Suporte para Instalação do XPress\r\nSoftware	- Norton Internet Security (Versão OEM)\r\n- Utilitário de Controle de Largura de Banda de LAN para Jogos Realtek 8118\r\nSistema Operacional	Suporte para Windows 10 de 64 bits\r\nFormato	Micro ATX; 24,4 cm x 21,0 cm\r\nConteúdo da Embalagem	Placa Mãe Gigabyte H510M (rev.1.0)', 'H510M H', 1, '797.00', '802.00', 15, 'images/produtos_imagem/placas mãe/placa_mae_Asus_H510M.jpg', 'images/produtos_imagem/placas mãe/placa_mae_Asus_H510M.jpg', 0, NULL, 9),
(40, 'Servidor Rack 1U R250', 'O PowerEdge R250, com os processadores Intel® Xeon® E-2300, é um servidor em rack de nível de entrada com um equilíbrio ideal entre capacidade de adaptação e economia feito para atender às demandas de computação em constante evolução.\r\n\r\nOferece recursos de alta disponibilidade, como Boot Optimized Storage Subsystem e disco rígido/SSD, todos com hot plug\r\nCompatível com DIMMs de até 32 GB a 3.200 MT/s de velocidade de DIMMs, até 128 GB\r\nSuporte e compatibilidade com PCIe de 4ª geração, com grandes melhorias no throughput e Slots de expansão\r\nOferece segurança avançada e tempo de inicialização mais rápido com o UEFI Secure Boot\r\nIdeal para acesso remoto, firewall, AD e DNS, escritórios pequenos, remotos e filiais, prestadores de serv iços em expanção,hospedagem na web e colaboração', 'PowerEdge R250', 1, '12389.00', '12499.00', 10, 'images/produtos_imagem/servidores/servidor-rack-1U-R250-lado.png', 'images/produtos_imagem/servidores/servidor-rack-1U-R250.png', 0, NULL, 10),
(41, 'Servidor Rack PowerEdge R750xs', 'O Dell EMC PowerEdge R750xs com processadores escaláveis Intel® Xeon® de 3ª geração foi desenvolvido para virtualização, densidade média de VM ou VDI e cargas de trabalho de nó de armazenamento definido por software.\r\nCompatibilidade com até 32 núcleos por CPU e até 16 RDIMMs DDR4 em até 3.200 MT/s\r\nFeito para soluções em rápido crescimento com tamanho ideal e até 24 unidades para implementações de SDS\r\nGerencie com o iDRAC9 Enterprise, o OpenManage Enterprise e plug-ins, o iDRAC Direct e o Quick Sync 2.0\r\nIntegração de gerenciamento na pilha completa com Microsoft, VMware, ServiceNow, Ansible e muitas outras ferramentas para ambientes no local, na borda e na nuvem', 'PowerEdge R750x', 1, '22359.00', '22399.00', 10, 'images/produtos_imagem/servidores/servidor-rack-2U-R750xs.png', 'images/produtos_imagem/servidores/servidor-rack-2U-R750xs-lado.png', 0, NULL, 10),
(42, 'Servidor Torre PowerEdge T550', 'O PowerEdge T550, habilitado com os processadores escaláveis Intel® Xeon® de 3ª geração, oferece tecnologias avançadas, como aceleradores, para lidar com cargas de trabalho com uso intenso de dados fora do data center tradicional.\r\n\r\n\r\nOferece recursos para acomodar aplicativos de alto desempenho, como serviço, consolidação e virtualização na Web. Que incluem mais cache e velocidade, bem como flexibilidade de expansão e de processadores adicionais. Trabalha de forma silenciosa e facilmente implementados, gerenciados e automatizados com as ferramentas Dell EMC OpenManage.\r\n\r\n• O novo design de chassi oferece tecnologias de maior desempenho em um compartimento mais silencioso e mais fácil de gerenciar em ambientes de escritórios\r\n• Ideal para TI corporativa tradicional, virtualização, bancos de dados e lógica analítica, além de IA/ML e inferência\r\n• Garante facilidade de gerenciamento e capacidade de expansão para crescimento e desempenho', 'PowerEdge T550', 1, '18839.00', '18889.00', 10, 'images/produtos_imagem/servidores/servidor-torre-T550-frente.png', 'images/produtos_imagem/servidores/servidor-torre-T550-lado.png', 0, NULL, 10),
(43, 'Servidor Torre PowerEdge T150', 'Solução econômica e de nível empresarial para as empresas que estão iniciando o negócio, migram para servidores de computadores ou notebooks. Projetado para cargas de trabalho do escritório central, como aplicativos de compartilhamento de arquivos, impressão, gerenciamento de funcionários/clientes, ponto de venda e base de dados. Proporciona desempenho, expansão e segurança à medida que seu negócio cresce. Com fácil configuração e atualizações, além de ganhos de produtividade.\r\n3200 MT/s, DDR4 UDIMMs até 128 GB\r\nChassi em 4x 3.5\" SATA/SAS ou 4x 2.5\" SATA/SAS\r\nTenha grandes melhorias no throughput com a compatibilidade com PCIe de 4ª geração\r\nOferece segurança aprimorada e tempo de inicialização mais rápido com o UEFI Secure Boot\r\nDesign compacto e operação silenciosa\r\nIdeal para:e-mail/sistema de mensagens,pontos de venda, hospedagem na web e colaboração', 'PowerEdge T150', 1, '10799.00', '10999.00', 10, 'images/produtos_imagem/servidores/servidor-torre-T150.png', 'images/produtos_imagem/servidores/servidor-torre-T150-lado.png', 0, NULL, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transportadoras`
--

DROP TABLE IF EXISTS `transportadoras`;
CREATE TABLE IF NOT EXISTS `transportadoras` (
  `transportadoraID` int NOT NULL AUTO_INCREMENT,
  `nometransportadora` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estadoID` tinyint DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cnpj` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`transportadoraID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `transportadoras`
--

INSERT INTO `transportadoras` (`transportadoraID`, `nometransportadora`, `endereco`, `telefone`, `cidade`, `estadoID`, `cep`, `cnpj`) VALUES
(1, 'Rapidão Estrela', 'Rua Ernesto de Paula Santos, 187', '33262836', 'Recife', 17, '51.021-330', '2234234234'),
(2, 'Itapemirão', 'Rua Visconde de Sabugosa, 11', '33262836', 'São Paulo', 27, '01.323.123', '2424243221'),
(3, 'SEDEX  ', 'R. Sen. Alencar, 38', '(85) 3255-7232', 'Fortaleza', 6, '60030-970', '2342424324');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `faturamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(2) DEFAULT NULL,
  `combustivel` decimal(20,2) DEFAULT NULL,
  `hotel` decimal(20,2) DEFAULT NULL,
  `estacionamento` decimal(20,2) DEFAULT NULL,
  `supermercado` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

CREATE TABLE `tipo_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeUsuario` varchar(100) DEFAULT NULL,
  `emailUsuario` varchar(100) DEFAULT NULL,
  `documentoCPF_CNPJ` varchar(14) DEFAULT NULL,
  `situacaoCadastral` varchar(15) DEFAULT NULL,
  `documentoEmpresa` varchar(14) DEFAULT NULL,
  `tipoCadastro` varchar(50) DEFAULT NULL,
  `idPerfil` int(11) DEFAULT NULL,
  `senha` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idPerfil_idx` (`idPerfil`),
  CONSTRAINT `fk_tipoperfil` FOREIGN KEY (`idPerfil`) REFERENCES `tipo_perfil` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
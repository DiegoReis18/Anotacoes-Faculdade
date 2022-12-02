CREATE TABLE Armaz�m (
  idArmaz�m INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Endere�o_Armaz�m VARCHAR(45) NULL,
  PRIMARY KEY(idArmaz�m)
);

CREATE TABLE Cliente (
  Id_Cliente INTEGER UNSIGNED NOT NULL,
  Nome_Cliente VARCHAR(45) NOT NULL,
  Endere�o_Cliente VARCHAR(45) NOT NULL,
  Vendedor_Nome_Vendedor VARCHAR(45) NOT NULL,
  Vendedor_idVendedor INTEGER UNSIGNED NOT NULL,
  Faturamento_Acumulado FLOAT NULL,
  Limite_Cr�dito FLOAT NULL,
  PRIMARY KEY(Id_Cliente, Nome_Cliente, Endere�o_Cliente),
  INDEX Table_02_FKIndex1(Vendedor_idVendedor, Vendedor_Nome_Vendedor)
);

CREATE TABLE Pedido (
  idPedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Vendedor_Nome_Vendedor VARCHAR(45) NOT NULL,
  Vendedor_idVendedor INTEGER UNSIGNED NOT NULL,
  Cliente_Endere�o_Cliente VARCHAR(45) NOT NULL,
  Cliente_Nome_Cliente VARCHAR(45) NOT NULL,
  Cliente_Id_Cliente INTEGER UNSIGNED NOT NULL,
  Data_Pedido DATE NULL,
  PRIMARY KEY(idPedido),
  INDEX Pedido_FKIndex1(Cliente_Id_Cliente, Cliente_Nome_Cliente, Cliente_Endere�o_Cliente),
  INDEX Pedido_FKIndex2(Vendedor_idVendedor, Vendedor_Nome_Vendedor)
);

CREATE TABLE Pe�a (
  idPe�a INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Pre�o_Pe�a FLOAT NOT NULL,
  Armaz�m_idArmaz�m INTEGER UNSIGNED NOT NULL,
  Desc_Pe�a VARCHAR(100) NULL,
  Estoque_Pe�a INTEGER UNSIGNED NULL,
  PRIMARY KEY(idPe�a, Pre�o_Pe�a),
  INDEX Pe�a_FKIndex1(Armaz�m_idArmaz�m)
);

CREATE TABLE Produto vendido (
  Pe�a_Pre�o_Pe�a FLOAT NOT NULL,
  Pe�a_idPe�a INTEGER UNSIGNED NOT NULL,
  Pedido_idPedido INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Pe�a_Pre�o_Pe�a, Pe�a_idPe�a, Pedido_idPedido),
  INDEX Pe�a_has_Pedido_FKIndex1(Pe�a_idPe�a, Pe�a_Pre�o_Pe�a),
  INDEX Pe�a_has_Pedido_FKIndex2(Pedido_idPedido)
);

CREATE TABLE Vendedor (
  idVendedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome_Vendedor VARCHAR(45) NOT NULL,
  Endere�o_Vendedor VARCHAR(45) NULL,
  Comiss�o_Vendedor FLOAT NULL,
  PRIMARY KEY(idVendedor, Nome_Vendedor)
);



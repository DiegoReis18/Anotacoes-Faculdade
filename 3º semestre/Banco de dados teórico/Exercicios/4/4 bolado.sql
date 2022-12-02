CREATE TABLE Armazém (
  idArmazém INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Endereço_Armazém VARCHAR(45) NULL,
  PRIMARY KEY(idArmazém)
);

CREATE TABLE Cliente (
  Id_Cliente INTEGER UNSIGNED NOT NULL,
  Nome_Cliente VARCHAR(45) NOT NULL,
  Endereço_Cliente VARCHAR(45) NOT NULL,
  Vendedor_Nome_Vendedor VARCHAR(45) NOT NULL,
  Vendedor_idVendedor INTEGER UNSIGNED NOT NULL,
  Faturamento_Acumulado FLOAT NULL,
  Limite_Crédito FLOAT NULL,
  PRIMARY KEY(Id_Cliente, Nome_Cliente, Endereço_Cliente),
  INDEX Table_02_FKIndex1(Vendedor_idVendedor, Vendedor_Nome_Vendedor)
);

CREATE TABLE Pedido (
  idPedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Vendedor_Nome_Vendedor VARCHAR(45) NOT NULL,
  Vendedor_idVendedor INTEGER UNSIGNED NOT NULL,
  Cliente_Endereço_Cliente VARCHAR(45) NOT NULL,
  Cliente_Nome_Cliente VARCHAR(45) NOT NULL,
  Cliente_Id_Cliente INTEGER UNSIGNED NOT NULL,
  Data_Pedido DATE NULL,
  PRIMARY KEY(idPedido),
  INDEX Pedido_FKIndex1(Cliente_Id_Cliente, Cliente_Nome_Cliente, Cliente_Endereço_Cliente),
  INDEX Pedido_FKIndex2(Vendedor_idVendedor, Vendedor_Nome_Vendedor)
);

CREATE TABLE Peça (
  idPeça INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Preço_Peça FLOAT NOT NULL,
  Armazém_idArmazém INTEGER UNSIGNED NOT NULL,
  Desc_Peça VARCHAR(100) NULL,
  Estoque_Peça INTEGER UNSIGNED NULL,
  PRIMARY KEY(idPeça, Preço_Peça),
  INDEX Peça_FKIndex1(Armazém_idArmazém)
);

CREATE TABLE Produto vendido (
  Peça_Preço_Peça FLOAT NOT NULL,
  Peça_idPeça INTEGER UNSIGNED NOT NULL,
  Pedido_idPedido INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Peça_Preço_Peça, Peça_idPeça, Pedido_idPedido),
  INDEX Peça_has_Pedido_FKIndex1(Peça_idPeça, Peça_Preço_Peça),
  INDEX Peça_has_Pedido_FKIndex2(Pedido_idPedido)
);

CREATE TABLE Vendedor (
  idVendedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome_Vendedor VARCHAR(45) NOT NULL,
  Endereço_Vendedor VARCHAR(45) NULL,
  Comissão_Vendedor FLOAT NULL,
  PRIMARY KEY(idVendedor, Nome_Vendedor)
);



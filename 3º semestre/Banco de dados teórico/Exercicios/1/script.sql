CREATE TABLE Acidente (
  dataAcidente DATE NOT NULL AUTO_INCREMENT,
  Carro_PlacaCarro INTEGER UNSIGNED NOT NULL,
  horaAcidente DATETIME NULL,
  localAcidente VARCHAR(45) NULL,
  PRIMARY KEY(dataAcidente),
  INDEX Acidente_FKIndex1(Carro_PlacaCarro)
);

CREATE TABLE Apolice (
  idApolice INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_idCliente INTEGER UNSIGNED NOT NULL,
  Valor INTEGER UNSIGNED NULL,
  PRIMARY KEY(idApolice),
  INDEX Apolice_FKIndex1(Cliente_idCliente)
);

CREATE TABLE Carro (
  PlacaCarro INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Apolice_idApolice INTEGER UNSIGNED NOT NULL,
  Marca VARCHAR(45) NULL,
  PRIMARY KEY(PlacaCarro),
  INDEX Carro_FKIndex1(Apolice_idApolice)
);

CREATE TABLE Cliente (
  idCliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NmCliente VARCHAR(50) NULL,
  EndClient VARCHAR(50 NULL,
  PRIMARY KEY(idCliente)
);



CREATE TABLE Departamento (
  idDepartamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Setor_Departamento VARCHAR(45) NULL,
  PRIMARY KEY(idDepartamento)
);

CREATE TABLE Dep�sito (
  idDep�sito INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Endere�o_Dep�sito VARCHAR(45) NULL,
  PRIMARY KEY(idDep�sito)
);

CREATE TABLE Fornecedor (
  idFornecedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Endere�o_Fornecedor VARCHAR(45) NULL,
  PRIMARY KEY(idFornecedor)
);

CREATE TABLE Funcion�rio (
  idFuncion�rio INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Departamento_idDepartamento INTEGER UNSIGNED NOT NULL,
  Sal�rio_Funcion�rio FLOAT NULL,
  Telefone_Funcion�rio VARCHAR(10) NULL,
  PRIMARY KEY(idFuncion�rio),
  INDEX Funcion�rio_FKIndex1(Departamento_idDepartamento)
);

CREATE TABLE Pe�as (
  idPe�as INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Dep�sito_idDep�sito INTEGER UNSIGNED NOT NULL,
  Peso_Pe�as FLOAT NULL,
  Cor_Pe�as VARCHAR(45) NULL,
  PRIMARY KEY(idPe�as),
  INDEX Pe�as_FKIndex1(Dep�sito_idDep�sito)
);

CREATE TABLE Pe�as compradas (
  Pe�as_idPe�as INTEGER UNSIGNED NOT NULL,
  Fornecedor_idFornecedor INTEGER UNSIGNED NOT NULL,
  Projeto_idProjeto INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Pe�as_idPe�as, Fornecedor_idFornecedor, Projeto_idProjeto),
  INDEX Pe�as_has_Fornecedor_FKIndex1(Pe�as_idPe�as),
  INDEX Pe�as_has_Fornecedor_FKIndex2(Fornecedor_idFornecedor),
  INDEX Pe�as_has_Fornecedor_FKIndex3(Projeto_idProjeto)
);

CREATE TABLE Projeto (
  idProjeto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Or�amento_Projeto FLOAT NULL,
  PRIMARY KEY(idProjeto)
);

CREATE TABLE Projetos e seus envolvidos (
  Funcion�rio_idFuncion�rio INTEGER UNSIGNED NOT NULL,
  Projeto_idProjeto INTEGER UNSIGNED NOT NULL,
  Data-_Inicio DATE NULL,
  Horas_Trabalhadas DATETIME NULL,
  PRIMARY KEY(Funcion�rio_idFuncion�rio, Projeto_idProjeto),
  INDEX Funcion�rio_has_Projeto_FKIndex1(Funcion�rio_idFuncion�rio),
  INDEX Funcion�rio_has_Projeto_FKIndex2(Projeto_idProjeto)
);



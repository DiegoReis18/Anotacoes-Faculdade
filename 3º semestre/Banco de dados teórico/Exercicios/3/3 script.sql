CREATE TABLE Departamento (
  idDepartamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Setor_Departamento VARCHAR(45) NULL,
  PRIMARY KEY(idDepartamento)
);

CREATE TABLE Depósito (
  idDepósito INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Endereço_Depósito VARCHAR(45) NULL,
  PRIMARY KEY(idDepósito)
);

CREATE TABLE Fornecedor (
  idFornecedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Endereço_Fornecedor VARCHAR(45) NULL,
  PRIMARY KEY(idFornecedor)
);

CREATE TABLE Funcionário (
  idFuncionário INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Departamento_idDepartamento INTEGER UNSIGNED NOT NULL,
  Salário_Funcionário FLOAT NULL,
  Telefone_Funcionário VARCHAR(10) NULL,
  PRIMARY KEY(idFuncionário),
  INDEX Funcionário_FKIndex1(Departamento_idDepartamento)
);

CREATE TABLE Peças (
  idPeças INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Depósito_idDepósito INTEGER UNSIGNED NOT NULL,
  Peso_Peças FLOAT NULL,
  Cor_Peças VARCHAR(45) NULL,
  PRIMARY KEY(idPeças),
  INDEX Peças_FKIndex1(Depósito_idDepósito)
);

CREATE TABLE Peças compradas (
  Peças_idPeças INTEGER UNSIGNED NOT NULL,
  Fornecedor_idFornecedor INTEGER UNSIGNED NOT NULL,
  Projeto_idProjeto INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Peças_idPeças, Fornecedor_idFornecedor, Projeto_idProjeto),
  INDEX Peças_has_Fornecedor_FKIndex1(Peças_idPeças),
  INDEX Peças_has_Fornecedor_FKIndex2(Fornecedor_idFornecedor),
  INDEX Peças_has_Fornecedor_FKIndex3(Projeto_idProjeto)
);

CREATE TABLE Projeto (
  idProjeto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Orçamento_Projeto FLOAT NULL,
  PRIMARY KEY(idProjeto)
);

CREATE TABLE Projetos e seus envolvidos (
  Funcionário_idFuncionário INTEGER UNSIGNED NOT NULL,
  Projeto_idProjeto INTEGER UNSIGNED NOT NULL,
  Data-_Inicio DATE NULL,
  Horas_Trabalhadas DATETIME NULL,
  PRIMARY KEY(Funcionário_idFuncionário, Projeto_idProjeto),
  INDEX Funcionário_has_Projeto_FKIndex1(Funcionário_idFuncionário),
  INDEX Funcionário_has_Projeto_FKIndex2(Projeto_idProjeto)
);



CREATE TABLE Beneficiário (
  CPFBen VARCHAR(11)) NOT NULL AUTO_INCREMENT,
  Funcionário Próprio_Funcionário_CPF VARCHAR(11) NOT NULL,
  Funcionário Próprio_MatrFunc INTEGER UNSIGNED NOT NULL,
  NomeBen VARCHAR(45) NULL,
  PRIMARY KEY(CPFBen),
  INDEX Beneficiário_FKIndex1(Funcionário Próprio_MatrFunc, Funcionário Próprio_Funcionário_CPF)
);

CREATE TABLE Composição (
  Projeto_idProjeto INTEGER UNSIGNED NOT NULL,
  Funcionário_CPF VARCHAR(11) NOT NULL,
  Horas_trabalhadas FLOAT NULL,
  PRIMARY KEY(Projeto_idProjeto, Funcionário_CPF),
  INDEX Projeto_has_Funcionário_FKIndex1(Projeto_idProjeto),
  INDEX Projeto_has_Funcionário_FKIndex2(Funcionário_CPF)
);

CREATE TABLE Departamento (
  CodDep INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomeDep VARCHAR(20) NULL,
  Localizacao VARCHAR(45) NULL,
  PRIMARY KEY(CodDep)
);

CREATE TABLE Empresa (
  CNPJ VARCHAR(19) NOT NULL AUTO_INCREMENT,
  NomeEmp VARCHAR(45) NULL,
  TelEmp VARCHAR(11) NULL,
  EndEmp VARCHAR(45) NULL,
  PRIMARY KEY(CNPJ)
);

CREATE TABLE Funcionário (
  CPF VARCHAR(11) NOT NULL AUTO_INCREMENT,
  Departamento_CodDep INTEGER UNSIGNED NOT NULL,
  NomeFunc VARCHAR(45) NULL,
  PRIMARY KEY(CPF),
  INDEX Funcionário_FKIndex1(Departamento_CodDep)
);

CREATE TABLE Funcionário Próprio (
  MatrFunc INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Funcionário_CPF VARCHAR(11) NOT NULL,
  EndFunc_ue VARCHAR(45) NULL,
  PRIMARY KEY(MatrFunc, Funcionário_CPF),
  INDEX Funcionário Próprio_FKIndex1(Funcionário_CPF)
);

CREATE TABLE Funcionário Tercerizado (
  IDTerc INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Funcionário_CPF VARCHAR(11) NOT NULL,
  Empresa_CNPJ VARCHAR(19) NOT NULL,
  CargaHoraria INTEGER UNSIGNED NULL,
  PRIMARY KEY(IDTerc, Funcionário_CPF),
  INDEX Funcionário Tercerizado_FKIndex1(Funcionário_CPF),
  INDEX Funcionário Tercerizado_FKIndex2(Empresa_CNPJ)
);

CREATE TABLE Projeto (
  idProjeto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  DescProj VARCHAR(45) NULL,
  DuracaoPrev INTEGER UNSIGNED NULL,
  PRIMARY KEY(idProjeto)
);



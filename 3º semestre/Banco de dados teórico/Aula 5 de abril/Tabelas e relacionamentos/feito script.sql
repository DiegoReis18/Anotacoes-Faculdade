CREATE TABLE Benefici�rio (
  CPFBen VARCHAR(11)) NOT NULL AUTO_INCREMENT,
  Funcion�rio Pr�prio_Funcion�rio_CPF VARCHAR(11) NOT NULL,
  Funcion�rio Pr�prio_MatrFunc INTEGER UNSIGNED NOT NULL,
  NomeBen VARCHAR(45) NULL,
  PRIMARY KEY(CPFBen),
  INDEX Benefici�rio_FKIndex1(Funcion�rio Pr�prio_MatrFunc, Funcion�rio Pr�prio_Funcion�rio_CPF)
);

CREATE TABLE Composi��o (
  Projeto_idProjeto INTEGER UNSIGNED NOT NULL,
  Funcion�rio_CPF VARCHAR(11) NOT NULL,
  Horas_trabalhadas FLOAT NULL,
  PRIMARY KEY(Projeto_idProjeto, Funcion�rio_CPF),
  INDEX Projeto_has_Funcion�rio_FKIndex1(Projeto_idProjeto),
  INDEX Projeto_has_Funcion�rio_FKIndex2(Funcion�rio_CPF)
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

CREATE TABLE Funcion�rio (
  CPF VARCHAR(11) NOT NULL AUTO_INCREMENT,
  Departamento_CodDep INTEGER UNSIGNED NOT NULL,
  NomeFunc VARCHAR(45) NULL,
  PRIMARY KEY(CPF),
  INDEX Funcion�rio_FKIndex1(Departamento_CodDep)
);

CREATE TABLE Funcion�rio Pr�prio (
  MatrFunc INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Funcion�rio_CPF VARCHAR(11) NOT NULL,
  EndFunc_ue VARCHAR(45) NULL,
  PRIMARY KEY(MatrFunc, Funcion�rio_CPF),
  INDEX Funcion�rio Pr�prio_FKIndex1(Funcion�rio_CPF)
);

CREATE TABLE Funcion�rio Tercerizado (
  IDTerc INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Funcion�rio_CPF VARCHAR(11) NOT NULL,
  Empresa_CNPJ VARCHAR(19) NOT NULL,
  CargaHoraria INTEGER UNSIGNED NULL,
  PRIMARY KEY(IDTerc, Funcion�rio_CPF),
  INDEX Funcion�rio Tercerizado_FKIndex1(Funcion�rio_CPF),
  INDEX Funcion�rio Tercerizado_FKIndex2(Empresa_CNPJ)
);

CREATE TABLE Projeto (
  idProjeto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  DescProj VARCHAR(45) NULL,
  DuracaoPrev INTEGER UNSIGNED NULL,
  PRIMARY KEY(idProjeto)
);



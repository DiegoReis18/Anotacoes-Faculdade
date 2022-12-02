CREATE TABLE Consulta (
  M�dico_CRM VARCHAR(20) NOT NULL,
  Paciente_idPaciente INTEGER UNSIGNED NOT NULL,
  DataConsulta DATE NULL,
  HoraConsulta DATETIME NULL,
  ValorConsulta NUMERIC NULL,
  DescontoConsulta NUMERIC NULL,
  PRIMARY KEY(M�dico_CRM, Paciente_idPaciente),
  INDEX M�dico_has_Paciente_FKIndex1(M�dico_CRM),
  INDEX M�dico_has_Paciente_FKIndex2(Paciente_idPaciente)
);

CREATE TABLE Exame (
  M�dico_CRM VARCHAR(20) NOT NULL,
  Paciente_idPaciente INTEGER UNSIGNED NOT NULL,
  TipoExame INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Conv�nio VARCHAR(3) BINARY NULL,
  Requisitos VARCHAR(45) NULL,
  Valor NUMERIC NULL,
  Resultado VARCHAR(45) NULL,
  INDEX Exame_FKIndex1(Paciente_idPaciente),
  INDEX Exame_FKIndex2(M�dico_CRM)
);

CREATE TABLE M�dico (
  CRM VARCHAR(20) NOT NULL,
  NomeM�dico VARCHAR(45) NULL,
  Especialidade VARCHAR(45) NULL,
  PRIMARY KEY(CRM)
);

CREATE TABLE Paciente (
  idPaciente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomePaciente VARCHAR(45) NULL,
  Endere�oPaciente VARCHAR(45) NULL,
  PRIMARY KEY(idPaciente)
);



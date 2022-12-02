CREATE TABLE Consulta (
  Médico_CRM VARCHAR(20) NOT NULL,
  Paciente_idPaciente INTEGER UNSIGNED NOT NULL,
  DataConsulta DATE NULL,
  HoraConsulta DATETIME NULL,
  ValorConsulta NUMERIC NULL,
  DescontoConsulta NUMERIC NULL,
  PRIMARY KEY(Médico_CRM, Paciente_idPaciente),
  INDEX Médico_has_Paciente_FKIndex1(Médico_CRM),
  INDEX Médico_has_Paciente_FKIndex2(Paciente_idPaciente)
);

CREATE TABLE Exame (
  Médico_CRM VARCHAR(20) NOT NULL,
  Paciente_idPaciente INTEGER UNSIGNED NOT NULL,
  TipoExame INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Convênio VARCHAR(3) BINARY NULL,
  Requisitos VARCHAR(45) NULL,
  Valor NUMERIC NULL,
  Resultado VARCHAR(45) NULL,
  INDEX Exame_FKIndex1(Paciente_idPaciente),
  INDEX Exame_FKIndex2(Médico_CRM)
);

CREATE TABLE Médico (
  CRM VARCHAR(20) NOT NULL,
  NomeMédico VARCHAR(45) NULL,
  Especialidade VARCHAR(45) NULL,
  PRIMARY KEY(CRM)
);

CREATE TABLE Paciente (
  idPaciente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  NomePaciente VARCHAR(45) NULL,
  EndereçoPaciente VARCHAR(45) NULL,
  PRIMARY KEY(idPaciente)
);



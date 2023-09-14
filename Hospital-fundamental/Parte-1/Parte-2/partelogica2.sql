CREATE TABLE [paciente] (
  [nome] varchar(500),
  [data_de_nascimento] int(dd/mm/yyyy),
  [endereco] varchar(500),
  [telefone] char(11),
  [email] varchar(200),
  [CPF] char(11),
  [RG] char(12)
)
GO

CREATE TABLE [consulta] (
  [data] int(dd/mm/yyyy),
  [hora] int,
  [medico_responsavel] varchar(500),
  [paciente] varchar(500),
  [valor_da_consulta] float,
  [tipo_da_consulta] varchar(500),
  [nome_do_convenio] varchar(500),
  [numero_da_carteirinha] int
)
GO

CREATE TABLE [convenio] (
  [id] serial,
  [nome] varchar(500),
  [CNPJ] char(14),
  [tempo_de_carencia] int,
  [numero_da_carteirinha] int
)
GO

CREATE TABLE [internacao] (
  [id] serial,
  [data_de_entrada] int(dd/mm/yyyy),
  [data_prev_alta] int(dd/mm/yyyy),
  [data_alta] int(dd/mm/yyyy),
  [procedimento] nvarchar
)
GO

CREATE TABLE [quarto] (
  [id] serial,
  [tipo] nvarchar(255),
  [numero] int
)
GO

CREATE TABLE [tipo_de_quarto] (
  [id] serial,
  [descricao] nvarchar(255),
  [valor_diaria] float
)
GO

CREATE TABLE [enfermeiro] (
  [id] serial,
  [nome] varchar(500),
  [cpf] char(11),
  [cre] int
)
GO

CREATE TABLE [medico] (
  [id] serial,
  [nome] varchar(500),
  [CRM] int,
  [CPF] char(11),
  [CEP] int(8),
  [cidade] nvarchar(255),
  [endereco] nvarchar(255),
  [bairro] nvarchar(255),
  [telefone] char(11)
)
GO

CREATE TABLE [especializacao] (
  [id] serial,
  [especializacao_1] varchar(500),
  [especializacao_2] varchar(500)
)
GO

CREATE TABLE [receita] (
  [id] serial,
  [medicamentos_receitados] nvarchar(255),
  [quantidade] int,
  [instrucoes_de_uso] nvarchar(255)
)
GO

ALTER TABLE [quarto] ADD FOREIGN KEY ([id]) REFERENCES [internacao] ([id])
GO

ALTER TABLE [tipo_de_quarto] ADD FOREIGN KEY ([id]) REFERENCES [quarto] ([id])
GO

ALTER TABLE [enfermeiro] ADD FOREIGN KEY ([id]) REFERENCES [internacao] ([id])
GO

ALTER TABLE [medico] ADD FOREIGN KEY ([id]) REFERENCES [consulta] ([paciente])
GO

ALTER TABLE [especializacao] ADD FOREIGN KEY ([id]) REFERENCES [medico] ([id])
GO

ALTER TABLE [receita] ADD FOREIGN KEY ([id]) REFERENCES [medico] ([id])
GO

ALTER TABLE [convenio] ADD FOREIGN KEY ([id]) REFERENCES [paciente] ([nome])
GO

ALTER TABLE [consulta] ADD FOREIGN KEY ([paciente]) REFERENCES [paciente] ([nome])
GO

ALTER TABLE [paciente] ADD FOREIGN KEY ([nome]) REFERENCES [receita] ([id])
GO

ALTER TABLE [internacao] ADD FOREIGN KEY ([id]) REFERENCES [paciente] ([nome])
GO

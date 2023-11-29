CREATE TABLE [imoveis] (
  [im_cod] int IDENTITY(1,1) PRIMARY KEY,
  [im_valor] decimal(18,2),
  [im_logradouro] varchar(200),
  [im_bairro] varchar(100),
  [im_cidade] varchar(150),
  [im_uf] char(2),
  [im_numero] int,
  [im_tipo] varchar(100),
  [im_val_iptu] decimal(18,2)
)
GO

CREATE TABLE [imovel_fotos] (
  [imf_cod] INT IDENTITY(1,1) PRIMARY KEY,
  [imf_imovel_cod] INT,
  [imf_dt_cad] DATETIME,
  [imf_arquivo] VARCHAR(150)
)
GO

CREATE TABLE [clientes] (
  [cli_cod] int IDENTITY(1,1) PRIMARY KEY,
  [cli_dt_cad] DATE,
  [cli_dt_alt] DATE,
  [cli_nome] VARCHAR(200),
  [cli_documento] VARCHAR(20),
  [cli_documento2] VARCHAR(20),
  [cli_logradouro] VARCHAR(200),
  [cli_bairro] VARCHAR(100),
  [cli_cidade] VARCHAR(150),
  [cli_uf] CHAR(2),
  [cli_numero] INT,
  [cli_telefone] VARCHAR(22),
  [cli_telefone2] VARCHAR(22),
  [cli_pai] VARCHAR(200),
  [cli_mae] VARCHAR(200),
  [cli_rendimento] DECIMAL(18,2)
)
GO

CREATE TABLE [apolices] (
  [apo_cod] INT IDENTITY(1,1) PRIMARY KEY,
  [apo_im_cod] INT,
  [apo_cli_cod] INT,
  [apo_dt_cad] DATETIME,
  [apo_dt_alt] DATETIME,
  [apo_dt_inicio_vigencia] DATE,
  [apo_dt_fim_vigencia] DATE,
  [apo_valor_cobertura] DECIMAL(18,2),
  [apo_valor_franquia] DECIMAL(18,2)
)
GO

CREATE TABLE [apolice_itens] (
  [api_cod] INT IDENTITY(1,1) PRIMARY KEY,
  [api_apo_cod] INT,
  [api_descricao] VARCHAR(MAX)
)
GO

CREATE TABLE [sinistro] (
  [sin_cod] INT IDENTITY(1,1) PRIMARY KEY,
  [sin_im_cod] INT,
  [sin_dt_cad] DATE,
  [sin_hr_cad] TIME,
  [sin_sit_cod] INT,
  [sin_tipo_cod] INT
)
GO

CREATE TABLE [sinistro_tipo] (
  [sit_cod] INT IDENTITY(1,1) PRIMARY KEY,
  [sit_nome] VARCHAR(40),
  [sit_pontos] INT
)
GO

CREATE TABLE [log] (
  [tabela] VARCHAR(20),
  [data_cadstro] DATETIME,
  [usuario] VARCHAR(20),
  [tipo_operacao] VARCHAR(20),
  [operacao] VARCHAR(MAX)
)
GO

ALTER TABLE [imovel_fotos] ADD FOREIGN KEY ([imf_imovel_cod]) REFERENCES [imoveis] ([im_cod])
GO

ALTER TABLE [sinistro] ADD FOREIGN KEY ([sin_im_cod]) REFERENCES [imoveis] ([im_cod])
GO

ALTER TABLE [sinistro] ADD FOREIGN KEY ([sin_tipo_cod]) REFERENCES [sinistro_tipo] ([sit_cod])
GO

ALTER TABLE [apolices] ADD FOREIGN KEY ([apo_cli_cod]) REFERENCES [clientes] ([cli_cod])
GO

ALTER TABLE [apolices] ADD FOREIGN KEY ([apo_im_cod]) REFERENCES [imoveis] ([im_cod])
GO

ALTER TABLE [apolice_itens] ADD FOREIGN KEY ([api_apo_cod]) REFERENCES [apolices] ([apo_cod])
GO

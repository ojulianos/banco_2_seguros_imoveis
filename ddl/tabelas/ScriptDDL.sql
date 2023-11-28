CREATE TABLE [imoveis] (
  [im_cod] int PRIMARY KEY,
  [im_valor] decimal,
  [im_logradouro] VARCHAR(255),
  [im_bairro] VARCHAR(255),
  [im_cidade] VARCHAR(255),
  [im_uf] VARCHAR(255),
  [im_numero] int,
  [im_tipo] VARCHAR(255),
  [im_val_iptu] decimal
)
GO

CREATE TABLE [imovel_fotos] (
  [imf_cod] INT PRIMARY KEY,
  [imf_imovel_cod] INT,
  [imf_dt_cad] DATE,
  [imf_arquivo] VARCHAR
)
GO

CREATE TABLE [clientes] (
  [cli_cod] int PRIMARY KEY,
  [cli_dt_cad] DATE,
  [cli_dt_alt] DATE,
  [cli_nome] VARCHAR,
  [cli_documento] VARCHAR,
  [cli_documento2] VARCHAR,
  [cli_logradouro] VARCHAR,
  [cli_bairro] VARCHAR,
  [cli_cidade] VARCHAR,
  [cli_uf] CHAR,
  [cli_numero] INT,
  [cli_telefone] VARCHAR,
  [cli_telefone2] VARCHAR,
  [cli_pai] VARCHAR,
  [cli_mae] VARCHAR,
  [cli_rendimento] DECIMAL
)
GO

CREATE TABLE [apolices] (
  [apo_cod] INT PRIMARY KEY,
  [apo_im_cod] INT,
  [apo_cli_cod] INT,
  [apo_dt_cad] DATE,
  [apo_dt_alt] DATE,
  [apo_dt_inicio_vigencia] DATE,
  [apo_dt_fim_vigencia] DATE,
  [apo_valor_cobertura] DECIMAL,
  [apo_valor_franquia] DECIMAL
)
GO

CREATE TABLE [apolice_itens] (
  [api_cod] INT PRIMARY KEY,
  [api_apo_cod] INT,
  [api_descricao] VARCHAR
)
GO

CREATE TABLE [sinistro] (
  [sin_cod] INT PRIMARY KEY,
  [sin_im_cod] INT,
  [sin_dt_cad] DATE,
  [sin_hr_cad] TIME,
  [sin_sit_cod] INT,
  [sin_tipo_cod] INT
)
GO

CREATE TABLE [sinistro_tipo] (
  [sit_cod] INT PRIMARY KEY,
  [sit_nome] VARCHAR,
  [sit_pontos] INT
)
GO

CREATE TABLE [log] (
  [tabela] VARCHAR(255),
  [data_cadastro] DATE,
  [usuario] VARCHAR(255),
  [tipo_operacao] VARCHAR(50),
  [operacao] VARCHAR(MAX)
)
GO

ALTER TABLE [imovel_fotos] ADD FOREIGN KEY ([imf_imovel_cod]) REFERENCES [imoveis] ([im_cod])
GO

ALTER TABLE [sinistro] ADD FOREIGN KEY ([sin_tipo_cod]) REFERENCES [sinistro_tipo] ([sit_cod])
GO

ALTER TABLE [apolices] ADD FOREIGN KEY ([apo_cli_cod]) REFERENCES [clientes] ([cli_cod])
GO

ALTER TABLE [imoveis] ADD FOREIGN KEY ([im_cod]) REFERENCES [apolices] ([apo_im_cod])
GO

ALTER TABLE [sinistro_tipo] ADD FOREIGN KEY ([sit_cod]) REFERENCES [sinistro] ([sin_tipo_cod])
GO

ALTER TABLE [apolice_itens] ADD FOREIGN KEY ([api_apo_cod]) REFERENCES [apolices] ([apo_cod])
GO

ALTER TABLE [apolices] ADD FOREIGN KEY ([apo_im_cod]) REFERENCES [imoveis] ([im_cod])
GO

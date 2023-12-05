-- REMOVE INDICES CASO EXISTAM
ALTER TABLE [apolices] DROP CONSTRAINT IF EXISTS fk_apolices__cliente_cod
GO
ALTER TABLE [apolices] DROP CONSTRAINT IF EXISTS fk_apolices__imovel_cod
GO
ALTER TABLE [apolice_itens] DROP CONSTRAINT IF EXISTS fk_apolice_itens__apolice_cod
GO
ALTER TABLE [imovel_fotos] DROP CONSTRAINT IF EXISTS fk_imovel_fotos__imovel
GO
ALTER TABLE [sinistro] DROP CONSTRAINT IF EXISTS fk_sinistro__imovel_cod
GO
ALTER TABLE [sinistro] DROP CONSTRAINT IF EXISTS fk_sinistro__sinistro_tipo_cod 
GO

-- TABELA DE IMOVEIS
DROP TABLE IF EXISTS [imoveis]
GO
CREATE TABLE [imoveis] (
  [im_cod] int IDENTITY NOT NULL PRIMARY KEY,
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

-- TABELA DE FOTOS DO IMOVEL
DROP TABLE IF EXISTS [imovel_fotos]
GO
CREATE TABLE [imovel_fotos] (
  [imf_cod] INT IDENTITY NOT NULL PRIMARY KEY,
  [imf_imovel_cod] INT,
  [imf_dt_cad] DATETIME DEFAULT GETDATE(),
  [imf_arquivo] VARCHAR(150)
)
GO

-- TABELA DE CLIENTES
DROP TABLE IF EXISTS [clientes]
GO
CREATE TABLE [clientes] (
  [cli_cod] int IDENTITY NOT NULL PRIMARY KEY,
  [cli_dt_cad] DATE DEFAULT GETDATE(),
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

-- TABELA DE APOLICES
DROP TABLE IF EXISTS [apolices]
GO
CREATE TABLE [apolices] (
  [apo_cod] INT IDENTITY NOT NULL PRIMARY KEY,
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

-- TABELA DE ITENS/CONTRATOS DA APOLICE
DROP TABLE IF EXISTS [apolice_itens]
GO
CREATE TABLE [apolice_itens] (
  [api_cod] INT IDENTITY NOT NULL PRIMARY KEY,
  [api_apo_cod] INT,
  [api_descricao] VARCHAR(MAX)
)
GO

-- TABELA DE SINISTROS
DROP TABLE IF EXISTS [sinistro]
GO
CREATE TABLE [sinistro] (
  [sin_cod] INT IDENTITY NOT NULL PRIMARY KEY,
  [sin_im_cod] INT,
  [sin_dt_cad] DATE,
  [sin_hr_cad] TIME,
  [sin_sit_cod] INT,
  [sin_tipo_cod] INT
)
GO

-- TABELA DE TIPOS DE SINISTRO
DROP TABLE IF EXISTS [sinistro_tipo]
GO
CREATE TABLE [sinistro_tipo] (
  [sit_cod] INT IDENTITY NOT NULL PRIMARY KEY,
  [sit_nome] VARCHAR(40),
  [sit_pontos] INT
)
GO

-- TABELA DE LOGS
DROP TABLE IF EXISTS [log]
GO
CREATE TABLE [log] (
  [tabela] VARCHAR(20),
  [data_cadstro] DATETIME,
  [usuario] VARCHAR(20),
  [tipo_operacao] VARCHAR(20),
  [operacao] VARCHAR(MAX)
)
GO

---- CHAVES ESTRANGEIRAS ----
-- TABELA DE APOLICES
ALTER TABLE [apolices]
ADD CONSTRAINT fk_apolices__cliente_cod FOREIGN KEY ([apo_cli_cod])
REFERENCES [clientes] ([cli_cod])
GO

ALTER TABLE [apolices]
ADD CONSTRAINT fk_apolices__imovel_cod FOREIGN KEY ([apo_im_cod])
REFERENCES [imoveis] ([im_cod])
GO

-- TABELA DE ITENS/CONTRATOS APOLICE
ALTER TABLE [apolice_itens]
ADD CONSTRAINT fk_apolice_itens__apolice_cod FOREIGN KEY ([api_apo_cod])
REFERENCES [apolices] ([apo_cod])
GO

-- TABELA DE FOTOS DO IMOVEL
ALTER TABLE [imovel_fotos]
ADD CONSTRAINT fk_imovel_fotos__imovel FOREIGN KEY ([imf_imovel_cod])
REFERENCES [imoveis] ([im_cod])
GO

-- TABELA DE SINISTROS
ALTER TABLE [sinistro]
ADD CONSTRAINT fk_sinistro__imovel_cod FOREIGN KEY ([sin_im_cod])
REFERENCES [imoveis] ([im_cod])
GO
ALTER TABLE [sinistro]
ADD CONSTRAINT fk_sinistro__sinistro_tipo_cod FOREIGN KEY ([sin_tipo_cod])
REFERENCES [sinistro_tipo] ([sit_cod])
GO

-- INDICES
DROP INDEX IF EXISTS idx_apolice_imovel_cliente ON apolices
GO
CREATE INDEX idx_apolice_imovel_cliente	 ON apolices (apo_cod, apo_im_cod, apo_cli_cod)
GO

DROP INDEX IF EXISTS idx_cliente_documento ON clientes
GO
CREATE INDEX idx_cliente_documento ON clientes (cli_documento)
GO

DROP INDEX IF EXISTS idx_sinistro_imovel ON sinistro
GO
CREATE INDEX idx_sinistro_imovel ON sinistro (sin_cod, sin_im_cod)
GO



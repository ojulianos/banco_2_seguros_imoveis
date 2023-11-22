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

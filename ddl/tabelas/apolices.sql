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

ALTER TABLE [apolices] ADD FOREIGN KEY ([apo_cli_cod]) REFERENCES [clientes] ([cli_cod])
GO


ALTER TABLE [apolices] ADD FOREIGN KEY ([apo_dt_cad]) REFERENCES [apolices] ([apo_im_cod])
GO

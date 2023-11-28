CREATE TABLE [apolice_itens] (
  [api_cod] INT PRIMARY KEY,
  [api_apo_cod] INT,
  [api_descricao] VARCHAR
)
GO

ALTER TABLE [apolice_itens] ADD FOREIGN KEY ([api_apo_cod]) REFERENCES [apolices] ([apo_cod])
GO

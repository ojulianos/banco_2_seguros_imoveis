CREATE TABLE [sinistro_tipo] (
  [sit_cod] INT PRIMARY KEY,
  [sit_nome] VARCHAR,
  [sit_pontos] INT
)
GO

ALTER TABLE [sinistro_tipo] ADD FOREIGN KEY ([sit_cod]) REFERENCES [sinistro] ([sin_tipo_cod])
GO

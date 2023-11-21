CREATE TABLE [imovel_fotos] (
  [imf_cod] INT PRIMARY KEY,
  [imf_imovel_cod] INT,
  [imf_dt_cad] DATE,
  [imf_arquivo] VARCHAR
)
GO

ALTER TABLE [imovel_fotos] ADD FOREIGN KEY ([imf_imovel_cod]) REFERENCES [imoveis] ([im_cod])
GO

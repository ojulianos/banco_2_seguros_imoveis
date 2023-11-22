CREATE TABLE [sinistro] (
  [sin_cod] INT PRIMARY KEY,
  [sin_im_cod] INT,
  [sin_dt_cad] DATE,
  [sin_hr_cad] TIME,
  [sin_sit_cod] INT,
  [sin_tipo_cod] INT
)
GO

ALTER TABLE [sinistro] ADD FOREIGN KEY ([sin_im_cod]) REFERENCES [imoveis] ([im_cod])
GO

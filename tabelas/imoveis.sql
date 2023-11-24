CREATE TABLE [imoveis] (
  [im_cod] int PRIMARY KEY,
  [im_valor] decimal,
  [im_logradouro] nvarchar(255),
  [im_bairro] nvarchar(255),
  [im_cidade] nvarchar(255),
  [im_uf] nvarchar(255),
  [im_numero] int,
  [im_tipo] nvarchar(255),
  [im_val_iptu] decimal
)
GO

ALTER TABLE [imoveis] ADD FOREIGN KEY ([im_cod]) REFERENCES [apolices] ([apo_im_cod])
GO

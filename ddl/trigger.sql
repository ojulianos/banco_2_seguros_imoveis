
DROP TRIGGER IF EXISTS 
	tr_delete_apolice_item, 
	tr_delete_apolice, 
	tr_delete_imovel, 
	tr_delete_imovel_foto, 
	tr_delete_sinistro, 
	tr_delete_sinistro_tipo
GO

CREATE TRIGGER tr_delete_apolice_item ON apolice_itens for DELETE AS
BEGIN
	IF (ROWCOUNT_BIG() = 0)
		RETURN;

	DECLARE @dt_exclusao DATE = GETDATE(),
			@usuario_exclusao VARCHAR(100) = SUSER_NAME();

	INSERT INTO dbo.log (tabela, data_cadstro, usuario, tipo_operacao, operacao)
		VALUES ('apolice_itens', @dt_exclusao, @usuario_exclusao, 'delete', (SELECT * FROM deleted FOR JSON PATH));
END
GO

CREATE TRIGGER tr_delete_apolice ON apolices INSTEAD OF DELETE AS
BEGIN
	DECLARE @dt_exclusao DATE = GETDATE(),
		@usuario_exclusao VARCHAR(100) = SUSER_NAME(),
		@itens varchar(max) = '',
		@apolice varchar(max) = '';
    
	SELECT @apolice = (SELECT * FROM deleted FOR JSON PATH);
	SELECT @itens = (SELECT * FROM apolice_itens WHERE api_apo_cod IN (SELECT api_cod FROM deleted) FOR JSON PATH);
	INSERT INTO dbo.log (tabela, data_cadstro, usuario, tipo_operacao, operacao)
		VALUES ('apolices', @dt_exclusao, @usuario_exclusao, 'delete', @apolice),
			   ('apolice_itens', @dt_exclusao, @usuario_exclusao, 'delete', @itens);

	DELETE FROM apolice_itens WHERE api_apo_cod IN (SELECT apo_cod FROM deleted);
	DELETE FROM apolices WHERE apo_cod IN (SELECT apo_cod FROM deleted);
END
GO

CREATE TRIGGER tr_delete_imovel ON imoveis INSTEAD OF DELETE AS
BEGIN
	DECLARE @dt_exclusao DATE = GETDATE(),
		@usuario_exclusao VARCHAR(100) = SUSER_NAME(),
		@imovel varchar(max) = '',
		@imovel_fotos varchar(max) = '';
    
	SELECT @imovel = (SELECT * FROM deleted FOR JSON PATH);
	SELECT @imovel_fotos = (SELECT * FROM imovel_fotos WHERE imf_imovel_cod IN (SELECT im_cod FROM deleted) FOR JSON PATH);
	INSERT INTO dbo.log (tabela, data_cadstro, usuario, tipo_operacao, operacao)
		VALUES ('imoveis', @dt_exclusao, @usuario_exclusao, 'delete', @imovel),
			   ('imovel_fotos', @dt_exclusao, @usuario_exclusao, 'delete', @imovel_fotos);

	DELETE FROM apolices WHERE apo_im_cod IN (SELECT im_cod FROM deleted);
	DELETE FROM sinistro WHERE sin_im_cod IN (SELECT im_cod FROM deleted);
	DELETE FROM imovel_fotos WHERE imf_imovel_cod IN (SELECT im_cod FROM deleted);
	DELETE FROM imoveis WHERE im_cod IN (SELECT im_cod FROM deleted);
END
GO

CREATE TRIGGER tr_delete_imovel_foto ON imovel_fotos for DELETE AS
BEGIN
	IF (ROWCOUNT_BIG() = 0)
		RETURN;

	DECLARE @dt_exclusao DATE = GETDATE(),
			@usuario_exclusao VARCHAR(100) = SUSER_NAME();

	INSERT INTO dbo.log (tabela, data_cadstro, usuario, tipo_operacao, operacao)
		VALUES ('imovel_fotos', @dt_exclusao, @usuario_exclusao, 'delete', (SELECT * FROM deleted FOR JSON PATH));
END
GO

CREATE TRIGGER tr_delete_sinistro ON sinistro for DELETE AS
BEGIN
	IF (ROWCOUNT_BIG() = 0)
		RETURN;

	DECLARE @dt_exclusao DATE = GETDATE(),
			@usuario_exclusao VARCHAR(100) = SUSER_NAME();

	INSERT INTO dbo.log (tabela, data_cadstro, usuario, tipo_operacao, operacao)
		VALUES ('sinistros', @dt_exclusao, @usuario_exclusao, 'delete', (SELECT * FROM deleted FOR JSON PATH));
END
GO

CREATE TRIGGER tr_delete_sinistro_tipo ON sinistro_tipo for DELETE AS
BEGIN
	IF (ROWCOUNT_BIG() = 0)
		RETURN;

	DECLARE @dt_exclusao DATE = GETDATE(),
			@usuario_exclusao VARCHAR(100) = SUSER_NAME();

	INSERT INTO dbo.log (tabela, data_cadstro, usuario, tipo_operacao, operacao)
		VALUES ('sinistro_tipo', @dt_exclusao, @usuario_exclusao, 'delete', (SELECT * FROM deleted FOR JSON PATH));
END
GO

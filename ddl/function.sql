
drop function if exists fn_valor_apolice
go

-- Fun;áo para adicionar porcentagem ao valor da apólice de acordo com a pontuação do cliente
create function fn_valor_apolice(@cod_cliente int, @valor_apolice decimal) returns int
as
begin
	declare @pontos int
	declare @resultado decimal

	select @pontos = sum(sit_pontos)
	from clientes
	inner join apolices on apo_cli_cod = cli_cod
	inner join sinistro on sin_im_cod = apo_im_cod
	inner join sinistro_tipo on sin_tipo_cod = sit_cod
	where cli_cod=@cod_cliente

	BEGIN
		IF @pontos > 45
			select @resultado = (@valor_apolice * 0.5)
		ELSE IF @pontos > 35
			select @resultado = (@valor_apolice * 0.25)
		ELSE IF @pontos > 25
			select @resultado = (@valor_apolice * 0.15)
		ELSE IF @pontos > 15
			select @resultado = (@valor_apolice * 0.10)
		ELSE
			select @resultado = (@valor_apolice * 0.001)
	END

	return @valor_apolice + @resultado
end
go

select [dbo].[fn_valor_apolice](cli_cod, 500) as valor_apolice, cli.*
from clientes cli
go
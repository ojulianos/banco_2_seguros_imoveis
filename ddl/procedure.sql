-- procedure, gera um relatorio com todos os imoveis de um cliente e a quantidade de sinistros por imovel com sql server
drop procedure if exists pr_imoveis_vs_sinistros
go

CREATE PROCEDURE pr_imoveis_vs_sinistros
    @cod_cliente INT
AS
BEGIN
	with cte as (
		select cli_nome
			, im_tipo
			, im_logradouro
			, im_bairro
			, im_cidade
			, im_uf
			, COALESCE((select count(*) from sinistro where sin_im_cod=im_cod), 0) as sinistros
		from clientes
		left join apolices on apo_cli_cod=cli_cod
		left join imoveis on im_cod=apo_im_cod
		where cli_cod=@cod_cliente
	) select * from cte
	order by sinistros desc
END
go

exec pr_imoveis_vs_sinistros 1
go


-- procedure, gera um relatorio com todos os imoveis com o valor individual de cada apolice e valor total da franquia das apolices agrupado por cliente
drop procedure if exists pr_imoveis_vs_franquia
go

CREATE PROCEDURE pr_imoveis_vs_franquia
AS
BEGIN
	select cli_nome
		, im_tipo
		, im_logradouro
		, im_bairro
		, im_cidade
		, im_uf
		, apo_valor_franquia
		, coalesce(sum(apo_valor_franquia) over(partition by cli_cod), 0) total_franquia_cliente
		, sum(apo_valor_franquia) over() total_franquias
	from clientes cli
	left join apolices apo on apo_cli_cod=cli_cod
	left join imoveis im on im_cod=apo_im_cod
END
go

exec pr_imoveis_vs_franquia
go
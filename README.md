## Projeto Sistema de Seguros de Imóveis

### Grupo A

### Integrantes:
Juliano da S Silva - @ojulianos<br>
Alexandre Hermes - @Alexandre200319<br>
Vinicius Raccolto - @vraccolto<br>
Jefferson Pacheco - @jzpacheco<br>
Anderson Pizzolo - @Anderson-Pizzolo<br>
Gabriel Angelo Kaufmann - @GabrielAKaufmann<br>

### Modelo Físico:

Utilizado https://dbdiagram.io/

[Arquivo fonte](db_diagram.md)

![Diagrama ER](Diagrama%20ER.png)

  
### Dicionário de Dados:
[Excel](dicionario-dados/dicionario-dados.ods)



### Scripts DDL Criação do Database:
[ScriptDDL](ddl/01-ScriptDDL.sql)

### Scripts Popular tabelas:
[ScriptDMS](dml/ScriptDML.sql)

### Objetos de BD (stored procedure, triggers e functions):
[Stored Procedures](ddl/procedure.sql)

[Functions](ddl/function.sql)

[Triggers](ddl/trigger.sql)


[function] fn_valor_apolice(calcular o valor da apolice com base na pontuação do cliente)

[procedure] pr_imoveis_vs_sinistros(gera um relatorio com todos os imoveis de um cliente e a quantidade de sinistros por imovel)

[procedure] pr_imoveis_vs_franquia (gera um relatorio com todos os imoveis com o valor individual de cada apolice e valor total da franquia das apolices agrupado por cliente)

[trigger] tr_delete_(apolice_itens, apolice, imovel, imovel_foto, sinistro, sinistro_tipo) (sempre que algum dados for excluido é chamada a trigger da tabela referente faz a transação necessária e registra o log)

- apolice: deleta apolice e apolice_item e grava log
- apolice_item : deleta apolice_item e grava log
- imovel: deleta apolice, sinistro, imovel, imovel_fotos e grava log
- imovel_foto: deleta imovel_foto e grava log
- sinistro: deleta sinistro e grava log
- sinistro_tipo: deleta sinistro_tipo e grava log


-------------------------------------

````
Banco de dados utilizado Microsoft SQL Server 2019 (RTM) - 15.0.2000.5 (X64).
````


### Código do sistema:
Linguagem de Programação Java.<br>

- [Back-end (Java + SpringBot)](back-end/)
- [Front-end (HTML, CSS, JavaScript)](front-end/)
- [Banco de Dados Microsoft SQL Server 2019](https://www.microsoft.com/pt-br/download/details.aspx?id=101064)

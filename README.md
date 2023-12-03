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
Tabelas:
- usuarios (usu_cod, usu_nome, usu_usuario, usu_senha, usu_dat_cad, usu_dat_alt, usu_documento, usu_tipo[adm, vendedor, recepcionista])
- imoveis (im_cod, im_valor, im_logradouro, im_bairro, im_cidade, im_uf, im_numero, im_tipo[casa, apto, sala comercial, terreno, pavilhão], im_val_iptu) 
- imovel_fotos (imf_cod, imf_imovel_cod, imf_dt_cad, imf_arquivo)
- clientes (cli_cod, cli_dt_cad, cli_dt_alt, cli_nome, cli_documento, cli_documento2, cli_logradouro, cli_bairro, cli_cidade, cli_uf, cli_numero, cli_telefone, cli_telefone2, cli_pai, cli_mae, cli_rendimento)
- apolices (apo_cod, apo_im_cod, apo_cli_cod, apo_dt_cad, apo_dt_alt, apo_dt_inicio_vgencia, apo_dt_fim_vgencia, apo_valor_cobertura, apo_valor_franquia)
- apolice_itens (api_cod, api_apo_cod, api_descricao)
- sinistro (sin_cod, sin_im_cod, sin_dt_cad, sin_hr_cad, sin_sit_cod)
- sinistro_tipos (sit_cod, sit_nome, sit_pontos)
- logs
- trigger, quando adicionado um novo sinistro a um imovel a pontuação deve ser acrescida em x pontos de acordo com tabela pontos_x_sinistro
- function, calcula o valor da apolice com base na pontuação do cliente
- procedure, gera um relatorio com todos os imoveis de um cliente e a quantidade de sinistros por imovel
- procedure, gera um relatorio com todos os imoveis de um cliente e o valor individual de cada apolice e valor total das apolices
- procedure, atualiza valor dos imoveis de acordo com taxa ipca, igpm

Utilizado https://dbdiagram.io/<br>
[Arquivo fonte](https://dbdiagram.io/d/trabalho-banco-2-6566748c3be1495787ecdddf)<br>

![Diagrama ER](Diagrama%20ER.png)

```` json
table imoveis {
  im_cod int pk
  im_valor decimal(18,2)
  im_logradouro varchar(200) 
  im_bairro varchar(100)
  im_cidade varchar(150)
  im_uf char(2)
  im_numero int
  im_tipo varchar(100)
  im_val_iptu decimal(18,2)
}
table imovel_fotos {
  imf_cod INT pk
  imf_imovel_cod INT [ref: > imoveis.im_cod]
  imf_dt_cad DATETIME
  imf_arquivo VARCHAR(150)
}
table clientes {
  cli_cod int pk
  cli_dt_cad DATE 
  cli_dt_alt DATE
  cli_nome VARCHAR(200)
  cli_documento VARCHAR(20)
  cli_documento2 VARCHAR(20)
  cli_logradouro VARCHAR(200)
  cli_bairro VARCHAR(100)
  cli_cidade VARCHAR(150)
  cli_uf CHAR(2)
  cli_numero INT 
  cli_telefone VARCHAR(22)
  cli_telefone2 VARCHAR(22)
  cli_pai VARCHAR(200)
  cli_mae VARCHAR(200)
  cli_rendimento DECIMAL(18,2)
}
table apolices {
  apo_cod INT PK
  apo_im_cod INT [ref: > imoveis.im_cod]
  apo_cli_cod INT  [ref: > clientes.cli_cod]
  apo_dt_cad DATETIME 
  apo_dt_alt DATETIME
  apo_dt_inicio_vigencia DATE
  apo_dt_fim_vigencia DATE 
  apo_valor_cobertura DECIMAL(18,2)
  apo_valor_franquia DECIMAL(18,2)
}
table apolice_itens{
  api_cod INT PK
  api_apo_cod INT [ref: > apolices.apo_cod]
  api_descricao VARCHAR(MAX)
}
table sinistro{
  sin_cod INT PK
  sin_im_cod INT  [ref: > imoveis.im_cod]
  sin_dt_cad DATE
  sin_hr_cad TIME
  sin_sit_cod INT [ref: - sinistro_tipo.sit_cod]
  sin_tipo_cod INT
} 
table sinistro_tipo {
  sit_cod INT PK
  sit_nome VARCHAR(40)
  sit_pontos INT
}

table log{
  tabela VARCHAR(20)
  data_cadstro DATETIME
  usuario VARCHAR(20)
  tipo_operacao VARCHAR(20)
  operacao VARCAHR(MAX)
}
````
  
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

````
Banco de dados utilizado Microsoft SQL Server 2019 (RTM) - 15.0.2000.5 (X64).
````


### Código do sistema:
Linguagem de Programação Java.<br>

- [Back-end (Java + SpringBot)](back-end/)
- [Front-end (HTML, CSS, JavaScript)](front-end/)
- [Banco de Dados Microsoft SQL Server 2019](https://www.microsoft.com/pt-br/download/details.aspx?id=101064)

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
Arquivo fonte: <code>https://dbdiagram.io/d/65568d1e3be1495787288b46</code><br>
![Diagrama ER](Diagrama%20ER.png)
  
### Dicionário de Dados:
<code>Excel ou tabela do Github (markdown)</code>

### Scripts DDL Criação do Database:
Banco de dados utilizado SQL Server versão 2022 - Azure.<br>
<code>1 arquivo SQL por objeto</code>

### Scripts Popula tabelas:
Banco de dados utilizado SQL Server versão 2022 - Azure.<br>
<code>1 arquivo SQL por objeto</code>

### Objetos de BD (stored procedure, triggers e functions):
<code>1 arquivo SQL por objeto</code>
  
### Código do sistema:
Linguagem de Programação C# .NET.<br>
<code>código fonte da aplicação</code>

Back-end (Java + SpringBot)
Front-end (HTML, CSS, JavaScript)
Banco de Dados Microsoft SQL Server

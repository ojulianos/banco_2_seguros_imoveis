Utilizado https://dbdiagram.io/

``` json

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

```
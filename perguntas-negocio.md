###  Qual é a distribuição das ocorrências de sinistros por tipo, e quais são os tipos de sinistros mais frequentes

``` SQL
SELECT st.sit_nome, COUNT(s.sin_cod) AS total_ocorrencias
FROM sinistro_tipo st
LEFT JOIN sinistro s ON st.sit_cod = s.sin_tipo_cod
GROUP BY st.sit_nome
ORDER BY total_ocorrencias DESC; 
```

### Listar os clientes que possuem apólices de seguros ativas, juntamente com detalhes sobre os imóveis associados a essas apólices

``` SQL
SELECT 
    c.cli_nome,
    a.apo_dt_inicio_vigencia,
    a.apo_dt_fim_vigencia,
    im.im_logradouro,
    im.im_bairro,
    im.im_cidade,
    im.im_uf
FROM clientes c
JOIN apolices a ON c.cli_cod = a.apo_cli_cod
JOIN imoveis im ON a.apo_im_cod = im.im_cod
WHERE GETDATE() BETWEEN a.apo_dt_inicio_vigencia AND a.apo_dt_fim_vigencia;
```

### Calcular o valor total dos sinistros para cada cliente, considerando apenas os sinistros em imóveis com apólices associadas a esse cliente:

``` SQL
SELECT 
    c.cli_nome,
    SUM(st.sit_pontos) AS total_pontos_sinistros
FROM clientes c
JOIN apolices a ON c.cli_cod = a.apo_cli_cod
JOIN imoveis im ON a.apo_im_cod = im.im_cod
JOIN sinistro sin ON sin.sin_im_cod = im.im_cod
JOIN sinistro_tipo st ON sin.sin_tipo_cod = st.sit_cod
GROUP BY c.cli_nome;
```

### Quais são os clientes que têm o maior número de sinistros registrados e qual é a mídia de pontos associados a esses sinistros?

``` SQL
SELECT TOP 5
    c.cli_nome,
    COUNT(s.sin_cod) AS total_sinistros,
    AVG(st.sit_pontos) AS media_pontos
FROM
    clientes c
JOIN
    apolices a ON c.cli_cod = a.apo_cli_cod
JOIN
    sinistro s ON a.apo_cod = s.sin_im_cod
JOIN
    sinistro_tipo st ON s.sin_sit_cod = st.sit_cod
GROUP BY
    c.cli_nome
ORDER BY
    total_sinistros DESC;

```

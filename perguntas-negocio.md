###  Qual é a distribuição das ocorrências de sinistros por tipo, e quais são os tipos de sinistros mais frequentes

``` SQL
SELECT st.sit_nome, COUNT(s.sin_cod) AS total_ocorrencias
FROM sinistro_tipo st
LEFT JOIN sinistro s ON st.sit_cod = s.sin_tipo_cod
GROUP BY st.sit_nome
ORDER BY total_ocorrencias DESC; 
```

### "Quais são os clientes que atualmente têm apólices ativas, e quando essas apólices foram cadastradas

``` SQL
SELECT c.cli_nome, a.apo_dt_cad
FROM clientes c
JOIN apolices a ON c.cli_cod = a.apo_cli_cod
WHERE a.apo_dt_fim_vigencia > NOW();
```

### Qual é a distribuição mensal do valor total das apólices, considerando a soma dos valores de cobertura e franquia, nos últimos dois anos

``` SQL
SELECT MONTH(apo_dt_cad) AS mes, SUM(apo_valor_cobertura + apo_valor_franquia) AS total_apolices
FROM apolices
WHERE apo_dt_cad >= NOW() - INTERVAL 2 YEAR
GROUP BY mes;
```

### Quais são os clientes que têm o maior número de sinistros registrados e qual é a mídia de pontos associados a esses sinistros?

``` SQL
SELECT c.cli_nome, COUNT(s.sin_cod) AS total_sinistros, AVG(st.sit_pontos) AS media_pontos
FROM clientes c
JOIN apolices a ON c.cli_cod = a.apo_cli_cod
JOIN sinistro s ON a.apo_cod = s.sin_im_cod
JOIN sinistro_tipo st ON s.sin_sit_cod = st.sit_cod
GROUP BY c.cli_nome
ORDER BY total_sinistros DESC
LIMIT 5;
```
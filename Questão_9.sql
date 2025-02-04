SELECT 
    VEICULO.PLACA, 
    VEICULO.ANO_FABRICACAO, 
    VEICULO.ANO_MODELO
FROM 
    VEICULO
JOIN 
    MODELO ON VEICULO.CODIGO_MODELO = MODELO.CODIGO_MODELO
JOIN 
    FABRICANTE ON MODELO.CODIGO_FABRICANTE = FABRICANTE.CODIGO_DO_FABRICANTE
WHERE 
    MODELO.NOME_MODELO = 'GOL' 
    AND FABRICANTE.NOME_DO_FABRICANTE = 'VOLKSWAGEN' 
    AND (VEICULO.ANO_FABRICACAO = 2010 OR VEICULO.PLACA LIKE 'X%');
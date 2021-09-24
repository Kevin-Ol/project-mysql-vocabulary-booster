use hr;
DELIMITER $$
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hire_month INT, hire_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE employees_total INT;
SELECT 
    COUNT(*)
INTO employees_total FROM
    employees
WHERE
    MONTH(HIRE_DATE) = hire_month
        AND YEAR(HIRE_DATE) = hire_year;
    RETURN employees_total;
END $$

DELIMITER ;

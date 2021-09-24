use hr;
DELIMITER $$
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_total INT;
SELECT 
    COUNT(*)
INTO job_total FROM
    employees AS e
        INNER JOIN
    job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    EMAIL = employee_email;
    RETURN job_total;
END $$

DELIMITER ;

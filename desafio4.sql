SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(SALARY), 2) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS hre
        INNER JOIN
    hr.jobs AS hrj ON hrj.JOB_ID = hre.JOB_ID
GROUP BY hre.JOB_ID
ORDER BY `Média salarial`, Cargo;

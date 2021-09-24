SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_NAME = 'Europe',
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries
        JOIN
    hr.regions ON hr.countries.REGION_ID = hr.regions.REGION_ID
ORDER BY COUNTRY_NAME;

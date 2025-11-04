SELECT 
distinct Extended_step FROM salary_range_by_job_classification;

SELECT 
Max(Biweekly_high_Rate) FROM salary_range_by_job_classification;



Select
job_code,
pay_type FROM salary_range_by_job_classification;

Select
grade,eff_date, Sal_end_date FROM salary_range_by_job_classification WHERE grade = "Q90H0"

SELECT Step  FROM salary_range_by_job_classification WHERE Job_Code = '0110' OR Job_Code = '0400';

SELECT SUM(Biweekly_High_Rate - Biweekly_Low_Rate ) FROM salary_range_by_job_classification WHERE Job_Code = '0170';

SELECT DISTINCT Extended_Step FROM salary_range_by_job_classification WHERE Pay_Type IN ('M','H','D');

SELECT step FROM salary_range_by_job_classification WHERE Union_Code = '990' AND SetID = 'SFMTA' OR SetID = 'COMMN';

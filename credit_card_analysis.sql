use sql_project;
SELECT 
    *
FROM
    credit_card_approval;
    
# ANALYSIS OF THE DATASET
#1. NUMBER OF CUSTOMERS BY GENDER
SELECT 
    gender, COUNT(*) as number_of_customers
FROM
    credit_card_approval
GROUP BY gender;

#2. AVERAGE AGE OF CUSTOMER BY GENDER
SELECT 
    gender, AVG(age)
FROM
    credit_card_approval
GROUP BY gender;

# 3. NUMBER OF CUSTOMERS IN EACH INDUSTY
SELECT 
    industry, COUNT(*) AS customer_count
FROM
    credit_card_approval
GROUP BY industry;

#4. TOP 5 INDUSTRIES WITH HIGHEST NUMBER OF CUSTOMERS
SELECT 
    industry, COUNT(*) AS customer_count
FROM
    credit_card_approval
GROUP BY industry
ORDER BY customer_count DESC
LIMIT 5;

#5. AVERAGE DEBT FOR EACH GENDER
SELECT 
    gender, AVG(debt)
FROM
    credit_card_approval
GROUP BY gender; 

#6. CUSTOMER WITH HIGHEST DEBT
SELECT 
    *
FROM
    credit_card_approval
ORDER BY debt DESC
LIMIT 5;

#7. CUSTOMER BY YEARS OF EMPLOYMENT
SELECT 
    YearsEmployed, COUNT(*)
FROM
    credit_card_approval
GROUP BY YearsEmployed;

#8. AVERAGE DEBT OF CUSTOMER WITH PRIOR DEFAULT
SELECT 
    priordefault, AVG(debt)
FROM
    credit_card_approval
WHERE
    PriorDefault = 1
GROUP BY priordefault;

#9. MINIMUM, MAXIMUM AND AVERAGE AGE OF CUSTOMER
SELECT 
    MIN(age), MAX(age), AVG(age)
FROM
    credit_card_approval;

#10. TOP 10 HIGHEST EARNING CUSTOMER
SELECT 
    *
FROM
    credit_card_approval
ORDER BY income DESC
LIMIT 10;

#11. CUSTOMERS HAVING CREDIT SCORE ABOVE 15
SELECT 
    *
FROM
    credit_card_approval
WHERE
    creditscore > 15;
    
#12. NUMBER OF BANK CUSTOMERS WHOSE INCOME IS GREATER THAN 5000
SELECT 
    COUNT(*) AS bank_customer_count
FROM
    credit_card_approval
WHERE
    BankCustomer = 1 AND income > 5000;

#13. GENDER WISE CREDIT APPROVAL
SELECT 
    gender, SUM(approved = 1) AS credit_approved
FROM
    credit_card_approval
GROUP BY gender;

#14. NUMBER OF CUSTOMERS WHO HAS PRIOR DEFAULT AND ARE EMPLOYED
SELECT 
    COUNT(*) AS customer_count
FROM
    credit_card_approval
WHERE
    PriorDefault = 1 AND employed = 1;
    
#15. AVERAGE AGE OF BANK AND NON-BANK CUSTOMERS
SELECT 
    bankcustomer, AVG(age)
FROM
    credit_card_approval
GROUP BY BankCustomer;








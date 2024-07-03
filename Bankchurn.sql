/*Retrieving the data from the database*/
select* from db1.credit;

/*Distribution of attrited customers based on age range*/
select case when customer_age<20 then "0-20"
when customer_age between 20 and 30 then "20-30"
when customer_age between 30 and 40 then "30-40"
when customer_age between 40 and 50 then "40-50"
when customer_age between 50 and 60 then "50-60"
when customer_age between 60 and 70 then "60-70"
when customer_age>80 then "Above 80" end as age_range,Count(*)
from db1.credit where attrition_flag="Attrited customer"
group by age_range
order by age_range;
/* The number of customers who had left the bank is the highest for the customers who are between the age of 40-50*/

/* Number of males and females in Existing and attrited customers*/

select sum(if(gender="M",1,"null")) as Male_Existing_Customers,
 sum(if(gender="F",1,"null")) as Female_Existing_Customers
from db1.credit where attrition_flag="Existing customer";
/*Male existing customers are 1533 whereas female existing cutomers are 2061*/

select sum(if(gender="M",1,"null")) as Male_Attrited_Customers,
 sum(if(gender="F",1,"null")) as Female_Attrited_Customers
from db1.credit where attrition_flag="Attrited customer";
/*Male attrited customers are 350 whereas female Attrited customers are 510*/


/*Education_Level_wise distribution of existing and attrited customers*/

select education_level,count(*) from db1.credit where attrition_flag="Existing customer"
group by education_level
order by count(*);

select education_level,count(*) from db1.credit where attrition_flag="Attrited customer"
group by education_level
order by count(*);
/*Those customers who are doctorate and post-graduates have a very high attrition rate as compared to existing customers.

/*Marital status wise distribution of existing and attrited customers*/

select marital_status,count(*) from db1.credit
where attrition_flag="Existing customer" group by marital_status
order by count(*);

select marital_status,count(*) from db1.credit
where attrition_flag="Attrited customer" group by marital_status
order by count(*);
/* The number of customers who had left the bank is the highest for the customers who are married.*/

/* Distribution of attrited customers based on months on book*/
select case when customer_age<20 then "0-20"
when customer_age between 20 and 30 then "20-30"
when customer_age between 30 and 40 then "30-40"
when customer_age between 40 and 50 then "40-50"
when customer_age between 50 and 60 then "50-60"
when customer_age between 60 and 70 then "60-70"
when customer_age>80 then "Above 80" end as MonthOnBook_range,Count(*)
from db1.credit where attrition_flag="Attrited customer"
group by MonthOnBook_range
order by MonthOnBook_range;
/*The number of customer is highest for the MonthOnBOOK range of 30-40 years*/

select Income_Category,count(*) 
where attrition_flag="attrited customer"
group by Income_Category
order by count(*);

/*distribution of attrited customers based on credit_limit*/
select credit_limit,count(*)
from db1.credit where attrition_flag="Attrited customer"
group by credit_limit
order by count(*);

select Months_Inactive_12_mon,count(*)
from db1.credit
where attrition_flag="Attrited customer"
group by Months_Inactive_12_mon
order by count(*) ;

select Avg_Utilization_Ratio,count(*)
from db1.credit
where attrition_flag="Attrited customer"
group by Avg_Utilization_Ratio
order by count(*);
/*We can summarize that lesser the utilisation on the customer's card the higher the chance of attrition.*/







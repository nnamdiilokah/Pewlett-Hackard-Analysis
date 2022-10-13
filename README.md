# Pewlett-Hackard-Analysis
**Performing Analysis on Company Database**

  ## Overview of Project
  The purpose of this project is to carry out any analysis using SQL on a hypothetical company, Pewlett Hackard database to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program. 

  ## Results
  The summary dataframe below will be used to explain the results for the first set of analysis:  

  
   + Retirement Titles Table: A Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955 as shown below:

   ![retirement_titles](https://github.com/nnamdiilokah/Pewlett-Hackard-Analysis/blob/main/retirement_titles.png)



   + Unique Titles Table: Because some employees may have multiple titles in the database—for example, due to promotions, Unique Titles Table that contains the most recent title of each employee is created as shown below:

   ![unique_titles_table](https://github.com/nnamdiilokah/Pewlett-Hackard-Analysis/blob/main/unique_titles_tables.png)



   + Retiring Titles Table: A table that has the number of retirement-age employees by most recent job title is created as shown below:

   ![retiring_titles](https://github.com/nnamdiilokah/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png)



   + Mentorship Eligibiltiy Table: A mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965 is created as shown below:

   ![mentorship_eligibility](https://github.com/nnamdiilokah/Pewlett-Hackard-Analysis/blob/main/mentorship_eligibility.png)

   
   

   ## Summary
   Based on the above analysis, the following recommendations are questions can be answered to provide more insight:

   *How many roles will need to be filled as the "silver tsunami" begins to make an impact?*
   Total of 72,458 roles will need to be filled as the “silver tsunami” begins to make an impact. This can be deduced using the SUM function on the count column in the retiring_titles table as shown:
   `SELECT SUM(count) FROM retiring_titles`

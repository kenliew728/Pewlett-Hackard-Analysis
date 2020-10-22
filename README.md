# **Pewlett Hackard Analysis**
## **Overview**
The purpose of this analysis is to determine the total employees eligible for retirement and the number of employees who are eligible to participate in the Mentorship Program

## **Results**
#### ***Employees eligible to retire***
1. Based on initial analysis, the total number of employees eligible to retire stood at 133,776.
   - Intial observation of the query showed that there were duplicate titles being captured on the same employee as shown in the table below

*Table 1.1: Query results by filtering employee birthdate and title*
![ret_titles_results](https://user-images.githubusercontent.com/70525492/96897556-57561600-1454-11eb-8e05-bb52eb6e8578.png)


2. In order to remove duplicates, a new table was created using distinct function filter by employee numbers. The final count shows a total of 90,398 employees who are eligible to retire. 
   
*Table 1.2: Results after filter by distint employee numbers*
![unique_titles](https://user-images.githubusercontent.com/70525492/96898487-5f628580-1455-11eb-9a1b-046304ea97c2.png)

3. Additional query was added to determine total count of employees eligible to retire by title
*Table 1.3: Total count of employees by title and total count of all employees*

![retirement_titles](https://user-images.githubusercontent.com/70525492/96899176-368ec000-1456-11eb-8dcd-846eae910e39.png)
![count_unique_title](https://user-images.githubusercontent.com/70525492/96899370-72298a00-1456-11eb-8df9-8d43e250b1bb.png)

#### ***Employees eligble to participate in Mentorship Program***

4. To limit the impact of upcoming retirement, Pewlett Hackard management has suggested to setup a Mentorship Program that will allow next generation to be trained. 
   - A query was made to filter employees who are born between Jan 1st and Dec 31st 1965 and total of 1,549 employees were identified

*Table 1.4: Query on employees with titles eligible for Mentorship Program

![mentorship](https://user-images.githubusercontent.com/70525492/96900006-37742180-1457-11eb-93c5-83b3abc46ba1.png)

## **Summary**
1. Based on the results, there were total of 90,398 employees who are eligible to retire with the breakdown of employees by title as shown below. 

![retirement_titles](https://user-images.githubusercontent.com/70525492/96899176-368ec000-1456-11eb-8dcd-846eae910e39.png)
![count_unique_title](https://user-images.githubusercontent.com/70525492/96899370-72298a00-1456-11eb-8df9-8d43e250b1bb.png)

2. An additional query was run to breakdown total employees by title who are eligible to participate in the Mentorship Program
   - Based on the table of employees eligible to retire versus mentorship, the ratio of mentorship to retiree by title is between 1:50 to 1:75 employees.
   - However, there were no manager listed in the Mentorship Program. 

![count_mentorship](https://user-images.githubusercontent.com/70525492/96901143-7e164b80-1458-11eb-9832-56e9819100d7.png)
![mentorship_total](https://user-images.githubusercontent.com/70525492/96901450-e5cc9680-1458-11eb-9828-85a7eda77534.png)

To sum it up, the final results showed that there should be sufficient employees whom can participate in the Mentorship Program to train the next generation employees. However, Pewlett Hackard management may need to consider expanding the age range to see if any employees with a manager title can participate in the Mentorship Program since that is what they are lacking.

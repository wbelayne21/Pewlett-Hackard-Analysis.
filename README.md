# Pewlett-Hackard-Analysis.
## Overview of the analysis: 
Pewlett Hackard is a company with numerous baby-boomer employees who are approaching retirement age which will leave a significant amount of vacancy. The company wants to plan for this “silver tsunami” as well as identify employees eligible for retirement packages. The purpose of this analysis is to examine how many job positions will need to be filled and break that down into department/titles. We will also see if there are enough seasoned mentors to train the next generation of PH employees. 
### Results:
 Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
-	The senior staff and engineering department will be impacted the most by the influx of retirement as they will be losing almost 13,000, and 11,500 employees respectively.
-	Only 5 managers will be retiring soon- the least affected position. 
-	A breakdown of the mentorship-eligibility data reveals that 440 employees will be mentors for upcoming senior staff while there are 57 assistant engineers to train future engineers to fill the 1600 vacant engineering positions once the retirement storm hits. 
-	There aren’t any eligible managers for mentorship.

#### Summary: 
-	Query on the retiring_titles table for the total count of titles gives 90,398 positions that will need to be filled when the silver tsunami hits.
-	However, the retiring_titles contains employees that are no longer with the company. Looking at the count of emp_no for current_emp shows that 33,118 employees will be retiring soon.  
 
-	There are only 1549 eligible mentors in the company. Compared to the number of employees ready for retirement this number is not enough to train the next generation of PH employees to fill all 33,118 positions. That is roughly one mentor to 21 prospective employees, a ratio that does not guarantee quality mentorship for the upcoming batch of employees. 
-	The proportion of eligible mentors to vacant positions is less-concerning for “staff” and “senior engineer” as those rations are 1- to 7 and 12 respectively. 
-	A strategic planning is needed in replacing the senior staff, engineers and assistant engineers where the ratio of mentor to trainee is around 28. 

Attachments:
 eligible mentors by title 		                           
 ![mentors_by_title](https://user-images.githubusercontent.com/92958091/144796309-4600023a-47fc-48af-bdad-b39b24210f42.png)
                           
 Currently with PH and retiring soon. 
![current_retiree](https://user-images.githubusercontent.com/92958091/144796343-caf3d0a6-7356-4d54-8287-346461183e14.png)

# Career Track analysis using SQL+ Tableau
## Exploring Student Enrollments and Completions in Data-Related Career Tracks

### Project Overview
The 365 company introduced a new functionality in their 2021 platform release, allowing students to enroll in career tracks leading to three job titles: data scientist, data analyst, or business analyst. Completing a career track involves passing nine course exams (seven compulsory and two elective courses) and a comprehensive career track exam covering topics from all required courses. The goal of this project is to analyze student enrollments and achievements.

### Extracting Data With SQL
I retrieved the necessary information from the database utilizing complex SQL queries; joins, subqueries, case function, window_functions

## Exploratory Data Analysis
1. What is the number of enrolled students monthly? Which is the month with the most enrollments? Speculate about the reason for the increased numbers.
2. Which career track do students enroll most in?
3. What is the career track completion rate? Can you say if it’s increasing, decreasing, or staying constant with time?
4. How long does it typically take students to complete a career track? What type of subscription is most suitable for students who aim to complete a career track: monthly, quarterly, or annual?
### Tools
 MySQL
 Tableau
### Creating A Combo Chart In Tableau
 Fed into Tableau the data extracted above

### Created A Chart In Tableau
Created a chart representing the different completion buckets by number of track enrollments completed

## Results
Monthly enrollments fluctuate between 800 and 1,200, peaking in August due to a three-day free access campaign by 365. This increased enrollments and completion rates, but a considerable number dropped out after the complimentary period ended.
The data analyst track is the most enrolled in by students
From the combo chart we observe fluctuating numbers, but the low passing rate (around 2%) varies across tracks. It's challenging to assert any time-dependent patterns, making it uncertain whether completion rates increase, decrease, or remain constant.
It basically takes students an annual subscription to complete a track
## Recommendations
Recognizing the challenges students face in completing career tracks, the team should focus on strengthening support mechanisms. This could involve providing additional resources, mentorship programs, or targeted assistance for challenging topics.
To address the dropout rate post-free access campaigns, consider refining onboarding processes. Clearly communicate expectations, provide guidance on the commitment required, and offer incentives to sustain engagement beyond promotional periods.
Establish a feedback loop with students who drop out to understand their challenges and reasons for discontinuation. Use this information to iteratively improve course content, delivery methods, and overall user experience.

--Top 10 nhân viên lương cao nhất
SELECT TOP 10 
       [EmployeeId],[Age],[Attrition],[JobRole],[MonthlyIncome]
FROM [dbo].[employee_attrition]
ORDER BY [MonthlyIncome] DESC;
-- Top 3 công việc có nhân viên nghỉ nhiều nhất
SELECT TOP 3 
    [JobRole], 
    COUNT([Attrition]) AS [Attrition_Count]
FROM [dbo].[employee_attrition]
WHERE [Attrition] = 'Yes'
GROUP BY [JobRole]
ORDER BY [Attrition_Count] DESC;
-- Những nhân viên từ 55 tuổi trở lên đang đi làm
SELECT 
    [EmployeeId], 
    [Age], 
    [JobRole], 
    [MonthlyIncome], 
    [Attrition]
FROM [dbo].[employee_attrition]
WHERE [Age] > 57 AND [Attrition] = 'No';
-- Trung bình thu nhập cho từng vị trí công việc
SELECT 
    [JobRole], 
    AVG([MonthlyIncome]) AS [Average_Monthly_Income]
FROM [dbo].[employee_attrition]
GROUP BY [JobRole]
ORDER BY [Average_Monthly_Income] DESC;
--Đếm số lượng nhân viên theo từng mức độ hài lòng trong công việc
SELECT 
    [JobSatisfaction], 
    COUNT([EmployeeId]) AS [Employee_Count]
FROM [dbo].[employee_attrition]
GROUP BY [JobSatisfaction]
ORDER BY [JobSatisfaction] DESC;
--Để đếm số nhân viên dưới 30 tuổi đã nghỉ việc theo ngành học
SELECT 
    [EducationField], 
    COUNT([EmployeeId]) AS [Employee_Under_30_Count]
FROM [dbo].[employee_attrition]
WHERE [Age] < 30 
  AND [Attrition] = 'Yes'
GROUP BY [EducationField]
ORDER BY [Exited_Under_30_Count] DESC;

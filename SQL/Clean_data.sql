-- Bước 1: Cập nhật 1/0 thành Yes/No
UPDATE [dbo].[employee_attrition]
SET Attrition = CASE 
                   WHEN Attrition = 1 THEN 'Yes'
                   WHEN Attrition = 0 THEN 'No'
                END
-- Bước 2: Xóa các dòng có giá trị NULL
DELETE FROM [dbo].[employee_attrition]
WHERE Attrition IS NULL;

select *
from [dbo].[employee_attrition]

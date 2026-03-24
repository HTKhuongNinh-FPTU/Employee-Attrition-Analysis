TOPIC : Employee Attrition Analysis (EDA và Mô hình Hồi quy)

I.Tổng quan dự án:

Employee Attrition Analysis là một dự án phân tích dữ liệu nhằm khám phá các yếu tố ảnh hưởng đến việc nhân viên rời công ty và xây dựng mô hình hồi quy để dự báo rủi ro nghỉ việc. Dự án kết hợp Khám phá Dữ liệu (EDA), trực quan hóa và mô hình hóa hồi quy để đưa ra các khuyến nghị hành động cho bộ phận HR.

II.Mục tiêu:

Khám phá phân phối và mối quan hệ giữa các biến nhân khẩu học, điều kiện công việc và Attrition.

Xác định các yếu tố có ảnh hưởng mạnh (ví dụ: OverTime, MonthlyIncome, JobSatisfaction, YearsAtCompany).

Xây dựng mô hình hồi quy để dự báo nguy cơ nghỉ việc và cung cấp chỉ số cảnh báo sớm.

Đề xuất chiến lược giữ chân nhân tài dựa trên kết quả phân tích.

III.Dữ liệu:

Nguồn dữ liệu: https://www.kaggle.com/datasets/agungpambudi/workforce-perspectives-hr-employee-survey-analysis?select=employee-traits-by-department-and-role.csv

Các biến tiêu biểu: Attrition, MonthlyIncome, OverTime, JobSatisfaction, YearsAtCompany, JobRole, v.v.

IV.Công cụ & Thư viện

Ngôn ngữ: Python

Môi trường: Google Colab

Thư viện: Pandas, NumPy (Xử lý dữ liệu); Matplotlib, Seaborn (Trực quan hóa); Scikit-learn (Machine Learning).

V.Tóm tắt EDA

a) Phân tích đơn biến

Kiểm tra tỷ lệ Attrition, phân phối MonthlyIncome, phân bổ theo JobRole và OverTime.

b) Phân tích song biến

Attrition vs MonthlyIncome: so sánh trung bình và phân bố; nhóm nghỉ việc có thu nhập thấp hơn ~$2,043.

Attrition vs OverTime: tính tỷ lệ nghỉ việc theo trạng thái làm thêm giờ; OverTime là yếu tố mạnh.

Attrition vs JobSatisfaction: so sánh mức độ hài lòng giữa nhóm ở lại và nghỉ việc.

Attrition vs YearsAtCompany: kiểm tra thâm niên; nhân viên mới dễ rời hơn.

VI. Sử dụng mô hình hồi quy logistic (LogisticRegression):

Mục tiêu: Dự báo rủi ro nghỉ việc và xác định các yếu tố ảnh hưởng chính.

Phương pháp: Hồi quy Logistic trên dữ liệu nhân sự.

Giá trị: Giảm tỉ lệ biến động nhân sự và tối ưu chi phí tuyển dụng.


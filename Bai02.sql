CREATE DATABASE SS07_BAI02;
USE SS07_BAI02;

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(15, 2)
);
-- Derived Table là một bảng ảo được tạo ra từ kết quả của một câu lệnh SELECT lồng bên trong mệnh đề FROM của một câu truy vấn chính.
-- SQL bắt buộc đặt Alias để định danh nguồn dữ liệu, tránh xung đột tên cột và đảm bảo tính nhất quán của mô hình dữ liệu quan hệ.
INSERT INTO Payments VALUES 
(1, 101, 6000000), (2, 101, 5000000), 
(3, 102, 12000000),
(4, 103, 2000000);
-- Do thiếu alias nên là gây lỗi
SELECT SUM(total_spent)
FROM (
    SELECT student_id, SUM(amount) as total_spent
    FROM Payments
    GROUP BY student_id
    HAVING SUM(amount) > 10000000
) AS VIP_Students;
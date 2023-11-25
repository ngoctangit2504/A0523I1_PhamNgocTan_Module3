use demo_database;
-- 1. Hiện thị danh sách các lớp có học viên theo học và 
-- số lượng học viên của mỗi lớp 
SELECT 
    class.`name`, COUNT(student.class_id) as `số lượng học viên`
FROM
    class
         JOIN
    student ON class.id = student.class_id
GROUP BY class.`name`;

-- 2. Tính điểm lớn nhất của mỗi các lớp
select class.`name`, max(student.`point`)
from class join student ON class.id = student.class_id group by class.`name`;

-- 3. Tình điểm trung bình  của từng lớp 
select class.`name`, avg(student.`point`)
from class join student ON class.id = student.class_id group by class.`name`;

-- 4. Lấy ra toàn bộ tên và ngày sinh các instructor và student ở CodeGym. 
-- Sử dụng union 
select `name`,birthday from instructor union select `name`,birthday from student;

-- 5. Lấy ra top 3 học viên có điểm cao nhất của trung tâm.
SELECT `name`, point
FROM student
ORDER BY `point` DESC
LIMIT 3;

-- 6. Lấy ra các học viên có điểm số là cao nhất của trung tâm. 
SELECT `name`, point
FROM student
WHERE `point` = (SELECT MAX(`point`) FROM student);
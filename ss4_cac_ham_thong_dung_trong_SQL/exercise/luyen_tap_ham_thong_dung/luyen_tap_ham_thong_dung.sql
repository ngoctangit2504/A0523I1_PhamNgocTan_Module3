use quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT * FROM `subject` WHERE Credit = (SELECT MAX(Credit) FROM `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from mark;
select * from `subject` where (select Mark from mark where Mark = (select max(Mark) from mark));

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
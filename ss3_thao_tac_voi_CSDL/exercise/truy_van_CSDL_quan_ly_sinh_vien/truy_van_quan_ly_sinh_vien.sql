use quanlysinhvien;

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;


select * from student;
select * from class;
select * from mark;
select * from `subject`;

-- hiển thị tất cả sinh viên có tên bắt đầu bằng kí tự "h";
select * from student
where StudentName like 'h%';

-- hiển thị thông tin các lớp học có thời gian bắt đầu vào tháng 12;
select * from class
where month(StartDate) = 12 ;

-- hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3 - 5;
select * from `subject`
where Credit between 3 and 5;

-- Thay đổi mã lớp (ClassID) của sinh viên có ten 'Hung' là 2;
update student
set ClassID = 2
where StudentName = 'Hung';

-- Hiển thị thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi(mark) giảm dần. Nếu trùng sắp xếp theo tăng dần.
SELECT student.StudentName, `subject`.SubName, mark.Mark
FROM student
join mark ON student.StudentId = mark.StudentID
join `subject` ON mark.SubId = `subject`.SubId
order by mark desc;
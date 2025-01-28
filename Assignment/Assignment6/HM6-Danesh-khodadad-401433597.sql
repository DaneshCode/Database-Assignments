-- 1. افزودن یک رکورد به جدول کاربران با مقادیر دلخواه

INSERT INTO [User] (UserID, Password, FirstName, LastName)
VALUES (1, 'password123', 'Danesh', 'khodadad');

-- 2. حذف کاربر شماره 10 از جدول کاربران

DELETE FROM [USER]
WHERE UserID = 10;

-- 3. تغییر نام و نام خانوادگی کاربر شماره 10 به مقادیر دلخواه جدید

UPDATE [USER]
SET FirstName = 'NewFirstName', LastName = 'NewLastName'
WHERE UserID = 10;

-- 4. حذف کاربری که تاکنون هیچ پیامی ارسال نکرده است

DELETE FROM [USER]
WHERE UserID NOT IN (SELECT DISTINCT Sender FROM [Messages]);

-- 5. حذف منطقی پیامی با شماره 125

UPDATE [Messages]
SET [Del Tag] = 1
WHERE MID = 125;

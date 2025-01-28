CREATE VIEW inbox_Complete AS
SELECT 
    m.mid, 
    m.title, 
    m.body, 
    m.createDate, 
    m.parentMsgId, 
    m.fname, 
    m.creatorId, 
    u.uname AS senderName,
    u.lname AS senderLastName
FROM Message m
JOIN Users u ON m.creatorId = u.uid;

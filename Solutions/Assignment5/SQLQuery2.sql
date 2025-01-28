CREATE VIEW sentbox_Complete AS
SELECT 
    m.mid, 
    m.title, 
    m.body, 
    m.createDate, 
    m.parentMsgId, 
    m.fname, 
    m.creatorId, 
    u.uname AS receiverName,
    u.lname AS receiverLastName
FROM Message m
JOIN Users u ON m.creatorId = u.uid;

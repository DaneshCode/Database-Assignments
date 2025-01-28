ALTER TABLE Message ADD isDeleted BIT DEFAULT 0;

CREATE PROCEDURE GetDeletedMessagesByUserId 
    @userId INT
AS
BEGIN
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
    JOIN Users u ON m.creatorId = u.uid
    WHERE m.creatorId = @userId AND m.isDeleted = 1;
END;

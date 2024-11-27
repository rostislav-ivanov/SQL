USE UsersDb;

-- get Constraint Name of current primary key 
SELECT 
    TABLE_NAME, 
    CONSTRAINT_NAME 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE CONSTRAINT_TYPE = 'PRIMARY KEY' AND TABLE_NAME = 'Users';

GO

-- delete primary key
ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC077602BE27;

GO

-- new primary key combination of fields Id and Username
ALTER TABLE Users
ADD CONSTRAINT PK__USERS__IdUsername PRIMARY KEY (Id, Username);

GO
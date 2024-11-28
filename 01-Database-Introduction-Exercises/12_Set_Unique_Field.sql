USE UsersDb

ALTER TABLE Users
DROP CONSTRAINT PK__USERS__IdUsername;

ALTER TABLE Users
ADD CONSTRAINT PK__Id
PRIMARY KEY (Id);

ALTER TABLE Users
ADD CONSTRAINT Username__Unique
UNIQUE (Username);

ALTER TABLE Users
ADD CONSTRAINT Username__Lenght
CHECK (LEN(Username) >= 3);
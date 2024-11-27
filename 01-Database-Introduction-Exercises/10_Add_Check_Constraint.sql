USE UsersDb;

ALTER TABLE Users
ADD CONSTRAINT PasswordCheck CHECK(LEN([Password]) >= 5);

GO
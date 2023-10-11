CREATE PROCEDURE InsertEntry IN( @Website_Name VARCHAR(50), NOT NULL
    @Website_URL VARCHAR(2083),
    @First_Name VARCHAR(20),
    @Last_Name VARCHAR(20),
    @User_Name VARCHAR(20), NOT NULL
    @Email_Address VARCHAR(320),
    @Password_ VARCHAR(64), NOT NULL
    @COMMENT TEXT)
BEGIN
INSERT INTO 
    passwords (Website_Name, Website_URL, First_Name, Last_Name, User_Name, Email_Address, Password_, Comment)
VALUES  
    (@Website_Name, @Website_URL, @First_Name, @Last_Name, @User_Name, @Email_Address, @Password_, @Comment);
END;

CREATE PROCEDURE GetPassword IN(@URL)
BEGIN
SELECT Password_ FROM passwords
WHERE Website_URL = @URL
END;

CREATE PROCEDURE GetAllHTTPS
BEGIN
SELECT * FROM passwords
WHERE Website_URL LIKE '%https%'
END;


CREATE PROCEDURE ChangePassword IN (@OldPassword VARCHAR(64),
@NewPassword VARCHAR(64))
BEGIN
SET Password_ = @NewPassword
WHERE Password_ = @OldPassword
END;

CREATE PROCEDURE ChangeURL IN (@OldURL VARCHAR(2083), @NewURL
VARCHAR(2083))
BEGIN
SET Website_URL = @NewURL
WHERE Website_URL = @OldURL
END;



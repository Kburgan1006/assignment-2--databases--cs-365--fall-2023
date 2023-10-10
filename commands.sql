INSERT

CREATE PROCEDURE DeletePassword(@Password VARCHAR(64))
BEGIN
DELETE FROM Passwords WHERE  Password_ = @Password;
END;

CREATE PROCEDURE ChangePassword @OldPassword VARCHAR(64),
@NewPassword VARCHAR(64)
SET Password_ = @NewPassword
WHERE Password_ = @OldPassword
GO;

CREATE PROCEDURE ChangeURL @OldURL VARCHAR(2083), @NewURL
VARCHAR(2083)
Set Website_URL = @NewURL
Where Website_URL = @OldURL
GO;



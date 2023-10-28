-- Select all passwords associated with the given URL
SELECT CAST(AES_DECRYPT(Password_, @key_str, @init_vector) AS CHAR(512)) FROM passwords
WHERE Website_URL = "www.google.com";

-- Select all passwords with https in the URL
SELECT * FROM passwords WHERE Website_URL LIKE '%https%';

-- Update password associated with the old password
UPDATE passwords
SET Password_ = AES_ENCRYPT('hey', @key_str, @init_vector) WHERE CAST(AES_DECRYPT(Password_, @key_str, @init_vector) AS CHAR(512)) = 'yeet123!';

-- Update URL associated withe old URL
UPDATE passwords
SET Website_URL = 'bruh' WHERE Website_URL = 'www.google.com';

-- Delete row that contains entered URL
DELETE FROM passwords WHERE Website_URL = 'www.google.com';

-- Delete row that contains entered password
DELETE FROM passwords WHERE Passwords_ = 'yeet123';

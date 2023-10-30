-- Select all passwords associated with the given URL
SELECT CAST(AES_DECRYPT(Password_, @key_str, @init_vector) AS CHAR(512)) 
FROM passwords
WHERE Website_URL = "https://www.google.com/";

-- Select all passwords with https in the URL
SELECT * FROM passwords WHERE Website_URL LIKE '%https%';

-- Update password associated with the old password
UPDATE passwords
SET Password_ = AES_ENCRYPT('hey', @key_str, @init_vector) 
WHERE CAST(AES_DECRYPT(Password_, @key_str, @init_vector) AS CHAR(512)) = 'Ltr5j8ZjeMHbHonJ8FY1mBzh9GL8iVAt';

-- Update URL associated withe old URL
UPDATE passwords
SET Website_URL = 'hello' WHERE Website_URL = 'https://www.google.com/';

-- Delete row that contains entered URL
DELETE FROM passwords WHERE Website_URL = 'https://www.amazon.com/';

-- Delete row that contains entered password
DELETE FROM passwords WHERE CAST(AES_DECRYPT(Password_, @key_str, @init_vector) AS CHAR(512))  = 'hey';

CREATE  DATABASE mydb;
USE mydb;
CREATE TABLE accounts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    balance DECIMAL(10,2) NOT NULL
);
DELIMITER //
CREATE PROCEDURE TransferFunds(IN from_account INT, IN to_account INT, IN amount DECIMAL(10,2))
BEGIN
    START TRANSACTION;

    UPDATE accounts SET balance = balance - amount WHERE id = from_account;
    UPDATE accounts SET balance = balance + amount WHERE id = to_account;

    COMMIT;
END //
DELIMITER ;
insert into accounts (id,balance) values(1,98),(2,76),(3,55);
CALL TransferFunds(1, 2, 100);
select * from accounts;
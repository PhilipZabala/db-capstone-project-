CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN
    SELECT MAX(quantity) AS MaxQuantity
    FROM orders;
END
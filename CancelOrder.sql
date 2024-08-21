CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN OrderID INT)
BEGIN
    DELETE FROM orders
    WHERE OrderID = OrderID;
END
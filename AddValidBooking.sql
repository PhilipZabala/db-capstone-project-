CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(IN newDate DATE, IN newTableNum INT, IN newCustomerID INT)
BEGIN
    DECLARE bookingExists INT;
    
    -- Start a transaction
    START TRANSACTION;
    
    -- Check if the table is already booked on the given date
    SELECT COUNT(*) INTO bookingExists
    FROM Bookings
    WHERE BookingDate = newDate AND TableNumber = newTableNum;
    
    IF bookingExists > 0 THEN
        -- If the table is booked, rollback the transaction
        ROLLBACK;
        SELECT 'Booking failed. Table is already booked.' AS Status;
    ELSE
        -- If the table is available, insert the new booking and commit the transaction
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID) 
        VALUES (newDate, newTableNum, newCustomerID);
        
        COMMIT;
        SELECT 'Booking successfully added.' AS Status;
    END IF;
END
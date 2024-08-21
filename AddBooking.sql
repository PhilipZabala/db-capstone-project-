CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(
    IN BookingID INT,
    IN CustomerID INT,
    IN BookingDate DATE,
    IN TableNumber INT
)
BEGIN
    -- Insert a new booking record
    INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID)
    VALUES (BookingID, BookingDate, TableNumber, CustomerID);
    
    -- Optionally, you can output a success message
    SELECT 'Booking added successfully' AS Status;
END
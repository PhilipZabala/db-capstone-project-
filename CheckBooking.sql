CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(IN checkDate DATE, IN tableNum INT)
BEGIN
    DECLARE isBooked INT;
    SELECT COUNT(*) INTO isBooked
    FROM Bookings
    WHERE BookingDate = checkDate AND TableNumber = tableNum;
    
    IF isBooked > 0 THEN
        SELECT 'Table is already booked' AS Status;
    ELSE
        SELECT 'Table is available' AS Status;
    END IF;
END
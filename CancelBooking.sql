CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(
    IN BookingID INT
)
BEGIN
    -- Delete the booking record
    DELETE FROM bookings
    WHERE BookingID = BookingID;
    
    -- Optionally, you can output a success message
    SELECT 'Booking cancelled successfully' AS Status;
END
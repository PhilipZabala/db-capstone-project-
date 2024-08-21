CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(
    IN BookingID INT,
    IN NewBookingDate DATE
)
BEGIN
    -- Update the booking record with the new date
    UPDATE bookings
    SET BookingDate = NewBookingDate
    WHERE BookingID = BookingID;
    
    -- Optionally, you can output a success message
    SELECT 'Booking updated successfully' AS Status;
END
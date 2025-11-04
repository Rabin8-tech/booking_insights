use customer_booking;

select * from holiday_bookings_full limit 10;

-- Total Bookings per Season
SELECT booking_season, COUNT(*) AS total_bookings
FROM holiday_bookings_full
GROUP BY booking_season
ORDER BY total_bookings DESC;


-- Total Revenue per Season
SELECT 
    booking_season, 
    ROUND(SUM(total_price), 2) AS total_revenue
FROM holiday_bookings_full
GROUP BY booking_season
ORDER BY total_revenue DESC;


-- Average Length of Stay per Accommodation Type
SELECT 
    accommodation_type, 
    ROUND(AVG(length_of_stay), 2) AS avg_stay
FROM holiday_bookings_full
GROUP BY accommodation_type
ORDER BY avg_stay DESC;


-- Revenue per Guest
SELECT customer_type, Round(AVG(revenue_per_guest),2) AS avg_revenue_per_guest
FROM holiday_bookings_full
GROUP BY customer_type
ORDER BY avg_revenue_per_guest DESC;


-- Lead Time Analysis
SELECT lead_time_category, COUNT(*) AS bookings_count, round(AVG(total_price),2) AS avg_revenue
FROM holiday_bookings_full
GROUP BY lead_time_category
ORDER BY bookings_count DESC;


-- Occupancy Weight by Accommodation Type
SELECT accommodation_type, round(AVG(occupancy_weight),2) AS avg_occupancy_weight
FROM holiday_bookings_full
GROUP BY accommodation_type
ORDER BY avg_occupancy_weight DESC;


-- Bookings with Pets
SELECT COUNT(*) AS bookings_with_pets, round(AVG(total_price),2) AS avg_revenue
FROM holiday_bookings_full
WHERE pets > 0;

-- Monthly Revenue Trend
SELECT departure_year, departure_month, round(SUM(total_price),2) AS monthly_revenue
FROM holiday_bookings_full
GROUP BY departure_year, departure_month
ORDER BY departure_year, departure_month;



-- Most Popular Accommodations
SELECT accommodation, COUNT(*) AS bookings_count
FROM holiday_bookings_full
GROUP BY accommodation
ORDER BY bookings_count DESC
LIMIT 10;


-- Average Revenue per Night by Accommodation Type
SELECT accommodation_type, round(AVG(revenue_per_night),2) AS avg_revenue_per_night
FROM holiday_bookings_full
GROUP BY accommodation_type
ORDER BY avg_revenue_per_night DESC;










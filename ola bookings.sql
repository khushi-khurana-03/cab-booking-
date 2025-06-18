show databases;
use Ola;
show tables;
select * from bookings;
SELECT COUNT(*) FROM bookings;

show tables;
show tables;
select * from bookings;
#1. retriving all successful bookings
create view Successful_bookings as select * from bookings where Booking_Status="Success";
SELECT * from Successful_bookings;
#2. Find the Average distance for each vehicle type 
create view Average_distance_for_each_vehicle as
SELECT Vehicle_type, avg(ride_distance) as Avg_Distance from bookings group by Vehicle_type;
 select * from Average_distance_for_each_vehicle;
 # 3. get the total no. of cancelled rides by customers.
create view rides_canceled_by_customers as
SELECT COUNT(*) FROM Bookings where Booking_Status='Canceled by Customer';

select * from Rides_canceled_by_customers;

SHOW TABLES;
select * from Rides_canceled_by_customers;
#4. list the top 5 customers who booked highest no. of rides
create view top_5_customers as
select customer_id, count(booking_id) as total_rides from bookings group by customer_id order by total_rides desc limit 5;
select * from top_5_customers;

# 5. get the no. of rides cancelled by driver. due to personal oor. car related issue.

select * from bookings;
create view driver_cancelations as
select count(booking_id) from bookings where canceled_rides_by_driver = 'personal & car related issue';
select * from driver_cancelations ;

#6. find max and minimum driver ratings for prime sedan bookings.

select max(driver_ratings) as max_rating,
min(driver_ratings) as min_rating from bookings where vehicle_type=  'prime sedan';

#7. retrieve all ridess where payment was made were upi.
select * from bookings where payment_method= 'upi';

#8. find average customer rating per vehicle type.

select vehicle_type, avg(customer_rating) as avg_cust_rating from bookings group by vehicle_type;

#9 calculate the total booking values of rides completed successfully.

select sum(booking_value) as total_successful_values from bookings where booking_status = 'success';

#10 list all incomplete rides along with the reason.

select booking_id, incomplete_rides_reason from bookings where incomplete_rides= 'yes';







CREATE DATABASE IF NOT EXISTS uber_analysis;
USE uber_analysis;

CREATE TABLE uber_requests (
    Request_id INT,
    Pickup_point VARCHAR(50),
    Status VARCHAR(50),
    Driver_id INT,
    Trip_duration_minutes FLOAT,
    Demand_Supply_Gap INT,
    Day_of_week VARCHAR(50),
    Hour_of_day INT,
    Time_slot VARCHAR(50)
);

SELECT count(*) FROM uber_requests;

-- Demand-Supply Gaps by Time Slot
SELECT Time_slot, COUNT(*) AS total_requests,
       SUM(Demand_Supply_Gap) AS total_gap
FROM uber_requests
GROUP BY Time_slot
ORDER BY total_gap DESC;

-- Status Distribution
SELECT Status, COUNT(*) AS status_count
FROM uber_requests
GROUP BY Status;

-- Gap by Pickup Point
SELECT Pickup_point, SUM(Demand_Supply_Gap) AS total_gap
FROM uber_requests
GROUP BY Pickup_point
ORDER BY total_gap DESC;

-- Hourly Demand-Supply Gap
SELECT Hour_of_day, SUM(Demand_Supply_Gap) AS total_gap
FROM uber_requests
GROUP BY Hour_of_day
ORDER BY Hour_of_day;

-- Highest request per day
SELECT Day_of_week, COUNT(*) AS total_requests
FROM uber_requests
GROUP BY Day_of_week
ORDER BY total_requests DESC;

-- Request status counts per day
SELECT Day_of_week, Status, COUNT(*) AS status_count
FROM uber_requests
GROUP BY Day_of_week, Status
ORDER BY Day_of_week, Status;



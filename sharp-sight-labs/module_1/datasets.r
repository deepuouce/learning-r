###############
# IMPORT DATA  
###############

#-----------
# Car Specs
#-----------

df.car_specs <- read.csv(url("http://www.sharpsightlabs.com/wp-content/uploads/2015/01/auto-snout_car-specifications_COMBINED.txt")
                         ,colClasses = c(car_full_nm = "character"
                                         ,horsepower_bhp = "integer"
                                         ,rpm_horsepower_measure_point = "integer"
                                         ,torque_lb_ft = "integer"
                                         ,rpm_torque_measure_point = "integer"
                                         ,car_0_60_time_seconds = "numeric"
                                         ,engine_size_cc = "integer"
                                         ,engine_size_ci = "numeric"
                                         ,top_speed_mph = "integer"
                                         ,top_speed_kph = "integer"
                                         ,horsepower_per_ton_bhp = "numeric"
                                         ,year = "integer"
                                         ,decade = "factor"
                                         ,make_nm = "factor"
                                         ,car_weight_tons = "numeric"
                                         ,torque_per_ton = "numeric")
)



#-----------------------
# SAN FRANCISCO CRIME
#-----------------------

# Download the zipped SF crime data (2014)
#  and save it to the working directory

download.file("http://www.sharpsightlabs.com/wp-content/uploads/2015/01/sf_crime_YTD-2014-12_REDUCED.txt.zip", destfile="sf_crime_YTD-2014-12_REDUCED.txt.zip")


# Unzip the SF crime data file
unzip("sf_crime_YTD-2014-12_REDUCED.txt.zip")


# Read crime data into an R dataframe
df.sf_crime <- read.csv("sf_crime_YTD-2014-12_REDUCED.txt"
                        ,colClasses = c(crime_category = "factor"
                                        ,district = "factor"
                                        ,year = "factor"
                                        ,month = "factor"
                                        ,day = "factor"
                                        ,hour = "factor"
                                        ,DayOfWeek = "factor" 
                                        ,longitude = "numeric"
                                        ,latitude = "numeric"
                                        ,X = "numeric"
                                        ,Y = "numeric"
                        ))



#-----------
# China C02
#-----------
df.china_co2 <- read.csv(url("http://www.sharpsightlabs.com/wp-content/uploads/2015/01/china_co2_1961_to_2010_data.txt"))

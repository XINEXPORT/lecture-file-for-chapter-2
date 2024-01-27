# calling a function in R 
# generate a sequence of numbers using the seq()
seq(1, 10)
# generate the same sequence by explicitly defining the from and to parameters
seq(from = -5, to = 10)
# adding additional parameters to the seq function by giving starting value, an ending value, and the increment value (the optional by parameter)
seq(to = 20, from = 4, by = 2)
# working with strings (text)
# create 3 variables two strings, one integer
first_name <- "Bob"
last_name <- "Smith"
age <- 40
# using the paste function to display a row of string data
paste(first_name, last_name)
# using the optional seperator parameter to delimit strings
paste(last_name, first_name, sep = ', ')
# using literal values and variables togther
paste(first_name, "is", age, "years old.")
#create a variable
state <- "Maine CD-1"
# use the grep function to determine if a string contains some characters 1 = true
grep("CD-", state)
# a comparison that would return false
grep("cd-", state)
# using grep function to check for characters regardless of capitalization (case)
grep("cd-", state, ignore.case = TRUE)
# create a variable for substring functions
col_name <- "01-04 Years"
# use the substring function to extract 01 as the minimum years 
min_age <-substr(col_name, 1, 2)
# display min_age
min_age
# use the substring function to get the max_age from the string 
max_age <-substr(col_name, 4, 5)
# create a variable to update a string
col_name <- "05-08 Years"
# display the variable
col_name
# use the substitute function sub() to replace blank spaces with an underscore 
col_name <-sub(" ", "_", col_name)
# display the variable
col_name
# use the substitue function to replace underscores with dashes
col_name <-sub("-", "_", col_name)
# display the variable
col_name
# use the gsub function to replace all occurences of zero with nothing
col_name <-gsub("0", "", col_name)
#display the variable
col_name
# convert all letters to upper case using the toupper function
col_name <-toupper(col_name)
#display the variable
col_name
#change it back to lowercase using tolower
col_name <-tolower(col_name)
#display the variable
col_name
#create a variable called word
word <- "dallas"
#display the variable
word
# use the toupper and substr functions to find the first letter of the word variable and capitalize it
word <- toupper(substr(word, 1, 1))
# display the variable
word
# using the round function for double data types             
percent = 10.193456
# round without parameters
round(percent)
# round to one decimal place
round(percent, 1)
# round to two decimal places
round(percent, 2)
# use the floor function to get the next lower number as an integer
floor(percent)
# use the ceiling function to get the next highest number as an integer
ceiling(percent)
# use the truncate function to get "chop off" the decimals in a number
trunc(percent)
# use the absolute function to get the absolute value of a number
abs(-7.77)
# use the sqrt function
sqrt(16)
# the log10 function to get the logarithm (base 10 of a number)
log10(100)
# use the log function to get the natrual logarithm of a number 
round(log(2.718*2.718))
# create a vector, a vector is used to store a series with the same data types and you use a c to create the vector
# create a vector that stores the numbers of the days of the week
daynums_of_week <- c(1,2,3,4,5,6,7)
# display the vecotr
daynums_of_week
# create a vector that stores the names of the days of the week
daynames_of_week <- c("Sun", "Mon", "Tue", "Wed", "Thurs", "Fri", "Sat")
# display the vector
daynames_of_week
# create a vector that stores a range of numbers
ids <- seq(1,10)
# display the vector
ids
# another method to create a vector that stores a range of nubmers
ids_2 <-  1:10
# display the vector
ids_2
# all of the numbers of weekdays except for 1 and 3
daynums_of_week[c(-1, -3)]
# monday, wed, fri of a week
daynames_of_week[c(2, 4, 6)]
#create a vector that stores temeratures
temperatures <- c(99.8, 97.2, 77.4, 101.3)
# display the vector
temperatures
# display the number of values or length of a vector
length(temperatures)
# display the data type of a vector
typeof(temperatures)
# display a vector value by its index
daynames_of_week[1]
# display vector values but exclude one of them using an index
daynames_of_week[-1]
# diplay vector values but exclued more than one value using an index
daynames_of_week[-1][-6]
# create a named vector 
temps_w_names <- c("M"= 99.8, "T" = 97.2, "W"= 77.4, "R"= 101.3)
# display the vector
temps_w_names
# get the names of the values in a named vector
names(temps_w_names)
# change one of the names in a named vector, in this case change R to Th
names(temps_w_names) <- c("M", "Tu", "W", "Th")
# display the vector again
temps_w_names
# reference a vector value by index
temps_w_names[3]
# reference a vector value by its name
temps_w_names["W"]
# build a data frame 
# create a vector of month names
months <- c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
# create a vector to store the length of each month
num_days <- c(31, 28, 31, 30, 31, 30,31, 31, 30, 31, 30, 31)
# create a vector to store the season for each month
seasons <- c("winter", "winter", "spring", "spring", "spring", "summer", "summer", "summer", "fall", "fall", "fall", "winter")
#define a dataframe composed of the three vectors
calendar_df <- data.frame(Month = months, NumDays = num_days, Season = seasons)
# display the data frame calendar_df
calendar_df
# display the contents of the column "Month", which is the vecotor named "months" within the data frame, won't work if the column name contains spaces
calendar_df$Month
#display the contents of "Month", which is the vecotor named "months" within the data frame, will work on any column name
calendar_df[["Month"]]
#display the contens of the 1st column in the dataframe, regardless of the name of the column
calendar_df[[1]]
# display the contents of the 1st column along with the column's name
calendar_df[1]
# display the contents and the name of the data frame column called "Month" irrespective of the columns position or index
calendar_df["Month"]
# display all columns for the first row of a dataframe
calendar_df[1,]
# display the 2nd, 3rd, and 4th rows of the data frame, but not all columns, only the first and second columns
calendar_df[2:4, 1:2]
# display the only the first (month) and 3rd (season) of the data in row 4 of the data frame but omit the second column (the number of days in April)
calendar_df[4,-2]
# display all rows of the dataframe but only display the 1st and 3rd columns, omitting the second column
calendar_df[,-2]
# change the value of data using an index. In this case change row 2 (feb) column 2 (28) from 28 to 29
calendar_df[2,2] <- 29
#display the data frame
calendar_df
# change the value of season in rows 9 through 11 from "Fall" to "Autumn"
calendar_df[9:11, "Season"] <- "Autumn"
#display the data frame
calendar_df
# create a list of lists, which will work like a data frame, in that it will store names of months, days in each month, and the season of the month
calendar_list <- list(
    "Misc Calendar Data", 
    headers= c("month", "numDays", "season"),
    rows= list(
        list("Jan", 31, "Winter"),
        list("Feb", 28, "Winter"),
        list("Mar", 31, "Spring"),
        list("Apr", 30, "Spring"),
        list("May", 31, "Spring"),
        list("Jun", 30, "Summer"),
        list("Jul", 31, "Summer"),
        list("Aug", 31, "Summer"),
        list("Sep", 30, "Fall"),
        list("Oct", 31, "Fall"),
        list("Nov", 30, "Fall"),
        list("Dec", 31, "Winter")
    ))
# display the structure of the list
str(calendar_list)
# display the second row of the list - which is the headers
calendar_list[2]
# display the second row of the list - but only display the values not the name of the vector that contains the headers
calendar_list[[2]]
# display what's in the vector named headers by referencing it's name
calendar_list[["headers"]]
# display the seventh row of the list named "rows"
calendar_list[["rows"]][7]
# display the first row (the vector object named "headers")
calendar_list[["rows"]][1]
# display only the second column of the first row of the list named "rows"
calendar_list[["rows"]][[1]][[2]]
# display the sixth row of the list named "rows"
calendar_list[["rows"]][[6]]
# create  a vector
example_numbers <- c(1,2,3,4)
# display the vector
example_numbers
# add a value to a vector add the number 5 to the values
example_numbers <- append(example_numbers, 5)
# display the values with 5 added
example_numbers
# add more numbers to the vector
example_numbers <- append(example_numbers, c(6, 8, 9))
# display again
example_numbers
#insert a value in the middle of a vector
example_numbers <- append(example_numbers, 7, after = 6)
# display again
example_numbers
# create a list
example_letters <- list("a", "b", "C")
# display the list
example_letters
# add values to the list at the end
example_letters <- append(example_letters, "d")
# display the list
example_letters
# append some more values to the letters list using a vector
example_letters <- append(example_letters, c("e", "h"))
# display the list
example_letters
#insert f and g into the middle of the list
example_letters <- append(example_letters, list("f", "g"), after = 5)
# display the list
example_letters
#add a row to the calendar_df data frame
calendar_df <- rbind(calendar_df,
                     list("NewJan", 31, "extraJan"),
                     list("NewFeb", 29, "extraFeb")
                     )
#display the data frame rows you just added along with the last row that was added before
calendar_df[12:15,1:3]
#add a column to a data frame first create the vector
avg_temp <- c(52.3, 56.1, 62, 68.9, 75.9, 80.7, 81.9, 82.7, 78.5, 70.7, 61.1, 54.3, 0, 0)
#use the cbind to add the average temperature column to the data frame
calendar_df <- cbind(calendar_df, "Average Temp" = avg_temp)
#display the contents of calendar_df
calendar_df
#what happens when you don't have the same number of values as the existing data
avg_temp  <- c(1, 2, 3, 4)
calendar_df <- cbind(calendar_df, "Average Temp" = avg_temp)
#display the data frame
calendar_df
# what happens when you pass blanks to the column
avg_temp  <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
calendar_df <- cbind(calendar_df, "Average Temp" = avg_temp)
#display the data frame
calendar_df
#remove the extra columns from calendar_df
calendar_df = subset(calendar_df, select = c("Month", "NumDays", "Season"))
#d isplay the data frame
calendar_df
# add back in the average temperature column 
avg_temp <- c(52.3, 56.1, 62, 68.9, 75.9, 80.7, 81.9, 82.7, 78.5, 70.7, 61.1, 54.3, 0, 0)
# use the cbind to add the average temperature column to the data frame
calendar_df <- cbind(calendar_df, "Average Temp" = avg_temp)
#display the data frame
calendar_df
#display the structure of the data frame
str(calendar_df)
#check the number of months that have 30 days
num_days == 30
#check the number of months that have days not = to 31
num_days != 31
#check for a literal value
avg_temp > 0
#check for months in winter or months that have 31 days this includes all in winter and also indexes 3 (March), 5 (May), 7 (July), 8 (August), 10 (Oct)
seasons == "winter" | num_days == 31
#check for months in winter and months that have 31 days this omits vector index 2 which is February
seasons == "winter" & num_days == 31
# if clause executes evaluates and executes if the condition is true in this case we look through the vector num_days and if any value = 28 we call it feb
if (num_days[2] <= 28){
  short_month <- "Feb"
}
# display short_month
short_month
# add an else clause above that isn't true, no value in the num_days vector is shorter than 28 days this means that the else clause will execute
if (num_days[2] <= 27){
  short_month <- "Feb"
   } else { 
    short_month <- "Not valid" 
   }
# display short_month
short_month
# another way to code the above conditions
if (num_days[2]== 28)short_month <- "february" else short_month <- "error number of days is wrong"
# display short_month
short_month
# code that would evaluate to the else condition
if (num_days[2]== 27)short_month <- "february" else short_month <- "error number of days is wrong"
# display short_month
short_month
# an if statement that finds two conditions are true
if (num_days[2]== 28 & num_days [4] == 30) check_month <- "both months ok" else check_month <- "error Feb or Apr days are wrong"
# display check_month
check_month
# an if statement that finds one condition is false
if (num_days[2]== 999 & num_days [4] == 30) check_month <- "both months ok" else check_month <- "error Feb or Apr days are wrong"
# display check_month
check_month
# for loops look through an entire range, or looks for the values within a vector or list
# a for loop that prints a range of values. Nums is a vector by default
for (nums in 1:5) {print(nums)}
# a for loop that checks the values in the vector num_days and totals the days in the year
# first display the vector
num_days
# create a loop that looks through all the values in num_days and adds them to a variable called running_total
# set running_total to zero
running_total <- 0
# loop through the vector num_days and add the element_value to the variable running_total
for(vector_values in num_days)
{running_total <- running_total + vector_values}
# display running_total
running_total
# use a for loop to change the values in the vector months to upper case 
for (i in 1:length(months)) {
  months[i] <- toupper(months[i])
}
# display the vector
months
# change it back
for (i in 1:length(months)) {
  months[i] <- tolower(months[i])
}
# use a for loop to change only some values in a vector. Change only the months that start with J to upper case. 
for (i in 1:length(months)) {
  if (substr(months[i], 1, 1) == "j") {
  months[i] <- toupper(months[i])
  }
}
# display the vector
months
# create your own functions
print_greeting <- function() {
  print("Greetings Earthling!")
}
# run the function
print_greeting()
# a function that takes in two numbers and adds them together
add_em_up <- function(first_number, second_number){
  calculation = first_number + second_number
  print(calculation)
}
# run the function
add_em_up(12, 14)

# a function that looks through the months vector and prints the month if the month starts with "m"
check_index <- function() {
  for (i in 1:length(months)) {
    if (substr(months[i], 1, 1) == "m") {
      print(months[i])
        }
        }
  
}
# run the function
check_index()

# the same function as check_index but this time takes a letter as a parameter and prints if a month has that letter
check_index2 <- function(letter) {

  for (i in 1:length(months)) {
    if (substr(months[i], 1, 1) == letter)
      {print(months[i])
    } 
     }
}
# test the function
check_index2("m")
# test the function again
check_index2("x")
#
    
  


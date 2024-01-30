#Christine Hoang

#Create a vector named Ones that contains the numbers from 1 to 5.
Ones<-seq(1,5)

#Create a vector named Twos that contains the numbers from 2 to 10 counting by 2
Twos<-seq(2,10, by = 2)

#Create three more vectors, named Threes, Fours, and Fives
Threes<-seq(3,15, by = 3)
Fours<-seq(4,20, by=4)
Fives<-seq(5,25, by=5)

Ones
Twos
Threes
Fours
Fives
Sixes

#Create a data frame named times_table that combines your 5 vectors.
times_table_df<-data.frame(
  ch_One = Ones, 
  ch_Two = Twos, 
  ch_Three=Threes, 
  ch_Four=Fours, 
  ch_Five=Fives
  )

times_table_df

#Create another vector named Sixes. 
#This vector should contain 5 values beginning at 6 and counting by 6.
Sixes<-seq(6, 32, by=6)


#Use the rbind() function to add Sixes to your times_table data frame. 
#Make sure you have a name for the new column that follows the naming convention in step 6.
times_table_df <- rbind(times_table_df, 
                        data.frame(6 = Sixes))


#Use the cbind() function to add Sixes to your times_table data frame. 
#Make sure you have a name for the new column that follows the naming convention in step 6.
times_table_df <- cbind(times_table_df, data.frame(ch_Six = Sixes))


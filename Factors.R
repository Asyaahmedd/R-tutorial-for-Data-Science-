# Factors
# Factors are used to categorize data. Examples of factors are:

#Demography: Male/Female
#Music: Rock, Pop, Classic, Jazz
#Training: Strength, Stamina

# To create a factor, use the factor() function and add a vector as argument:
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
#  the factor has four levels (categories): Classic, Jazz, Pop and Rock.
# Print the factor
music_genre
# To only print the levels, use the levels() function:
levels(music_genre)
# we can also set the levels,
#by adding the levels argument inside the factor() function:

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))

levels(music_genre)
# Factor Length
length(music_genre)
# Access Factors
# To access item in a factor, use the index numberinside [] brackets
music_genre[3]
#Change Item Value
music_genre[3] <- "Pop"

music_genre[3]
# cannot change the value of a specific item 
#if it is not already specified in the factor
#The following code  will produce an error:
  
music_genre[3] <- "Opera"

music_genre[3]
# However, if we have already specified it inside the levels argument,
#it will work:
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Opera"))

music_genre[3] <- "Opera"

music_genre[3]
# Another example
job<-c(rep(1, 5),rep(2, 6))
job<-factor(job, levels = c(1:2), labels = c("Lecturer", "Student"))
levels(job)
nlevels(job)
table(job) # create a frequency table from factor
barplot(table(job)) # create a bar plot  from factor
# change the levels name
levels(job)<-c("Medical Lecturer", "Medical Student")
levels(job)
job
# Anothe example
Gender<- c(rep("Male",10),rep("Female",20))
Gender<-factor(Gender)
Gender
levels(Gender)
nlevels(Gender)
table(Gender)
barplot(table(Gender)) # create a bar plot  from factor

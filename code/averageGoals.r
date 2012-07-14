gl09f <- read.csv("data/gl2009-12.csv", quote="") #full dataset

# "Date" 	Date of match played
# "Time" 	Time of match played
# "H"		Home team goals
# "A"		Away team goals
# "Team_Home"	Home team name
# "Team_Away"	Away team name
# "Note"	Match note

# remove 184 obs. (DNF)
gl09 <- gl09f[-184,c(3:6)]

# rename the column names
colnames(gl09) <- c("gh","ga","teamh","teama")

# make xlabels vertical
par(las = 3, mar=c(10,2,2,2))

# avg goals scored home
plot(aggregate(gl09$gh, list(gl09$teamh),mean), type="p", xlab="", main="avg goals scored home: GL 2009-2012") 

# avg goals conceded away
plot(aggregate(gl09$gh, list(gl09$teama),mean), type="p", xlab="", main="avg goals conceaded away: GL 2009-2012") 

# avg goals scored away
plot(aggregate(gl09$ga, list(gl09$teama),mean), type="p", xlab="", main="avg goals scored away: GL 2009-2012") 

# avg goals conceded home
plot(aggregate(gl09$ga, list(gl09$teamh),mean), type="p", xlab="", main="avg goals conceaded home: GL 2009-2012") 

# average goals scored by Sparta Prague and Viktoria Plzen at home
mean(gl09[gl09$teamh == "Sparta Praha",1])
mean(gl09[gl09$teamh == "Viktoria Plzeň",1])

# games when Viktoria Plzen did not score at home
gl09f[gl09f$Team_H == "Viktoria Plzeň" & gl09f$H == 0,]

# average goals scored by FK Jablonec, Viktoria Plzen and Sparta Prague away
mean(gl09[gl09$teama == "FK Jablonec",2])
mean(gl09[gl09$teama == "Viktoria Plzeň",2])
mean(gl09[gl09$teama == "Sparta Praha",2])

# games when Sparta Praha conceded at home
gl09f[gl09f$Team_H == "Sparta Praha" & gl09f$A != 0,]

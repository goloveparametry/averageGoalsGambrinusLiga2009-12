gl <- read.csv("data/gl2009-12.csv", quote="")

# "Date" 	Date of match played
# "Time" 	Time of match played
# "H"		Home team goals
# "A"		Away team goals
# "Team_Home"	Home team name
# "Team_Away"	Away team name
# "Note"	Match note

# remove 184 obs. (DNF)
gl <- gl[-184,c(3:6)]

# rename the column names
colnames(gl) <- c("gh","ga","teamh","teama")

# make xlabels vertical
par(las = 3, mar=c(10,2,2,2))

# avg goals scored home
plot(aggregate(gl$gh, list(cze09$teamh),mean), type="p", xlab="", main="avg goals scored home: GL 2009-2012") 

# avg goals conceded away
plot(aggregate(gl$gh, list(cze09$teama),mean), type="p", xlab="", main="avg goals conceaded away: GL 2009-2012") 

# avg goals scored away
plot(aggregate(gl$ga, list(cze09$teama),mean), type="p", xlab="", main="avg goals scored away: GL 2009-2012") 

# avg goals conceded home
plot(aggregate(gl$ga, list(cze09$teamh),mean), type="p", xlab="", main="avg goals conceaded home: GL 2009-2012") 



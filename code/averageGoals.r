gl <- read.csv("data/gl2009-12.csv", quote="")

# "Date" 	Date of match played
# "Time" 	Time of match played
# "H"		Home team goals
# "A"		Away team goals
# "Team_Home"	Home team name
# "Team_Away"	Away team name
# "Note"	Match note

# make xlabels vertical
par(las = 3, mar=c(10,2,2,2))

# remove 184 obs. (DNF)
cze09 <- gl[-184,c(3:6)]
colnames(cze09) <- c("g1","g2","team1","team2")

# avg goals scored home
plot(aggregate(cze09$g1, list(cze09$team1),mean), type="p", xlab="", main="avg goals scored home: GL 2009-2012") 

# avg goals conceded away
plot(aggregate(cze09$g1, list(cze09$team2),mean), type="p", xlab="", main="avg goals conceaded away: GL 2009-2012") 

# avg goals scored away
plot(aggregate(cze09$g2, list(cze09$team2),mean), type="p", xlab="", main="avg goals scored away: GL 2009-2012") 

# avg goals conceded home
plot(aggregate(cze09$g2, list(cze09$team1),mean), type="p", xlab="", main="avg goals conceaded home: GL 2009-2012") 

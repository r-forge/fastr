xtabs(~Result+Airline,airlineArrival) -> airTab
airTab
# row percentages are less interesting (why?) 
col.perc(airTab) 
chisq.test(airTab) 
chisq.test(airTab,correct=F) 

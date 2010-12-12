end <- endurance
end[1:3,]
end$diff <- end$Vitamin - end$Placebo    # how much better is vitamin C?
t.test(end$diff)

step.model2 <-lm(HR - restHR ~ height + freq, step)
confint(glht(step.model2,mcp(height='Tukey',freq='Tukey')))

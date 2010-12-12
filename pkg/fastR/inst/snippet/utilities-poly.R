ut2$monthShifted <- ( ut2$month -2 ) %% 12
px <- poly( ut2$monthShifted, 2 )
dot(px[,1], px[,2])
lm(px[,2]~monthShifted + I(monthShifted^2) ,ut2)
lm(px[,2]~monthShifted + I(monthShifted^2) ,ut2)
